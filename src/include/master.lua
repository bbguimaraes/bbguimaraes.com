local ret <const> = {}
table.insert(ret, html([[
<!DOCTYPE HTML>
<html lang="]] .. var "lang" .. [[">
]]))
table.insert(ret, indent(1, include "head.lua" {}))

local body <const> = var("body", false)
local body_class <const> = (function()
    local ret <const> = {}
    var_and("body_class", function(x) table.insert(ret, x) end)
    var_and("body_class_extra", function(x) table.insert(ret, x) end)
    return table.concat(ret, " ")
end)()

if body then
    table.insert(ret, indent(1, body))
    table.insert(ret, "\n")
elseif body_class then
    table.insert(ret,
        indent(1, html(string.format('<body class="%s">\n', body_class))))
else
    table.insert(ret, indent(1, html "<body>\n"))
end

var_and("nav_path", function()
    table.insert(ret, indent(2, include "nav.lua" {}))
    table.insert(ret, "\n")
end)

var_and("main", function(main)
    table.insert(ret, indent(2, main))
end)

table.insert(ret, "\n")
table.insert(ret, html [[
    </body>
</html>
]])

return concat(ret)
