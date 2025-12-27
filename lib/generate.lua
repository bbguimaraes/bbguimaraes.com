local html <const> = require "lib.html"
local path <const> = require "lib.path"
local str <const> = require "lib.str"
local util <const> = require "lib.util"

local NOT_FOUND <const> = 2
local CONF

local buffer <const> = {}
buffer.__name = "buffer"
buffer.__index = buffer

function buffer:new()
    return setmetatable({t = {}}, self)
end

function buffer:write(x)
    table.insert(self.t, x)
end

--- Determines the location of the configuration file based on the environment.
local function conf_file_name()
    local d <const> = os.getenv("XDG_CONFIG_DIR") or os.getenv("HOME")
    if d then
        return path.join(d, ".config", "bbguimaraes.com", "conf.lua")
    end
end

--- Reads configuration file, if it exists.
local function read_conf()
    local file_name <const> = conf_file_name()
    if not file_name then
        return
    end
    local f <close>, err <const>, status <const> = io.open(file_name, "r")
    if f then
        return assert(f:read("a"))
    end
    if status == NOT_FOUND then
        return
    end
    error(string.format(
        "failed to load configuration file %s: %s",
        file_name, err))
end

--- Loads configuration file, if necessary.
local function load_conf(env)
    if CONF then
        return CONF
    end
    local c <const> = read_conf()
    if c then
        CONF = assert(load(c, nil, nil, env))()
    else
        CONF = {}
    end
    return CONF
end

--- Creates a new, empty environment with the base library functions.
local function new_env()
    local ret <const> = setmetatable({}, {__index = _ENV})
    util.copy(ret, html)
    util.copy(ret, str)
    util.copy(ret, assert(loadfile("lib/include.lua", nil, ret))())
    return ret
end

--- Shortcut for rendering the contents of a renderer tree.
local function render(x)
    local out <const> = buffer:new()
    x:render(out, 0)
    return table.concat(out.t)
end

--- Creates a new environment containing variables in \p conf and loads a file.
local function load_file(file_name, ...)
    local env <const> = new_env()
    local global_vars <close> = env.push(nil, load_conf(env))
    local path_var <close> = env.push(nil, {PATH = file_name})
    local conf_vars <close> = env.push(nil, ...)
    return assert(loadfile(file_name, nil, env))()
end

--- Fully renders the contents of a file.
local function generate(out, file_name, ...)
    return load_file(file_name, ...):render(out, 0)
end

--- Fully renders the contents of a file or generates an error report.
local function generate_and_print(file_name)
    local ok <const>, err <const> =
        xpcall(generate, debug.traceback, io.stdout, file_name)
    if not ok then
        io.stderr:write(file_name, ": ", err, "\n")
        return 1
    end
end

return {
    new_env = new_env,
    load = load_file,
    render = render,
    generate = generate,
    generate_and_print = generate_and_print,
}
