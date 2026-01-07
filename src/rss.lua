local data_dir <const> = require "lib.data_dir"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local files <const> = {}

local function generate_common(dir, t, tag)
    if t.rss ~= nil and not t.rss then
        return
    end
    t.file = path.join(dir, t.id .. ".html")
    local desc <const> = t.description
    if desc and type(desc) ~= "string" then
        t.description = generate.render(desc)
    end
    if t.tags then
        table.insert(t.tags, 1, tag or dir)
    else
        t.tags = {tag or dir}
    end
    table.insert(files, t)
    return t
end

local blog_dir <const> = data_dir.new(var, "blog")
for _, x in ipairs(blog_dir:load()) do
    generate_common("blog", x)
end

local lib_dir <const> = data_dir.new(var, "lib")
for _, x in ipairs(lib_dir:load()) do
    if not generate_common("lib", x, "books") then
        goto continue
    end
    local title, author = x.title, x.author
    if x.languages then
        title = title.en
        author = author.en
    end
    x.title = title
    x.short_title = nil
    if x.description then
        x.description = string.format(
            "<p>%s, %s</p><p>%s</p>",
            title, author, x.description:gsub("\n$", ""):gsub("\n", " "))
    else
        x.description = string.format("%s, %s", title, author)
    end
    ::continue::
end

local music_dir <const> = data_dir.new(var, "music")
for _, x in ipairs(music_dir:load()) do
    generate_common("music", x)
    local desc = {}
    table.insert(desc, "<p>")
    table.insert(desc, table.concat(x.tags, " "))
    table.insert(desc, "</p>")
    if x.author then
        table.insert(desc, "<p>")
        table.insert(desc, x.author)
        table.insert(desc, "</p>")
    end
    if x.description then
        table.insert(desc, "<p>")
        table.insert(desc, (x.description:gsub("\n$", ""):gsub("\n", " ")))
        table.insert(desc, "</p>")
    end
    x.description = table.concat(desc)
end

local places_dir <const> = data_dir.new(var, "places")
for _, x in ipairs(places_dir:load()) do
    generate_common("places", x, "place")
    if x.description then
        x.description = x.description:gsub("\n$", ""):gsub("\n", " ")
    end
end

local pictures_dir <const> = data_dir.new(var, "pictures")
for _, x in ipairs(pictures_dir:load()) do
    generate_common("pictures", x)
end

local writing_dir <const> = data_dir.new(var, "writing")
for _, x in ipairs(writing_dir:load()) do
    generate_common("writing", x)
end

table.sort(files, function(x, y) return y.timestamp[1] < x.timestamp[1] end)
local posts <const> = {}
for _, x in ipairs(files) do
    table.insert(posts, x)
end

return lines {
    include "rss.lua" {
        date = assert(io.popen("TZ=UTC date --rfc-email"):read("a"))
            :gsub("\n$", ""),
        posts = posts,
    },
    "",
}
