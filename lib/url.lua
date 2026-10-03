local ESCAPES <const> = {
    ["\n"] = "%%0a",
    [" "] = "%%20",
    ["à"] = "%%c3%%a0",
    ["á"] = "%%c3%%a1",
    ["ã"] = "%%c3%%a3",
    ["ô"] = "%%c3%%b4",
}

local function escape(x)
    for k, v in pairs(ESCAPES) do
        x = x:gsub(k, v)
    end
    return x
end

local function unescape(x)
    for k, v in pairs(ESCAPES) do
        x = x:gsub(v, k)
    end
    return x
end

--- Encode a list of queries and joins it to the base path.
--- e.g.: `encode("https://example.com/path", {{"k", "v"}, {"l", "w"}})`
local function encode(path, query)
    local r <const> = {}
    for _, x in ipairs(query) do
        table.insert(r, string.format("%s=%s", x[1], escape(x[2])))
    end
    return string.format("%s?%s", escape(path), table.concat(r, "&"))
end

return {
    escape = escape,
    unescape = unescape,
    encode = encode,
}
