local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local function cmd_generate(opts)
    return generate.generate_and_print(table.unpack(opts))
end

local CMDS <const> = {
    generate = {
        f = cmd_generate,
    },
}

--- Prints a usage message and returns an exit status.
--- The return value is meant to facilitate cases such as `os.exit(usage(...))`.
local function usage(f, arg)
    f:write(string.format([[
Usage: %s ARG...
]], arg[0]))
    if f == io.stderr then
        return 1
    end
end

--- Parse a single short command line argument.
--- The argument may consist of several short options in sequence, possibly
--- followed by an argument for the last one (e.g. `-vf file`).  Returns the
--- index of the next argument to process.
local function parse_short(opts, cmd, arg, i)
    local name <const> = arg[i]:sub(2)
    io.stderr:write("unknown option: -", name, "\n")
end

--- Parse a single `--long` command line argument.
--- The argument may be followed by another if the option requires a value (e.g.
--- `--config file`).  Returns the index of the next argument to process.
local function parse_long(opts, long_opts, arg, i)
    local name <const> = arg[i]:sub(3)
    io.stderr:write("unknown option: --", name, "\n")
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
