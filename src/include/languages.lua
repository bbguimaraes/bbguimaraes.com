local util <const> = require "lib.util"

local lang <const> = var "lang"
local id <const> = var "id"

local function f(_, x)
    if x == lang then
        return inline_tag("b", nil, x)
    end
    return link {
        href = (x == "en")
            and (id .. ".html")
            or string.format("%s-%s.html", id, x),
        content = x,
    }
end

return tag(
    "p", {class = "language-links"},
    lines(util.imap(f, var("languages"))))
