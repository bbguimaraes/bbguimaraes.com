local convert <const> = require "lib.convert"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local DIR <const> = path.join("src", "music", "data")
local FILES_URL <const> = path.join("", "files", "music")
local FILES_DIR <const> = "bbguimaraes.com" .. FILES_URL
local PAGE <const> = path.join("src", "include", "music", "page.lua")

local VIDEOS <const> = path.set(path.join(FILES_DIR, "*.mp4"))
local IMAGES <const> = path.set(path.join(FILES_DIR, "*.png"))
local AUDIOS <const> = path.set(path.join(FILES_DIR, "*.ogg"))

local generate_image, generate_audio
local function process_item(t)
    local author <const> = t.author
    local info <const> = {}
    if author then
        table.insert(info, author)
    end
    local tags <const> = t.tags
    if tags then
        table.insert(info, table.concat(t.tags, ", "))
    end
    local file_name <const> = t.file_name or t.id:gsub("-", "_")
    t.video = path.join(FILES_DIR, file_name .. ".mp4")
    t.image = generate_image(t)
    t.audio = generate_audio(t)
    t.timestamp = math.tointeger(t.date[1])
    t.info = info
    return t
end

local function generate_page(t)
    local file_name <const> =
        path.join("bbguimaraes.com", "music", t.id) .. ".html"
    local f <close> = assert(io.open(file_name, "w"))
    generate.generate(f, PAGE, t)
end

local function generate_item(_, t)
    local id <const> = t.id
    local file_name <const> = t.file_url or t.file_name or id:gsub("-", "_")
    local info <const> = {}
    table.insert(info, inline_tag("h2", nil, t.title))
    for _, x in ipairs(t.info) do
        table.insert(info, x)
    end
    table.insert(info,
        inline_tag("span", {class = "date"}, t.date[2]:gsub("T.*$", "")))
    return tag("a", {id = id, class = "video", href = t.id .. ".html"}, lines {
        div({class = "preview"}, lines {
            image {
                src = path.join(FILES_URL, file_name .. ".png"),
                alt = "video poster",
            },
            inline_tag("span", {class = "duration"}, t.duration),
        }),
        div({class = "info"}, ul(info)),
    })
end

function generate_image(t)
    local src <const> = t.video
    local dst <const> = src:gsub("%.[^.]+$", ".png")
    if not IMAGES[dst] and t.poster and VIDEOS[src] then
        convert.generate_image(dst, src, "400x225", t.poster)
    end
end

function generate_audio(t)
    local src <const> = t.video
    local dst <const> = src:gsub("%.[^.]+$", ".ogg")
    if not AUDIOS[dst] and VIDEOS[src] then
        convert.generate_audio(dst, src)
    end
end

local files <const> = {}
for x in path.each(DIR)do
    table.insert(files, process_item(generate.load(path.join(DIR, x))))
end
table.sort(files, function(x, y) return y.timestamp < x.timestamp end)

for _, x in ipairs(files) do
    generate_page(x)
end

return include "master.lua" {
    title = "music",
    css = {"/main.css", "music.css"},
    body_class = "no-margin roman",
    main = lines {
        div({class = "w80"}, include "nav.lua" {
            nav_path = {{nil, "music"}},
        }),
        div({class = "header"}, lines {
            image {
                src = path.join(FILES_URL, "music.jpg"),
                class = "header-background",
            },
            image {
                src = path.join(FILES_URL, "music_text.png"),
                class = "header-text",
            },
        }),
        main(
            {class = "videos"},
            lines(util.imap(generate_item, files))),
    },
}
