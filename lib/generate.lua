local html <const> = require "lib.html"
local include <const> = require "lib.include"
local path <const> = require "lib.path"
local str <const> = require "lib.str"
local util <const> = require "lib.util"

local NOT_FOUND <const> = 2
local CONF

local context <const> = {}
context.__index = context
context.__name = "context"

function context:new(t)
    return setmetatable(t, self)
end

function context:save(...)
    local dst <const>, src <const> = self, {}
    for _, x in ipairs({...}) do
        table.insert(src, x)
        table.insert(src, dst[x])
    end
    return setmetatable(src, {
        __close = function(src)
            for i = 1, #src, 2 do
                dst[src[i]] = src[i + 1]
            end
        end,
    })
end

--- Determines the location of the configuration file based on the environment.
local function conf_file_names(opts)
    if opts and opts.config then
        return opts.config
    end
    do
        local d <const> = os.getenv("XDG_CONFIG_DIR")
        if d then
            return {path.join(d, "bbguimaraes.com", "conf.lua")}
        end
    end
    do
        local d <const> = os.getenv("HOME")
        if d then
            return {path.join(d, ".config", "bbguimaraes.com", "conf.lua")}
        end
    end
end

--- Reads configuration file, if it exists.
local function read_conf(opts)
    local l = conf_file_names(opts)
    if not l then
        return
    end
    local ret <const> = {}
    for _, file_name in ipairs(l) do
        local f <close>, err <const>, status <const> = io.open(file_name, "r")
        if f then
            table.insert(ret, assert(f:read("a")))
            goto continue
        end
        -- TODO only for implicit files
        if status == NOT_FOUND then
            goto continue
        end
        error(string.format(
            "failed to load configuration file %s: %s",
            file_name, err))
        ::continue::
    end
    return ret
end

--- Loads configuration file, if necessary.
local function load_conf(opts, env)
    if CONF then
        return CONF
    end
    local l <const> = read_conf(opts)
    CONF = {}
    if l then
        for _, x in ipairs(l) do
            util.copy(CONF, assert(load(x, nil, nil, env))())
        end
    end
    return CONF
end

--- Creates a new, empty environment with the base library functions.
local function new_env()
    local ret <const> = setmetatable({}, {__index = _ENV})
    util.copy(ret, html)
    util.copy(ret, str)
    local env <const> = include.env:new(ret)
    for k, v in pairs(getmetatable(env)) do
        ret[k] = function(...) return env[k](env, ...) end
    end
    return ret
end

local function check_local_files(opts, src, t)
    local output <const> = opts and opts.output
    local file_url_to_path <const> = load_conf(opts).file_url_to_path
    local errs <const> = {}
    for x in pairs(util.sorted(t)) do
        local file_name <const> =
            file_url_to_path(x)
            or (output and path.join(path.dir(output), x))
        if file_name then
            local f <close>, err <const> = io.open(file_name)
            if not f then
                table.insert(errs, err)
            end
        end
    end
    if #errs == 0 then
        return true
    end
    if src then
        io.stderr:write(src, "\n")
    end
    io.stderr:write("warning: failed to find one or more local files:\n")
    for _, x in ipairs(errs) do
        io.stderr:write("- ", x, "\n")
    end
    return false
end

local function check(opts, src, ctx)
    local ret = true
    ret = check_local_files(opts, src, ctx.local_files) and ret
    return ret
end

local function _render(out, opts, src, x)
    local ctx <const> = context:new {
        out = out,
        indent = 0,
        local_files = util.set:new(),
        escape = html.escape,
    }
    local ret <const> = x:render(ctx)
    return ret, check(opts, src, ctx)
end

--- Shortcut for rendering the contents of a renderer tree.
local function render(x)
    local out <const> = str.buffer:new()
    local ok <const> = _render(out, nil, nil, x)
    return out:output(), ok
end

local generate

--- Creates a new environment containing variables in \p conf and loads a file.
local function load_file(opts, file_name, ...)
    local env <const> = new_env()
    local global_vars <close> = env.push(nil, load_conf(opts, env))
    local path_var <close> = env.push(nil, {
        PATH = file_name,
        OUTPUT = opts and opts.output,
    })
    local conf_vars <close> = env.push(nil, ...)
    local func_vars <close> = env.push(nil, {
        generate = function(out, src, ...)
            return generate(out, opts, src, ...)
        end,
    })
    return assert(loadfile(file_name, nil, env))()
end

--- Loads a file as pure data, with no access to the environment.
local function load_data(file_name)
    return assert(loadfile(file_name, nil, nil))()
end

--- Fully renders the contents of a file.
function generate(out, opts, src, ...)
    return _render(out, opts, src, load_file(opts, src, ...))
end

return {
    new_env = new_env,
    load = load_file,
    load_data = load_data,
    render = render,
    generate = generate,
}
