local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local function generate_tag_file(name, t)
    local file_name <const> = path.join(
        "bbguimaraes.com", "blog", "tags", name:gsub(" ", "-") .. ".html")
    local f <close> = assert(io.open(file_name, "w"))
    generate.generate(f, "src/include/blog/tag.lua", { tag = name, pages = t })
end

local DIR <const> = "src/blog/data"
local files <const> = {}
local file_names <const> = {}
for x in path.each(DIR) do
    local t <const> = generate.load(path.join(DIR, x))
    t.timestamp[1] = math.tointeger(t.timestamp[1])
    files[x] = t
    table.insert(file_names, x)
end
table.sort(file_names, function(x, y)
    return files[y].timestamp[1] < files[x].timestamp[1]
end)

local tags <const> = {}
local tag_names <const> = {}
for _, k in ipairs(file_names) do
    local v <const> = files[k]
    for _, tag in ipairs(v.tags) do
        local t = tags[tag]
        if not t then
            t = {}
            tags[tag] = t
            table.insert(tag_names, tag)
        end
        table.insert(t, {k, v.short_title or v.title})
    end
end
table.sort(tag_names)
util.each(generate_tag_file, tags)

return include "master.lua" {
    title = "blog - tags",
    css = {"/main.css", "../blog.css"},
    body_class = "w80",
    nav_path = {{"..", "blog"}, {nil, "tags"}},
    main = main({class = "blog"}, lines {
        html("<h1>Tags</h1>"),
        tag("p", {class = "tags"}, lines(util.imap(function(_, v)
            return link {
                href = v:gsub(" ", "-") .. ".html",
                content = v,
            }
        end, tag_names))),
    }),
}
