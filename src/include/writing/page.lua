local path <const> = require "lib.path"
local util <const> = require "lib.util"

local DIR <const> = "writing"
local file_url <const> = var "file_url"
local base_url <const> = var "base_url"
local generator <const> = var "generator"
local title <const> = var "title"

local l <const> = {}
local og_image

var_and("image", function(x)
    local src <const> = x.src
    x = util.copy(x)
    x.class = "image"
    x.src = generator:generate_image(var, "small", src)
    og_image = base_url .. generator:file_url(var, "small", src)
    table.insert(l, link {
        class = "hor-center",
        href = file_url(src),
        content = image(x),
    })
end)

table.insert(l, tag("h1", {class = "article-title"}, title))
table.insert(l,
    inline_tag(
        "p", {class = "article-date"},
        inline_tag("i", nil, (var "timestamp")[2])))
table.insert(l, var "content")

return include "master.lua" {
    og = {
        type = "article",
        title = title,
        image = og_image,
        url = path.join(base_url, "writing", var("id") .. ".html"),
    },
    title = title,
    css = {"/main.css", "writing.css"},
    main = lines {
        div({class = "w80"}, lines {
            include "nav.lua" {
                nav_path = {{".", "writing"}, {nil, title}},
            },
            main({class = "article"}, lines(l)),
        }),
    },
}
