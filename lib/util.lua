local defer <const> = {}
setmetatable(defer, {__index = defer})

--- Creates an object which calls a function when closed.
function defer:new(f)
    return setmetatable({f = f}, self)
end

function defer:__close()
    self:f()
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

return {
    each = each,
    ieach = ieach,
    map = map,
    imap = imap,
    ins_map = ins_map,
    sorted = sorted,
    keys = keys,
    values = values,
    ivalues = ivalues,
    copy = copy,
    exists = exists,
    defer = function(...) return defer:new(...) end,
}
