local digest <const> = (function()
    local ok <const>, digest <const> = pcall(require, "digest")
    return ok and digest or nil
end)()

local function read_file(name)
    local f <close>, err <const> = io.open(name)
    if f then
        return assert(f:read("a"))
    else
        io.stderr:write(err, "\n")
    end
end

local function common_digest(f)
    f = digest[f]
    if f then
        return function(x)
            local s <const> = read_file(x)
            local d <const> = f.new()
            d:update(s)
            return d:hexdigest()
        end
    end
end

local function common_cmd(cmd, x)
    return function(x)
        local p <close> = assert(io.popen(cmd .. " " .. x, "r"))
        return assert(p:read("a")):sub(1, 32)
    end
end

local function common(f, cmd)
    return common_digest(f)
        or common_cmd(cmd)
end

local md5 <const> = common("md5", "md5sum")

local HASHERS <const> = {md5 = md5}

local file_hasher <const> = {}
file_hasher.__index = file_hasher
file_hasher.__name = "file_hasher"

function file_hasher:new(f)
    h = HASHERS[f]
    if not h then
        error("unknown hasher: " .. f)
    end
    return setmetatable({f = h, cache = {}}, self)
end

function file_hasher:hash(x)
    local ret = self.cache[x]
    if not ret then
        ret = self.f(x)
        self.cache[x] = ret
    end
    return ret
end

return {
    md5 = md5,
    file_hasher = file_hasher,
}
