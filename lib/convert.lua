local path <const> = require "lib.path"

local function generate_image(dst, src, size, time)
    if src:match("%.mp4$") then
        assert(os.execute(string.format(
            "ffmpeg"
                .. " -loglevel warning -ss %s -i %s"
                .. " -vf scale=%s:force_original_aspect_ratio=decrease"
                .. " -update 1 -vframes 1 %s",
            time or "0:00", src, size, dst)))
    else
        assert(os.execute(string.format(
            "magick convert -auto-orient -resize '%s>' %s %s", size, src, dst)))
    end
end

local function generate_audio(dst, src)
    assert(os.execute(
        string.format("ffmpeg -loglevel warning -i %s -vn %s", src, dst)))
end

local function generator_get_profile(self, profile)
    return self.profiles[profile]
        or error("profile not found: " .. profile)
end

local function generator_file_name(self, profile, src)
    local ext <const> =
        string.format("%s.%s", profile.suffix or "", profile.format or "jpg")
    return path.replace_extension(src, ext)
end

local function generator_generate(
    self, file_path, file_url, f, profile, src, ...
)
    local dst = generator_file_name(self, profile, src)
    local ret <const> = file_url(dst)
    dst = file_path(dst)
    if not self:path_exists(dst) then
        f(dst, file_path(src), ...)
    end
    return ret
end

function generator_generate_image(self, file_path, file_url, profile, src, time)
    profile = generator_get_profile(self, profile)
    return generator_generate(
        self, file_path, file_url, generate_image, profile, src, profile.size,
        time)
end

function generator_generate_audio(self, file_path, file_url, src)
    return generator_generate(
        self, file_path, file_url, generate_audio,
        generator_get_profile(self, "audio"), src)
end

local generator <const> = {}
generator.__name = "generator"
generator.__index = generator

function generator:new(t)
    if t.page_cache ~= nil then
        t.page_cache = {}
    end
    return setmetatable(t, self)
end

function generator:path_exists(file_name)
    if self.path_cache[file_name] then
        return true
    elseif path.exists(file_name) then
        self.path_cache[file_name] = true
        return true
    end
    return false
end

function generator:file_url(var, profile, src)
    return var("file_url")(
        generator_file_name(self, generator_get_profile(self, profile), src))
end

for _, x in ipairs{"generate_image", "generate_audio"} do
    local f <const> = _ENV["generator_" .. x]
    generator[x] = function(self, var, ...)
        return f(self, var("file_path"), var("file_url"), ...)
    end
end

local deferred_generator <const> = setmetatable({}, {__index = generator})
deferred_generator.__name = "deferred_generator"

function deferred_generator:new(t)
    return setmetatable(t, {__index = self})
end

for _, x in ipairs{"generate_image", "generate_audio"} do
    local f <const> = _ENV["generator_" .. x]
    deferred_generator[x] = function(self, var, ...)
        local args <const> = {self, var("file_path"), var("file_url"), ...}
        return function() return f(table.unpack(args)) end
    end
end

return {
    generator = generator,
    deferred_generator = deferred_generator,
    generate_image = generate_image,
    generate_audio = generate_audio,
}
