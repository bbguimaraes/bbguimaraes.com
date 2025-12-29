local path <const> = require "lib.path"
local util <const> = require "lib.util"

local FILES_URL <const> = path.join("", "files")

local base_url <const> = var "base_url"
local title <const> = var "title"

local l <const> = {}

var_and("image", function(x)
    x = util.copy(x)
    local src <const> = x.src
    x.class = "image"
    x.src = path.join(FILES_URL, (src:gsub("%.", "_small.")))
    table.insert(l, link {
        class = "hor-center",
        href = path.join(FILES_URL, src),
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
        url = path.join(base_url, "writing", var("id") .. ".html"),
    },
    title = title,
    css = {"/main.css", "writing.css"},
    body_class = "white-bg roman",
    main = lines {
        div({class = "w80"}, lines {
            include "nav.lua" {
                nav_path = {{".", "writing"}, {nil, title}},
            },
            main({class = "article"}, lines(l)),
        }),
    },
}
