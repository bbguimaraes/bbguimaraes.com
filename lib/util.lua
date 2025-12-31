local defer <const> = {}
setmetatable(defer, {__index = defer})

--- Creates an object which calls a function when closed.
function defer:new(f)
    return setmetatable({f = f}, self)
end

function defer:__close()
    self:f()
end

--- Convenience class for using a table as a set.
--- Stores elements as keys with the value \p true.
local set <const> = {}
set.__name = "set"
set.__index = set

--- Creates a set.
--- \param t Optional array, the set is initialized to contain its elements.
function set:new(t)
    local ret <const> = setmetatable({}, self)
    if t ~= nil then
        ret:union(t)
    end
    return ret
end

--- Adds an element to the set.
function set:add(x)
    self[x] = true
end

--- Adds all elements of the array \p t to the set.
function set:union(t)
    for _, x in ipairs(t) do
        self[x] = true
    end
end

local function table_default(f)
    return setmetatable({}, {__index = function(...) return f(...) end})
end

local function table_default_assign(f)
    return setmetatable({}, {
        __index = function(t, k)
            local v <const> = f(t, k)
            t[k] = v
            return v
        end,
    })
end

--- Calls a function for each key/value pair in \p t.
local function each(f, t)
    for k, v in pairs(t) do
        f(k, v)
    end
end

--- Calls a function for each index/value pair in \p t.
local function ieach(f, t)
    for i, v in ipairs(t) do
        f(i, v)
    end
end

--- Creates a new table by applying \p f to each key/value pair in \p t.
local function map(f, t)
    local ret <const> = {}
    for k, v in pairs(t) do
        ret[k] = f(k, v)
    end
    return ret
end

--- Creates a new table by applying \p f to each index/value pair in \p t.
local function imap(f, t)
    local ret <const> = {}
    for i, v in ipairs(t) do
        table.insert(ret, (f(i, v)))
    end
    return ret
end

--- As \ref map, but `insert`s each result instead of using the original key.
local function ins_map(f, t)
    local ret <const> = {}
    for k, v in pairs(t) do
        table.insert(ret, f(k, v))
    end
    return ret
end

--- Sorts \p t in place and returns it.
local function sorted(t, f)
    table.sort(t, f)
    return t
end

local function group_by_sorted_common(t, f, iter)
    local ret <const>, g, gk = {}
    for k, v in iter(t) do
        local vk <const> = f(k, v)
        if vk == gk then
            table.insert(g, v)
        else
            g, gk = {v}, vk
            table.insert(ret, {gk, g})
        end
    end
    return ret
end

local function group_by_sorted(t, f)
    return group_by_sorted_common(t, f, pairs)
end

local function igroup_by_sorted(t, f)
    return group_by_sorted_common(t, f, ipairs)
end

--- Returns a sequence of all keys in \p t.
local function keys(t)    return ins_map(function(k, _) return k end, t) end
--- Returns a sequence of all values in \p t.
local function values(t)  return ins_map(function(_, v) return v end, t) end
--- Returns a sequence of all values in the sequence \p t.
local function ivalues(t) return imap(function(_, v) return v end, t) end

--- Copies \src to \dst (or to a new table, if only one argument is provided).
local function copy(dst, src)
    if not src then
        dst, src = {}, dst
    end
    for k, v in pairs(src) do
        dst[k] = v
    end
    return dst
end

--- Checks whether a file exists.
local function exists(file_name)
    local f <close> = io.open(file_name, "r")
    return f ~= nil
end

--- Creates a list with all values in the set.
function set:values() return keys(self) end

return {
    table_default = table_default,
    table_default_assign = table_default_assign,
    each = each,
    ieach = ieach,
    map = map,
    imap = imap,
    ins_map = ins_map,
    sorted = sorted,
    group_by_sorted = group_by_sorted,
    igroup_by_sorted = igroup_by_sorted,
    keys = keys,
    values = values,
    ivalues = ivalues,
    copy = copy,
    exists = exists,
    defer = function(...) return defer:new(...) end,
    set = set,
}
