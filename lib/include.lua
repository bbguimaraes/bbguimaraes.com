local path <const> = require "lib.path"
local util <const> = require "lib.util"

local env <const> = {}
env.__index = env
env.__name = env

local function top(env)
    return env.vars[#env.vars]
end

local function top_non_empty(env)
    local ret <const> = top(env)
    if not ret then
        error("empty environment")
    end
    return ret
end

local function print_stack(env, name, dir, file)
    if name then
        io.stderr:write("error: file not found:\n")
        io.stderr:write("  name: ", name, "\n")
        io.stderr:write("  dir: ", dir, "\n")
        if file then
            io.stderr:write("  path: ", file, "\n")
        end
    end
    io.stderr:write("include stack:\n")
    local path <const> = top_non_empty(env)["PATH"]
    if path then
        io.stderr:write("  ", path, "\n")
    end
    for _, x in ipairs(env.files) do
        io.stderr:write("  ", x, "\n")
    end
end

function env:new(file_env)
    return setmetatable({
        file_env = file_env,
        vars = {},
        files = {},
    }, self)
end

function env:push(name, ...)
    local ts <const> = {...}
    do
        local prev = top(self)
        for _, t in ipairs(ts) do
            assert(not getmetatable(t))
            if prev then
                setmetatable(t, {__index = prev})
            end
            table.insert(self.vars, t)
            table.insert(self.files, name)
            prev = t
        end
    end
    return setmetatable({}, {
        __close = function()
            for i = #ts, 1, -1 do
                local t <const> = ts[i]
                assert(self.vars[#self.vars] == t)
                setmetatable(t, nil)
                table.remove(self.vars)
                table.remove(self.files)
            end
        end,
    })
end

function env:var(k, def)
    local ret <const> = top_non_empty(self)[k]
    if ret ~= nil then
        return ret
    end
    if def ~= nil then
        return def
    end
    io.stderr:write("error: undefined variable: ", k, "\n")
    print_stack(self)
    error("undefined variable: " .. k)
end

function env:var_and(k, f)
    local v <const> = top_non_empty(self)[k]
    if v then
        return f(v)
    end
end

function env:var_or(k, f)
    return top_non_empty(self)[k] or f(v)
end

function env:set_var(k, v)
    self.vars[#self.vars][k] = v
end

function env:set_vars(src)
    local dst <const> = top_non_empty(self)
    for k, v in pairs(src) do
        dst[k] = v
    end
end

function env:unset_var(k)
    local t <const> = top_non_empty(self)
    if not t[k] then
        error("undefined variable: " .. k)
    end
    t[k] = nil
end

local function include(env, file_env, name)
    return function(...)
        local file = name
        if not util.exists(file) then
            file = env:var("include_path")(file)
        end
        if not util.exists(file) then
            print_stack(env, name, file)
        end
        local _ <close> = env:push(name, ...)
        return assert(loadfile(
            file, nil, setmetatable({}, {__index = file_env})))()
    end
end

function env:include(name)
    return include(self, self.file_env, name)
end

return {
    env = env,
    include = include,
}
