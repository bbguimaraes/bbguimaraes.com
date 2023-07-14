local html <const> = require "lib.html"
local path <const> = require "lib.path"
local str <const> = require "lib.str"
local util <const> = require "lib.util"

local VARS <const> = {}
local FILES <const> = {}

local function top()
    return VARS[#VARS]
end

local function push(name, t)
    if not t then
        return
    end
    local m <const> = top()
    if m then
        assert(not getmetatable(t))
        setmetatable(t, {__index = m})
    end
    table.insert(VARS, t)
    table.insert(FILES, name)
    return setmetatable({}, {
        __close = function()
            assert(VARS[#VARS] == t)
            setmetatable(t, nil)
            table.remove(VARS)
            table.remove(FILES)
        end,
    })
end

local function print_stack(name, dir, file)
    if name then
        io.stderr:write("error: file not found:\n")
        io.stderr:write("  name: ", name, "\n")
        io.stderr:write("  dir: ", dir, "\n")
        io.stderr:write("  path: ", file, "\n")
    end
    io.stderr:write("include stack:\n")
    local path <const> = top()["PATH"]
    if path then
        io.stderr:write("  ", path, "\n")
    end
    for _, x in ipairs(FILES) do
        io.stderr:write("  ", x, "\n")
    end
end

function var(k, def)
    local ret <const> = top()[k]
    if ret ~= nil then
        return ret
    end
    if def ~= nil then
        return def
    end
    io.stderr:write("error: undefined variable: ", k, "\n")
    print_stack()
    error("undefined variable: " .. k)
end

function var_and(k, f)
    local v <const> = top()[k]
    if v then
        return f(v)
    end
end

function set_var(k, v)
    VARS[#VARS][k] = v
end

function set_vars(src)
    local dst <const> = top()
    for k, v in pairs(src) do
        dst[k] = v
    end
end

function unset_var(k)
    local t <const> = top()
    if not t[k] then
        error("undefined variable: " .. k)
    end
    t[k] = nil
end

function include(name)
    return function(t)
        local file <const> = path.clean(path.join("src", "include", name))
        if not util.exists(file) then
            print_stack(name, file)
        end
        local _ <close> = push(name, t)
        return assert(loadfile(file, nil, setmetatable({}, {__index = _ENV})))()
    end
end

return {
    var = var,
    var_and = var_and,
    set_var = set_var,
    set_vars = set_vars,
    include = include,
    push = push,
}
