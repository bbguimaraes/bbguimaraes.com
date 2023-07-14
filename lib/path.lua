local SEP <const> = package.config:match("^([^\n]*)")

--- Returns the directory part of a path.
local function dir(path)
    local ret <const> = path:match("(.*)/")
    if not ret then
        return "."
    elseif #ret == 0 then
        return "/"
    else
        return ret
    end
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

--- Returns an iterator for paths contained in a directory.
local function each(dir)
    return assert(io.popen("ls " .. dir)):lines()
end

return {
    SEP = SEP,
    dir = dir,
    join = join,
    clean = clean,
    each = each,
}
