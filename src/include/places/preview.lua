local path <const> = require "lib.path"
local util <const> = require "lib.util"

local file_url <const> = var "file_url"
local title <const> = var "title"

local content <const> = {}
local l <const> = {}

var_and("images", function(x)
    table.insert(
        content,
        div({class = "gallery"}, lines(util.imap(function(_, x)
            return image {
                alt = x.path,
                src = file_url(x.path:gsub("%.[^.]+$", "_tiny.jpg"), nil),
            }
        end, x))))
    if #x ~= 0 then
        table.insert(l, image {
            class = "main-img",
            alt = title,
            src = file_url(x[1].path:gsub("%.([^.]+)$", "_small.%1"), nil),
        })
    end
end)

var_and("content", function(x)
    table.insert(content, div({class = "description"}, x))
end)

table.insert(l, div({class = "gallery-title"}, lines {
    inline_tag("h2", nil, title),
    html(var("timestamp")[2]),
}))

table.insert(l, div({class = "preview"}, lines {
    div({class = "preview-content"}, lines(content)),
}))

return div(
    {class = "gallery-item gallery-shadow place hover-on-touch"},
    tag("a", {href = var("id") .. ".html"}, lines(l)))
