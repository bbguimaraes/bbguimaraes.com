local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local file_url <const> = var "file_url"
local base_url <const> = var "base_url"
local generator <const> = var("generator", false)
local title <const> = var "title"
local images <const> = var("images", {})

local function generate_info()
    local l <const> = {}
    table.insert(l, inline_tag("i", nil, var("timestamp")[2]))
    var_and("links", function()
        table.insert(l, ul(include "link_list.lua" {}))
    end)
    return div({class = "info"}, lines(l))
end

local function generate_figure(_, t)
    local name <const>, text <const> = t.path, t.text
    local src <const> = generator:generate_image(var, "small", t.path, t.poster)
    if name:match("%.mp4$") then
        content = video {
            class = "gallery-shadow",
            controls = true,
            preload = "none",
            width = t.width,
            height = t.height,
            poster = src,
            sources = { file_url(name) },
        }
    else
        content = image {
            class = "gallery-shadow",
            alt = t.alt,
            src = src,
        }
    end
    local l <const> = {}
    table.insert(l, link {
        href = file_url(name),
        content = content,
    })
    if text then
        table.insert(l, text_tag("figcaption", nil, text))
    end
    return tag("figure", {class = "gallery-item"}, lines(l))
end

local l <const> = {}
var_and("content", function(x)
    table.insert(l, x)
    table.insert(l, hr())
end)
var_and("citation", function(x)
    table.insert(l, blockquote(x))
    table.insert(l, hr())
end)

return include "master.lua" {
    og = {
        type = "article",
        title = title,
        description = var_and("description", function(x)
            return generate.render(plain({"a", "i", "span"}, x))
        end),
        image = #images ~= 0
            and (base_url .. generator:file_url(var, "small", images[1].path))
            or nil,
        url = var "url",
    },
    nav_path = false,
    main = main({class = "post"}, lines {
        div({class = "w80"}, lines {
            include "nav.lua" {},
            tag("h1", nil, title),
            generate_info(),
            table.unpack(l),
        }),
        div(
            {class = "gallery"},
            lines(util.imap(generate_figure, images))),
    }),
}
