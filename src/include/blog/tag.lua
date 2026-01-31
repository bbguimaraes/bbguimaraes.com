local path <const> = require "lib.path"
local util <const> = require "lib.util"

local tag <const> = var "tag"

local function page_link(_, t)
    return link {
        href = path.join("..", t.id .. ".html"),
        content = t.short_title or t.title,
    }
end

return include "master.lua" {
    title = "blog / tag / " .. tag,
    css = {"/main.css", "../blog.css"},
    body_class = "black-bg mono w80",
    nav_path = {{"..", "blog"}, {".", "tags"}, {nil, tag}},
    main = main({class = "blog"}, lines {
        h1("tag - " .. tag),
        ul(util.imap(page_link, var "pages")),
    }),
}
