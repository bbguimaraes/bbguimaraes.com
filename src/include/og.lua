local t <const> = {}

for _, x in ipairs{"type", "title", "image", "url"} do
    table.insert(t, property("og:" .. x, var("og_" .. x)))
end

for _, x in ipairs{"description", "video"} do
    var_and("og_" .. x, function(v)
        table.insert(t, property("og:" .. x, v))
    end)
end

return lines(t)
