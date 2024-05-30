local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local files <const> = {}
local file_names <const> = {}

local blog_dir <const> = path.join("src", "blog", "data")
for x in path.each(blog_dir) do
    local t <const> = generate.load(path.join(blog_dir, x))
    t.file = "blog/" .. x
    table.insert(t.tags, 1, "blog")
    t.timestamp = math.tointeger(t.date[1])
    files[x] = t
    table.insert(file_names, x)
end

local lib_dir <const> = path.join("src", "lib", "data")
for x in path.each(lib_dir) do
    local t <const> = generate.load(path.join(lib_dir, x))
    local date <const> = t.date
    if not date then
        goto continue
    end
    local title, author = t.title, t.author
    local desc <const> = t.description
    if t.languages then
        title = title.en
        author = author.en
    end
    t.file = path.join("lib", x)
    t.tags = {"books"}
    t.title = title
    t.short_title = nil
    if desc then
        t.description = string.format(
            "<p>%s, %s</p><p>%s</p>",
            title, author, desc:gsub("\n$", ""):gsub("\n", " "))
    else
        t.description = string.format("%s, %s", title, author)
    end
    t.timestamp = math.tointeger(date[1])
    files[x] = t
    table.insert(file_names, x)
    ::continue::
end

local music_dir <const> = path.join("src", "music", "data")
for x in path.each(music_dir) do
    local t <const> = generate.load(path.join(music_dir, x))
    local author <const>, tags <const>, description <const> =
        t.author, t.tags, t.description
    local desc = {}
    table.insert(desc, "<p>music")
    for _, x in ipairs(tags) do
        table.insert(desc, " ")
        table.insert(desc, x)
    end
    table.insert(desc, "</p>")
    if author then
        table.insert(desc, "<p>")
        table.insert(desc, author)
        table.insert(desc, "</p>")
    end
    if description then
        table.insert(desc, "<p>")
        table.insert(desc, (description:gsub("\n$", ""):gsub("\n", " ")))
        table.insert(desc, "</p>")
    end
    t.file = path.join("music", t.id .. ".html")
    table.insert(tags, 1, "music")
    t.description = table.concat(desc)
    t.timestamp = math.tointeger(t.date[1])
    files[x] = t
    table.insert(file_names, x)
end

local places_dir <const> = path.join("src", "places", "data")
for x in path.each(places_dir) do
    local t <const> = generate.load(path.join(places_dir, x))
    local desc <const> = t.description
    if desc then
        t.description = desc:gsub("\n$", ""):gsub("\n", " ")
    end
    t.file = path.join("places", t.id .. ".html")
    t.timestamp = math.tointeger(t.timestamp[1])
    t.tags = {"place"}
    files[x] = t
    table.insert(file_names, x)
end

table.sort(file_names, function(x, y)
    return files[y].timestamp < files[x].timestamp
end)
local posts <const> = {}
for _, x in ipairs(file_names) do
    table.insert(posts, files[x])
end

return lines {
    include "rss.lua" {
        date = assert(io.popen("TZ=UTC date --rfc-email"):read("a"))
            :gsub("\n$", ""),
        posts = posts,
    },
    "",
}
