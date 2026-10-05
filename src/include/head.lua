local util <const> = require "lib.util"

local url_with_content_hash <const> = var "url_with_content_hash"
local output <const> = var "OUTPUT"

local ret <const> = {}

for _, x in ipairs(var("css", {})) do
    table.insert(ret, generic_tag("link", {
        {"rel", "stylesheet"},
        {"type", "text/css"},
        {"href", url_with_content_hash(output, x)},
    }))
end
for _, x in ipairs(var("js", {})) do
    table.insert(ret, generic_inline_tag("script", {
        {"type", "module"},
        {"src", url_with_content_hash(output, x)},
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
    inline_tag("title", nil, table.concat(util.ifilter {
        var "title",
        var("title_suffix", false),
    }), ""),
    table.unpack(ret),
})
