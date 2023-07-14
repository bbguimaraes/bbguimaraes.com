local l <const> = {}
table.insert(l, link {
    href = "/",
    content = image {
        id = "logo",
        alt = "root",
        src = "/triangle_icon.png",
    },
})
for _, t in ipairs(var("nav_path")) do
    table.insert(l, html "/")
    local href, content = table.unpack(t)
    if href then
        table.insert(l, link {href = href, content = content})
    else
        table.insert(l, html(content))
    end
end
local extra <const> = var("nav_extra", false)
if extra then
    table.insert(l, extra)
else
    table.insert(l, include "rss_icon.lua" {})
end

return tag("nav", {id = "page-nav"}, lines(l))
