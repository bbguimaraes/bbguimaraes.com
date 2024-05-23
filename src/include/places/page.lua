local path <const> = require "lib.path"
local util <const> = require "lib.util"
local title <const> = var("title")

local DIR <const> = path.join("", "files", "places")

local LINKS <const> = {
    "map", "mastodon", "facebook", "instagram",
    map = "https://www.openstreetmap.org",
    mastodon = "https://mastodon.bbguimaraes.com/@bbguimaraes",
    facebook = "https://www.facebook.com/bruno.barcarolguimaraes/posts",
    instagram = "https://www.instagram.com/p",
}

local function generate_links(t)
    if not t then
        return
    end
    local ret <const> = {}
    for _, k in ipairs(LINKS) do
        local v <const> = t[k]
        if v then
            table.insert(ret, link {
                href = path.join(LINKS[k], v),
                target = "_blank",
                content = k,
            })
            t[k] = nil
        end
    end
    return ret
end

local function generate_info()
    local l <const> = {}
    table.insert(l, inline_tag("i", nil, var("timestamp")[2]))
    var_and("links", function(t)
        local links <const> = {}
        for _, x in ipairs(generate_links(t)) do
            table.insert(links, x)
        end
        table.insert(l, ul(links))
    end)
    return div({class = "info"}, lines(l))
end

local function generate_image(_, t)
    local name <const>, text <const> = t.path, t.text
    local content
    if name:match("%.mp4$") then
        content = video {
            controls = true,
            preload = "none",
            width = t.width,
            height = t.height,
            poster = path.join(DIR, name:gsub("%.mp4$", "_small.jpg"), nil),
            sources = { path.join(DIR, name) },
        }
    else
        content = image {
            alt = name,
            src = path.join(DIR, name:gsub("%.", "_small."), nil),
        }
    end
    local l <const> = {}
    table.insert(l, link {
        href = path.join(DIR, name),
        content = content,
    })
    if text then
        table.insert(l, text_tag("figcaption", nil, text))
    end
    return tag("figure", nil, lines(l))
end

local function add_sep(t)
    if #t ~= 0 then
        table.insert(t, html "<hr />")
    end
end

local l <const> = {}
var_and("content", function(x)
    add_sep(l)
    table.insert(l, x)
end)
var_and("citation", function(x)
    add_sep(l)
    table.insert(l, blockquote(x))
end)
add_sep(l)

return include "master.lua" {
    title = title,
    css = {"/main.css", "places.css"},
    body_class = "white-bg roman",
    main = lines {
        div({class = "post"}, lines {
            div({class = "w80"}, lines {
                include "nav.lua" {
                    nav_path = {{".", "places"}, {nil, title}},
                },
                tag("h1", nil, title),
                generate_info(),
                table.unpack(l),
            }),
            div(
                {class = "gallery"},
                lines(util.imap(generate_image, var("images")))),
        }),
    },
}
