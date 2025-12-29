local convert <const> = require "lib.convert"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local title <const> = "música · μουσική · music"
local base_url <const> = var "base_url"
local page_path <const> = var "page_path"
local file_path <const> = var "file_path"
local file_url <const> = var "file_url"

local DIR <const> = "music"
local DATA_DIR <const> = path.join("src", DIR, "data")
local PAGE <const> = path.join("src", "include", DIR, "page.lua")

local VIDEOS <const> = path.set(file_path(DIR, "*.mp4"))
local IMAGES <const> = path.set(file_path(DIR, "*.png"))
local AUDIOS <const> = path.set(file_path(DIR, "*.ogg"))

local generate_image, generate_audio
local function process_item(file_name, t)
    local author <const> = t.author
    local info <const> = {}
    if author then
        table.insert(info, author)
    end
    local tags <const> = t.tags
    if tags then
        table.insert(info, table.concat(t.tags, ", "))
    end
    t.id = file_name:gsub("%.lua$", ""):gsub("_", "-")
    t.video = file_path(DIR, t.id .. ".mp4")
    t.image = generate_image(t)
    t.audio = generate_audio(t)
    t.timestamp[1] = math.tointeger(t.timestamp[1])
    t.info = info
    return t
end

local function generate_page(t)
    local file_name <const> = page_path(DIR, t.id) .. ".html"
    local f <close> = assert(io.open(file_name, "w"))
    generate.generate(f, PAGE, t)
end

local function generate_item(_, t)
    local id <const> = t.id
    local file_name <const> =
        t.file_name_url or t.file_name or t.id:gsub("-", "_")
    local info <const> = {}
    table.insert(info, inline_tag("h2", nil, t.title))
    for _, x in ipairs(t.info) do
        table.insert(info, x)
    end
    table.insert(info,
        inline_tag("span", {class = "date"}, t.timestamp[2]:gsub("T.*$", "")))
    local attrs <const> = {
        {"id", id}, {"class", "video"}, {"href", t.id .. ".html"},
        {"data-tags", table.concat(util.sorted(t.tags), ",")},
    }
    return generic_tag("a", attrs, lines {
        div({class = "preview"}, lines {
            image {
                src = file_url(DIR, file_name .. ".png"),
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
for x in path.each(DATA_DIR)do
    table.insert(files, process_item(x, generate.load(path.join(DATA_DIR, x))))
end
table.sort(files, function(x, y) return y.timestamp[1] < x.timestamp[1] end)

for _, x in ipairs(files) do
    generate_page(x)
end

return include "master.lua" {
    title = title,
    og = {
        type = "music",
        title = title,
        image = base_url .. file_url(DIR, "music_og.jpg"),
        url = path.join(base_url, DIR),
    },
    css = {"/main.css", "music.css"},
    js = {"/main.js", "music.js"},
    body_class = "no-margin roman",
    main = lines {
        div({class = "w80"}, include "nav.lua" {
            nav_path = {{nil, "music"}},
        }),
        div({class = "header"}, lines {
            div({class = "header-imgs"}, lines {
                image_link {
                    src = file_url(DIR, "music.jpg"),
                    class = "header-background",
                    alt = "music score, excerpt from Clair de Lune",
                },
                image_link {
                    src = file_url(DIR, "music_text.png"),
                    class = "header-text",
                    alt = "música · μουσική",
                },
            }),
            div({class = "w80 bottom"}, link {
                href = "about.html",
                content = "about this page",
            }),
        }),
        main(
            {class = "videos"},
            lines(util.imap(generate_item, files))),
    },
}
