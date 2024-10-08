local generate <const> = require "lib.generate"

local head_extra <const> = html [[
<link
    rel="alternate" type="application/rss+xml" title="RSS"
    href="https://bbguimaraes.com/blog/rss.xml" />]]

local t <const> = generate.load(var("file"))
local title <const>, short_title <const> = t.title, t.short_title

return include "master.lua" {
    title = short_title or title,
    css = {"/main.css", "blog.css"},
    head_extra = head_extra,
    body_class = t.style or "w80",
    nav_path = {{".", "blog"}, {nil, short_title or title}},
    main = main({class = "blog"}, lines {
        inline_tag("h1", nil, title),
        inline_tag("p", nil, "<i>" .. t.date[2] .. "</i>"),
        lines(t.content),
        include "blog/tags.lua" { tags = t.tags },
    }),
}
