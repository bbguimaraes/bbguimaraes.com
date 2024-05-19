local path <const> = require "lib.path"
local util <const> = require "lib.util"

local FILES_URL <const> = path.join("", "files", "places")
local title <const> = var "title"
local images <const> = var "images"

local l <const> = {}
table.insert(l, div({class = "gallery"}, lines(util.imap(function(_, x)
    return image {
        alt = x.path,
        src = path.join(
            FILES_URL,
            x.path:gsub("%.[^.]+", "_tiny.jpg"), nil),
    }
end, images))))
var_and("content", function(x)
    table.insert(l, div({class = "description"}, x))
end)

return div(
    {class = "place"},
    tag("a", {href = var("id") .. ".html"}, lines {
        image {
            class = "main-img",
            alt = title,
            src = path.join(
                FILES_URL,
                images[1].path:gsub("%.", "_small."), nil),
        },
        div({class = "title"}, lines {
            inline_tag("h2", nil, title),
            html(var("timestamp")[2]),
        }),
        div({class = "preview"}, lines {
            inline_tag("div", {class = "preview-background"}, ""),
            div({class = "preview-content"}, lines(l)),
        }),
    }))
