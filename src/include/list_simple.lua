local l <const> = {}

var_and("header", function(x)
    table.insert(l, x)
end)

local title <const> = var("list_title", false) or var("title")
table.insert(l, inline_tag("h1", nil, title))

local desc <const> = var("description", false)
if desc then
    table.insert(l, desc)
end

for _, t in ipairs(var("sections")) do
    local title <const> = t.title
    if title then
        table.insert(l, title)
    end
    table.insert(l, ul(t.items))
end

return include "master.lua" {
    body_class = var_and("body_class", function(x)
        return x .. " w80"
    end) or "w80",
    main = main(nil, lines(l)),
}
