local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local files <const> = {}
local file_names <const> = {}

local function generate_common(dir, file_name, t, tag)
    local t <const> = generate.load(path.join("src", dir, "data", file_name))
    if t.rss ~= nil and not t.rss then
        return
    end
    t.file = path.join(
        dir, file_name:gsub("%.lua$", ".html"):gsub("_", "-"), nil)
    if t.tags then
        table.insert(t.tags, 1, tag or dir)
    else
        t.tags = {tag or dir}
    end
    files[file_name] = t
    table.insert(file_names, file_name)
    return t
end

local blog_dir <const> = path.join("src", "blog", "data")
for x in path.each(blog_dir) do
    generate_common("blog", x, t)
end

local lib_dir <const> = path.join("src", "lib", "data")
for x in path.each(lib_dir) do
    local t <const> = generate_common("lib", x, t, "books")
    if not t then
        goto continue
    end
    local title, author = t.title, t.author
    if t.languages then
        title = title.en
        author = author.en
    end
    t.title = title
    t.short_title = nil
    if t.description then
        t.description = string.format(
            "<p>%s, %s</p><p>%s</p>",
            title, author, t.description:gsub("\n$", ""):gsub("\n", " "))
    else
        t.description = string.format("%s, %s", title, author)
    end
    ::continue::
end

local music_dir <const> = path.join("src", "music", "data")
for x in path.each(music_dir) do
    local t <const> = generate_common("music", x, t)
    local desc = {}
    table.insert(desc, "<p>")
    table.insert(desc, table.concat(t.tags, " "))
    table.insert(desc, "</p>")
    if t.author then
        table.insert(desc, "<p>")
        table.insert(desc, t.author)
        table.insert(desc, "</p>")
    end
    if t.description then
        table.insert(desc, "<p>")
        table.insert(desc, (t.description:gsub("\n$", ""):gsub("\n", " ")))
        table.insert(desc, "</p>")
    end
    t.description = table.concat(desc)
end

local places_dir <const> = path.join("src", "places", "data")
for x in path.each(places_dir) do
    local t <const> = generate_common("places", x, t, "place")
    if t.description then
        t.description = t.description:gsub("\n$", ""):gsub("\n", " ")
    end
end

table.sort(file_names, function(x, y)
    return files[y].timestamp[1] < files[x].timestamp[1]
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
