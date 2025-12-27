local html <const> = require "lib.html"
local path <const> = require "lib.path"
local str <const> = require "lib.str"
local util <const> = require "lib.util"

local VARS <const> = {}
local FILES <const> = {}

local function top()
    return VARS[#VARS]
end

local function push(name, ...)
    local ts <const> = {...}
    do
        local prev = top()
        for _, t in ipairs(ts) do
            assert(not getmetatable(t))
            if prev then
                setmetatable(t, {__index = prev})
            end
            table.insert(VARS, t)
            table.insert(FILES, name)
            prev = t
        end
    end
    return setmetatable({}, {
        __close = function()
            for i = #ts, 1, -1 do
                local t <const> = ts[i]
                assert(VARS[#VARS] == t)
                setmetatable(t, nil)
                table.remove(VARS)
                table.remove(FILES)
            end
        end,
    })
end

local function print_stack(name, dir, file)
    if name then
        io.stderr:write("error: file not found:\n")
        io.stderr:write("  name: ", name, "\n")
        io.stderr:write("  dir: ", dir, "\n")
        if file then
            io.stderr:write("  path: ", file, "\n")
        end
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
    return function(...)
        local file <const> = path.clean(path.join("src", "include", name))
        if not util.exists(file) then
            print_stack(name, file)
        end
        local _ <close> = push(name, ...)
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
