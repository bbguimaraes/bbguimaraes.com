local path <const> = require "lib.path"

local LINKS <const> = {
    "map", "youtube", "mastodon", "facebook", "instagram",
    map = "https://www.openstreetmap.org/",
    youtube = "https://www.youtube.com/watch?v=",
    mastodon = "https://mastodon.bbguimaraes.com/@bbguimaraes/",
    facebook = "https://www.facebook.com/bruno.barcarolguimaraes/posts/",
    instagram = "https://www.instagram.com/p/",
}

local links <const> = var "links"
local t <const> = {}

for _, l in ipairs(links) do
    table.insert(t, link {
        href = l[2],
        target = "_blank",
        content = l[1],
    })
end
for _, k in ipairs(LINKS) do
    local v <const> = links[k]
    if v then
        table.insert(t, link {
            href = LINKS[k] .. v,
            target = "_blank",
            content = k,
        })
        t[k] = nil
    end
end

return t
