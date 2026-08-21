local generate <const> = require "lib.generate"

local t <const> = {}

for _, x in ipairs{"type", "title", "url"} do
    table.insert(t, property("og:" .. x, var(x)))
end

for _, x in ipairs{"description", "image", "video"} do
    var_and(x, function(v)
        v = generate.render(plain({"a", "span"}, v))
        table.insert(t, property("og:" .. x, v))
    end)
end

return lines(t)
