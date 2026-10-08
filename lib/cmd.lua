local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local function cmd_generate(opts)
    local function f(f)
        local src <const> = table.unpack(opts)
        local ok <const>, err <const> =
            xpcall(generate.generate, debug.traceback, f, opts, src)
        if not ok then
            io.stderr:write(src, ": ", err, "\n")
            return 1
        end
    end
    if opts.output then
        local w <close> = io.open(opts.output, "w")
        f(w)
    else
        f(io.stdout)
    end
end

local ARG_TYPE_LIST <const> = 1

local CMDS <const> = {
    generate = {
        short_opts = {
            h = { long = "help" },
            c = { long = "config" },
            o = { long = "output" },
        },
        long_opts = {
            help = {},
            config = { argument = true },
            output = { argument = true },
        },
        f = cmd_generate,
    },
}

--- Prints a usage message and returns an exit status.
--- The return value is meant to facilitate cases such as `os.exit(usage(...))`.
local function usage(f, arg)
    f:write(string.format([[
Usage: %s [OPTION...] FILE

Options:
    -h, --help              This help.
    -c FILE, --config FILE  Load the configuration from FILE (deafult:
                            bbguimaraes.com/config.lua in the configuration
                            directory, which is $XDG_CONFIG_DIR if set or
                            $HOME/.config otherwise).
    -o FILE, --output FILE  Write the output to FILE instead of the standard
                            output file.  Checks which depend on the location of
                            the output file may fail if this option is not
                            present.
]], arg[0]))
    if f == io.stderr then
        return 1
    end
end

local function process_arg(opts, name, arg_type, x)
    if arg_type == ARG_TYPE_LIST then
        local ov = opts[name]
        if not ov then
            ov = {}
            opts[name] = ov
        end
        table.insert(ov, x)
    else
        opts[name] = x
    end
end

--- Parse a single short command line argument.
--- The argument may consist of several short options in sequence, possibly
--- followed by an argument for the last one (e.g. `-vf file`).  Returns the
--- index of the next argument to process.
local function parse_short(opts, cmd, arg, i)
    local sa <const> = arg[i]
    for ai = 2, #sa do
        local name <const> = sa:sub(ai, ai)
        local a <const> = cmd.short_opts[name]
        if not a then
            io.stderr:write("unknown option: -", name, "\n")
        end
        local long_name <const> = a.long
        local long <const> = cmd.long_opts[long_name]
        assert(long)
        local arg_type <const> = long.argument
        if not arg_type then
            opts[long_name] = true
            goto continue
        end
        if ai ~= #sa then
            io.stderr:write("option -", name, " requires an argument\n")
            return
        end
        i = i + 1
        local v <const> = arg[i]
        if not v then
            io.stderr:write("option -", name, " requires an argument\n")
            return
        end
        process_arg(opts, long_name, arg_type, v)
        break
        ::continue::
    end
    return i + 1
end

--- Parse a single `--long` command line argument.
--- The argument may be followed by another if the option requires a value (e.g.
--- `--config file`).  Returns the index of the next argument to process.
local function parse_long(opts, long_opts, arg, i)
    local name <const> = arg[i]:sub(3)
    local a <const> = long_opts[name]
    if not a then
        io.stderr:write("unknown option: --", name, "\n")
        return
    end
    i = i + 1
    local arg_type <const> = a.argument
    if not arg_type then
        opts[name] = true
        return i
    end
    local v <const> = arg[i]
    if not v then
        io.stderr:write("option --", name, " requires an argument\n")
        return
    end
    process_arg(opts, name, arg_type, v)
    return i + 1
end

--- Parse command line options for a given command.
local function parse_cmd_args(cmd, arg)
    local long <const> = cmd.long_opts
    local i, n <const>, ret <const> = 1, #arg, {f = cmd.f}
    while i <= n do
        local a <const> = arg[i]
        if a:sub(1, 1) ~= "-" then
            table.insert(ret, a)
            i = i + 1
        elseif a:sub(2, 2) == "-" then
            i = parse_long(ret, long, arg, i)
        else
            i = parse_short(ret, cmd, arg, i)
        end
        if not i then
            return
        end
    end
    return cmd.f, ret
end

--- Parse short and long command line options.
local function parse_args(arg)
    if not arg[0] then
        return usage(io.stderr, arg)
    end
    local name = path.base(arg[0]):gsub("%.lua$", "")
    local cmd = CMDS[name]
    if not cmd then
        io.stderr:write("unknown command: ", name, "\n")
        return usage(io.stderr, arg)
    end
    return parse_cmd_args(cmd, arg)
end

--- Parse command line arguments and execute the command.
local function execute(arg)
    local f <const>, opts <const> = parse_args(arg)
    if not f then
        return usage(io.stderr, arg)
    end
    if opts.help then
        return usage(io.stdout, arg)
    end
    return f(opts)
end

return {
    execute = execute,
}
