local path <const> = require "lib.path"
local util <const> = require "lib.util"

local base_url <const> = var "base_url"
local title <const> = var "title"

local DIR <const> = path.join("", "files", "places")

local function generate_info()
    local l <const> = {}
    table.insert(l, inline_tag("i", nil, var("timestamp")[2]))
    var_and("links", function()
        table.insert(l, ul(include "link_list.lua" {}))
    end)
    return div({class = "info"}, lines(l))
end

local function generate_image(_, t)
    local name <const>, poster = t.path
    if name:match("%.mp4$") then
        poster = path.join(DIR, name:gsub("%.mp4$", "_small.jpg"), nil)
    else
        poster = path.join(DIR, name:gsub("%.", "_small."), nil)
    end
    return {
        path = name,
        poster = poster,
        text = t.text,
        width = t.width,
        height = t.height,
    }
end

local function generate_figure(_, t)
    local name <const>, poster <const>, text <const> = t.path, t.poster, t.text
    if name:match("%.mp4$") then
        content = video {
            controls = true,
            preload = "none",
            width = t.width,
            height = t.height,
            poster = poster,
            sources = { path.join(DIR, name) },
        }
    else
        content = image { alt = name, src = poster }
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

local images <const> = util.imap(generate_image, var("images"))

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
    css = {"/main.css", "places.css"},
    og = {
        type = "article",
        title = title,
        image = path.join(base_url, images[1].poster),
        url = path.join(base_url, "places", var("id") .. ".html"),
    },
    body_class = "white-bg roman",
    main = main({class = "post"}, lines {
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
            lines(util.imap(generate_figure, images))),
    }),
}
