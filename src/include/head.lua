local ret <const> = {}

for _, x in ipairs(var("css", {})) do
    table.insert(ret, generic_tag("link", {
        {"rel", "stylesheet"}, {"type", "text/css"}, {"href", x},
    }))
end
for _, x in ipairs(var("js", {})) do
    table.insert(ret, generic_inline_tag("script", {
        {"type", "module"}, {"src", x},
    }, ""))
end

var_and("og", function(x) table.insert(ret, include("og.lua")(x)) end)
var_and("head_extra", function(x) table.insert(ret, x) end)

return tag("head", nil, lines {
    generic_tag("meta", {{"charset", "utf-8"}}),
    generic_tag("meta", {
        {"name", "viewport"},
        {"content", "width=device-width, initial-scale=1"},
    }),
    inline_tag("title", nil, var "title"),
    table.unpack(ret),
})
