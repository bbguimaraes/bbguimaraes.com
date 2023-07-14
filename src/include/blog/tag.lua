local util <const> = require "lib.util"
local tag <const> = var "tag"

local function page_link(_, t)
    local page <const>, title <const> = table.unpack(t)
    return link {
        href = "../" .. page:gsub("%.lua$", ".html"),
        content = title,
    }
end

return include "master.lua" {
    title = "blog / tag / " .. tag,
    head_extra = include "rss_head.lua" {},
    body_class = "w80",
    nav_path = {{"..", "blog"}, {".", "tags"}, {nil, tag}},
    main = div({class = "blog"}, lines {
        html(string.format("<h1>tag - %s</h1>", tag)),
        ul(util.imap(page_link, var "pages")),
    }),
}
