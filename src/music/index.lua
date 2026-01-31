local convert <const> = require "lib.convert"
local data_dir <const> = require "lib.data_dir"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local title <const> = "música · μουσική · music"
local base_url <const> = var "base_url"
local file_path <const> = var "file_path"
local file_url <const> = var "file_url"

local DIR <const> = "music"
local generator <const> = convert.deferred_generator:new {
    path_cache = path.set(
        file_path(DIR, "*.mp4"),
        file_path(DIR, "*.png"),
        file_path(DIR, "*.ogg")),
    profiles = {
        small = {size = "400x225", format = "png"},
        audio = {format = "ogg"},
    },
}
local PAGE_ENV <const> = {generator = generator}

local generate_info
local function process_item(_, t)
    t.info = generate_info(t)
end

function generate_info(t)
    local ret <const> = {}
    if t.author then
        table.insert(ret, t.author)
    end
    if t.tags then
        table.insert(ret, inline_tag(
            "span", {class = "tags"},
            table.concat(t.tags, " · ")))
    end
    return ret
end

local function generate_item(_, t)
    local id <const> = t.id
    local file_name <const> = t.file_name or t.id:gsub("-", "_")
    local info <const> = {}
    table.insert(info, h2(t.title))
    table.move(t.info, 1, #t.info, 2, info)
    table.insert(info, inline_tag(
        "span", {class = "date"},
        t.timestamp[2]:gsub("T.*$", "")))
    if t.description then
        table.insert(info, inline_tag(
            "p", {class = "description"},
            generate.render(plain({"a"}, t.description))))
    end
    local attrs <const> = {
        {"id", id}, {"class", "video"}, {"href", t.id .. ".html"},
        {"data-tags", table.concat(util.sorted(util.copy(t.tags)), ",")},
    }
    return generic_tag("a", attrs, lines {
        div({class = "preview"}, lines {
            image {
                src = PAGE_ENV.generator:generate_image(
                    var, "small", path.join(DIR, file_name .. ".mp4")),
                alt = "video poster",
                class = "no-margin image",
            },
            inline_tag("span", {class = "duration"}, t.duration),
        }),
        div({class = "info"}, ul(info)),
    })
end

local d <const> = data_dir.new(var, DIR)
local files <const> = d:load()
util.ieach(process_item, files)
d:generate_pages(files, PAGE_ENV)

return include "master.lua" {
    title = title,
    og = {
        type = "music",
        title = title,
        image = base_url .. file_url(DIR, "music_og.jpg"),
        url = path.join(base_url, DIR),
    },
    css = {"/main.css", "/gallery.css", "music.css"},
    js = {"/main.js", "music.js"},
    body_class_extra = "no-hor-margin",
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
            {class = "gallery videos"},
            lines(util.imap(generate_item, files))),
    },
}
