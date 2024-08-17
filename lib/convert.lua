local path <const> = require "lib.path"

local function generate_image(dst, src, size, time)
    if src:match("%.mp4$") then
        assert(os.execute(string.format(
            "ffmpeg"
                .. " -loglevel warning -ss %s -i %s"
                .. " -vf scale=%s -update 1 -vframes 1 %s",
            time or "0:00", src, size, dst)))
    else
        assert(os.execute(string.format(
            "magick convert -resize '%s>' %s %s", size, src, dst)))
    end
end

local function generate_audio(dst, src)
    assert(os.execute(
        string.format("ffmpeg -loglevel warning -i %s -vn %s", src, dst)))
end

return {
    generate_image = generate_image,
    generate_audio = generate_audio,
}
