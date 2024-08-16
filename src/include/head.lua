local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local ret <const> = {}
table.insert(ret, html([[
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>]] ..  var "title" .. "</title>"))

for _, x in ipairs(var("css", {})) do
    table.insert(ret, html([[
    <link rel="stylesheet" type="text/css" href="]] .. x .. [[" />]]))
end
for _, x in ipairs(var("js", {})) do
    table.insert(ret, html([[
    <script type="text/javascript" src="]] .. x .. [[" defer></script>]]))
end

var_and("og", function(t)
    t = generate.load(path.join("src", "include", "og.lua"), t)
    table.insert(ret, indent(1, t))
end)

var_and("head_extra", function(extra)
    table.insert(ret, indent(1, extra))
end)

table.insert(ret, html [[
</head>
]])

return lines(ret)
