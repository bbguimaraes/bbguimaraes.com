local l <const> = {}

local path <const> = {}

local extra <const> = var("nav_extra", false)
if extra then
    table.insert(l, extra)
else
    table.insert(l, include "rss_icon.lua" {})
end

table.insert(path, link {
    href = "/",
    content = image {
        id = "logo",
        alt = "root",
        src = "/triangle_icon.png",
    },
})
for _, t in ipairs(var("nav_path")) do
    table.insert(path, html "/")
    local href, content = table.unpack(t)
    if href then
        table.insert(path, link {href = href, content = content})
    else
        table.insert(path, html(content))
    end
end
table.insert(l, div({class = "nav-path"}, lines(path)))

return tag("nav", {id = "page-nav"}, lines(l))
