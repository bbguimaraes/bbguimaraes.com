local util <const> = require "lib.util"

local lang <const> = var "lang"

local title <const> = (function()
    local ret = var("short_title", false) or var("title")
    if var("languages", false) then
        ret = ret[lang]
    end
    return ret
end)()

local content <const> = {}
table.insert(content, include("lib/book.lua") { full = true })

if lang == "en" then
    local citations <const> = var("citations", false)
    if citations then
        table.insert(content, html "<hr />")
        table.insert(content, include "lib/citations.lua" {
            citations = citations,
        })
    end
end

return include "master.lua" {
    title = title,
    css = {"/main.css", "lib.css"},
    body_class = "w80 roman",
    nav_path = {{".", "lib"}, {nil, title}},
    main = lines(content),
}
