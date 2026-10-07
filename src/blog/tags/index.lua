local data_dir <const> = require "lib.data_dir"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local generate <const> = var "generate"
local include_path <const> = var "include_path"
local page_path <const> = var "page_path"
local DIR <const> = "blog"

local function generate_tag_file(name, t)
    local dst <const> =
        page_path("blog", "tags", name:gsub(" ", "-") .. ".html")
    local f <close> = assert(io.open(dst, "w"))
    generate(f, include_path(DIR, "tag.lua"), {tag = name, pages = t})
end

local function generate_tag(_, x)
    return link {
        href = x:gsub(" ", "-") .. ".html",
        content = x,
    }
end

local d <const> = data_dir.new(var, DIR)
local files <const> = d:load()
local tags <const> = util.table_default_assign(function() return {} end)
for _, t in ipairs(files) do
    for _, tag in ipairs(t.tags) do
        table.insert(tags[tag], t)
    end
end
util.each(generate_tag_file, tags)

return include "master.lua" {
    title = "blog - tags",
    css = {"/main.css", "../blog.css"},
    body_class = "black-bg mono w80",
    nav_path = {{"..", "blog"}, {nil, "tags"}},
    main = main({class = "blog"}, lines {
        h1 "Tags",
        tag(
            "p", {class = "tags"},
            lines(util.imap(generate_tag, util.sorted(util.keys(tags))))),
    }),
}
