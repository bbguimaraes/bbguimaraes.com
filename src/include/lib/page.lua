local util <const> = require "lib.util"

local lang <const> = var "lang"
local title <const> = var("short_title", false) or var("title")

local content <const> = {}
table.insert(content, include("lib/book.lua") { full = true })

if lang == var("default_language") then
    local citations <const> = var("citations", false)
    if citations then
        table.insert(content, hr())
        table.insert(content, include "lib/citations.lua" {
            citations = citations,
        })
    end
end

return include "master.lua" {
    title = title,
    css = {"/main.css", "lib.css"},
    body_class_extra = "w80",
    nav_path = {{".", "lib"}, {nil, title}},
    main = lines(content),
}
