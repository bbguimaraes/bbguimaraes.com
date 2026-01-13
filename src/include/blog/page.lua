local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local head_extra <const> = html [[
<link
    rel="alternate" type="application/rss+xml" title="RSS"
    href="https://bbguimaraes.com/blog/rss.xml" />]]

local title <const> = var "title"
local short_title <const> = var("short_title", title)

return include "master.lua" {
    title = short_title,
    og = {
        type = "article",
        title = title,
        description = var_and("description", function(x)
            return generate.render(plain({"a", "span"}, x))
        end),
        url = path.join(var("base_url"), "blog", var("id") .. ".html"),
    },
    css = {"/main.css", "blog.css"},
    head_extra = head_extra,
    body_class = var("style", "w80"),
    nav_path = {{".", "blog"}, {nil, short_title}},
    main = main({class = "blog"}, lines {
        inline_tag("h1", nil, title),
        inline_tag("p", nil, inline_tag("i", nil, var("timestamp")[2])),
        lines(var("content")),
        include "blog/tags.lua" {},
    }),
}
