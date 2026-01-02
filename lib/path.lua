local SEP <const> = package.config:match("^([^\n]*)")

--- Returns the directory part of a path.
local function dir(path)
    local ret <const> = path:match("(.*)" .. SEP)
    if not ret then
        return "."
    elseif #ret == 0 then
        return SEP
    else
        return ret
    end
end

--- Returns the file part of a path.
local function base(path)
    local _, i <const> = path:find(".*" .. SEP)
    return path:sub((i or 0) + 1)
end

--- Replaces the part after the final \p . in \p path.
local function replace_extension(path, ext)
    return (path:gsub("%.[^.]+$", ext))
end

local function prepend_extension(path, s)
    return (path:gsub("(%.[^.]+)$", s .. "%1"))
end

--- Concatenates all arguments, with a path separator between each.
local function join(...)
    return table.concat({...}, SEP)
end

--- Removes `..` and redundant path separators from a path.
local function clean(x)
    local t <const> = {}
    if x:sub(1, 1) == SEP then
        table.insert(t, "")
    end
    for x in x:gmatch("[^" .. SEP .. "]+") do
        if x == ".." and t[#t] then
            table.remove(t)
        else
            table.insert(t, x)
        end
    end
    return table.concat(t, SEP)
end

--- Checks whether a file exists at a given path.
local function exists(x)
    local ok <const>, s <const>, n <const> =
        os.execute(string.format("[[ -e %s ]]", x))
    if ok then
        return true
    end
    if s == "exit" and n == 1 then
        return false
    end
    assert(ok, s, n)
end

--- Returns an iterator for paths contained in one or more directories.
local function each(...)
    return assert(io.popen("ls " .. table.concat({...}, " "))):lines()
end

--- Returns a set whose keys are the names of existing files.
--- Can be used for efficient existence tests:
---
--- ```
--- s = path.set(dir)
--- if s[file_name] then
---     -- …
--- end
--- ```
local function set(...)
    local ret <const> = {}
    for x in each(...) do
        ret[x] = true
    end
    return ret
end

return {
    SEP = SEP,
    dir = dir,
    base = base,
    replace_extension = replace_extension,
    prepend_extension = prepend_extension,
    join = join,
    clean = clean,
    exists = exists,
    each = each,
    set = set,
}
