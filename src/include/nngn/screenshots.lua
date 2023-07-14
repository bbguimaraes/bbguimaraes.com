local title <const> = var "title"
local images <const> = var("images", false)
local videos_prefix <const> = var("videos_prefix", false)
local videos <const> = var("videos", false)

local URL <const> = "/files/nngn/screenshots/"

local function figure(id, caption, s)
    return tag("figure", {id = id}, lines {
        s,
        inline_tag("figcaption", nil, caption),
    })
end

local content <const> = {}

if images and videos then
    table.insert(content, ul {
        link { href = "#screenshots", content = "screenshots" },
        link { href = "#videos", content = "videos" },
    })
end

local sections <const> = {}
if images then
    if images and videos then
        table.insert(sections, h3_link { "screenshots", "screenshots" })
    end
    for _, x in ipairs(var "images") do
        table.insert(sections, figure(x.id, x.caption, image {
            src = URL .. x.src,
            alt = x.title,
            title = x.title,
        }))
    end
end

if videos then
    if images and videos then
        table.insert(sections, h3_link { "videos", "videos" })
    end
    if videos_prefix then
        table.insert(sections, videos_prefix)
    end
    for _, x in ipairs(videos) do
        local src <const> = x.src
        table.insert(sections, figure(x.id, x.caption, video {
            controls = true,
            preload = "none",
            poster = string.format("%s%s_poster.png", URL, src),
            sources = {string.format("%s%s.webm", URL, src)},
        }))
    end
end
table.insert(content, div({class = "screenshots"}, lines(sections)))

return include "master.lua" {
    css = {"/main.css", "../nngn.css"},
    title = "nngn - screenshots - " .. title,
    nav_path = {{"/nngn", "nngn"}, {nil, "screenshots"}, {nil, title}},
    main = main(nil, lines {
        html "<h1>nngn</h1>",
        inline_tag("h2", nil, "screenshots - " .. title),
        table.unpack(content),
    }),
}
