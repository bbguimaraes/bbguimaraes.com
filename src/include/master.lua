local util <const> = require "lib.util"

return lines {
    doctype,
    tag("html", {lang = var("lang", "en")}, lines {
        include "head.lua" {},
        var_or("body", function()
            local class <const> = table.concat({
                var("body_class", false) or nil,
                var("body_class_extra", false) or nil,
            }, " ")
            return tag("body", {class = class}, lines(util.ifilter {
                var_and("nav_path", function() return include "nav.lua" {} end)
                    or false,
                var("main", false),
            }))
        end),
    }),
    "",
}
