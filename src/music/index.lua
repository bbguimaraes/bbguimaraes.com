local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local DIR <const> = "src/music/data"
local PAGE <const> = path.join("src", "include", "music", "page.lua")

local function generate_page(t)
    local file_name <const> =
        path.join("bbguimaraes.com", "music", t.id) .. ".html"
    local f <close> = assert(io.open(file_name, "w"))
    generate.generate(f, PAGE, t)
end

local files <const> = {}
local file_names <const> = {}

for x in path.each(DIR)do
    local t <const> = assert(loadfile(path.join(DIR, x), nil, _ENV))()
    local author <const>, date <const> = t.author, t.date
    local info <const> = {}
    table.insert(info, string.format("<i>%s</i>", date[2]))
    table.insert(info, string.format("<i>%s</i>", t.duration))
    if author then
        table.insert(info, author)
    end
    local tags <const> = t.tags
    if tags then
        table.insert(info, table.concat(t.tags, ", "))
    end
    t.timestamp = math.tointeger(date[1])
    t.info = info
    files[x] = t
    table.insert(file_names, x)
end
table.sort(file_names, function(x, y)
    return files[y].timestamp < files[x].timestamp
end)

for _, x in ipairs(file_names) do
    local t <const> = files[x]
    generate_page(t)
end

local function generate(_, x)
    local t <const> = files[x]
    local id <const> = t.id
    local filename <const> = t.file_name or id:gsub("-", "_")
    return div({id = id, class = "video"},
        tag("a", {href = t.id .. ".html"}, lines {
            image {
                src = string.format("/files/music/%s.png", filename),
                alt = "video poster",
            },
            inline_tag("h2", nil, t.title),
            div({class = "info"}, ul(t.info)),
        }))
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
                src = "/files/music/music.jpg",
                class = "header-background",
            },
            image {
                src = "/files/music/music_text.png",
                class = "header-text",
            },
        }),
        div({class = "videos"}, lines(util.imap(generate, file_names))),
    },
}
