local util <const> = require "lib.util"

local function tag_link(_, x)
    return link {
        href = string.format("tags/%s.html", x:gsub(" ", "-")),
        content = x,
    }
end

return div({class = "tags"}, lines(util.imap(tag_link, var("tags"))))
