local path <const> = require "lib.path"
local util <const> = require "lib.util"

local FILES_URL <const> = path.join("", "files", "places")
local title <const> = var "title"
local images <const> = var "images"

local content <const> = {}
local l <const> = {}

var_and("images", function(x)
    table.insert(
        content,
        div({class = "gallery"}, lines(util.imap(function(_, x)
            return image {
                alt = x.path,
                src = path.join(
                    FILES_URL,
                    x.path:gsub("%.[^.]+", "_tiny.jpg"), nil),
            }
        end, x))))
    if #x ~= 0 then
        table.insert(l, image {
            class = "main-img",
            alt = title,
            src = path.join(FILES_URL, x[1].path:gsub("%.", "_small."), nil),
        })
    end
end)

var_and("content", function(x)
    table.insert(content, div({class = "description"}, x))
end)

table.insert(l, div({class = "title"}, lines {
    inline_tag("h2", nil, title),
    html(var("timestamp")[2]),
}))

table.insert(l, div({class = "preview"}, lines {
    inline_tag("div", {class = "preview-background"}, ""),
    div({class = "preview-content"}, lines(content)),
}))

return div(
    {class = "place hover-on-touch"},
    tag("a", {href = var("id") .. ".html"}, lines(l)))
