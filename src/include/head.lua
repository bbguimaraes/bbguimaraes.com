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

var_and("head_extra", function(extra)
    table.insert(ret, indent(1, extra))
end)

table.insert(ret, html [[
</head>
]])

return lines(ret)
