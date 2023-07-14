local toc <const> = {}
local l <const> = {}

table.insert(l, h2_link { "citations", "citations" })

for _, x in ipairs(var "citations") do
    local id <const> = x.id
    local source <const>, title, text = x.source, x.title, x.content
    if title then
        table.insert(toc, link {
            href = "#" .. id,
            content = string.format("%s &ndash; %s", source, title),
        })
    end
    if #text == 2 then
        text = lines {
            tag("blockquote", {class = "citation-en"}, text[1]),
            tag("blockquote", {class = "citation-el", lang = "grc"}, text[2]),
        }
    end
    local ret <const> = {}
    if title then
        title = string.format("%s &ndash; %s", source, title)
        table.insert(l, html("<hr />"))
    else
        title = source
    end
    table.insert(l, inline_tag("p", nil, link {
        name = id,
        href = "#" .. id,
        content = title,
    }))
    table.insert(l, div({class = "citation"}, text))
end

table.insert(l, 2, ul(toc))
return div({class = "citations"}, lines(l))
