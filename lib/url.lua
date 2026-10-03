local ESCAPES <const> = {
    ["\n"] = "%%0a",
    [" "] = "%%20",
    ["à"] = "%%c3%%a0",
    ["á"] = "%%c3%%a1",
    ["ã"] = "%%c3%%a3",
    ["ô"] = "%%c3%%b4",
}

local function split_query(x)
    local i <const> = x:find("?", 1, true)
    if i then
        return x:sub(1, i - 1), x:sub(i + 1)
    else
        return x
    end
end

--- Split a host/path pair.
local function parse_host(x)
    local i <const> = x:find("/", 1, true)
    if i then
        return x:sub(1, i - 1), x:sub(i + 1)
    else
        return x, nil
    end
end

--- Split a URL into protocol, host, and path (with query).
local function parse_base(x)
    local _, i <const> = x:find("^%w-://", 1)
    if i then
        return x:sub(1, i - 3), parse_host(x:sub(i + 1))
    else
        return nil, parse_host(x)
    end
end

--- Split a single key/value pair in a query string (e.g. `k=v`).
local function parse_query_arg(t, x)
    local k <const>, v <const> = x:match("(.-)=(.*)")
    if k then
        t[k] = v
    else
        t[x] = ""
    end
end

--- Split each key/value pair in a query string (e.g. `k=v&l=w`).
local function parse_query(x)
    local ret <const> = {}
    if not x:find("&", 1, true) then
        parse_query_arg(ret, x)
        return ret
    end
    local i, n <const> = 1, #x
    while i <= n do
        local sep <const> = x:find("&", i, true) or (n + 1)
        parse_query_arg(ret, x:sub(i, sep - 1))
        i = sep + 1
    end
    return ret
end

--- Split a URL into protocol, domain, path, and query.
local function parse(x)
    local base <const>, query <const> = split_query(x)
    local protocol <const>, domain <const>, path <const> = parse_base(base)
    return protocol, domain, path, parse_query(query)
end

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
    split_query = split_query,
    parse_query_arg = parse_query_arg,
    parse_query = parse_query,
    parse = parse,
    escape = escape,
    unescape = unescape,
    encode = encode,
}
