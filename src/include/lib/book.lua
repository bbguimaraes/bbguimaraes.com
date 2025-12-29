local id <const> = var "id"
local full <const> = var("full", false)
local title <const> = var "title"
local book_link <const> = var("link", false)
local author <const> = var("author", false)
local lang <const> = var("lang", "en")
local languages <const> = var("languages", false)
local intro <const> = lang == "en" and var("intro", false)
local text <const> = var "content"

local function book_title(title, author)
    local ret = inline_tag("i", nil, title)
    if book_link then
        ret = link { href = book_link, content = ret }
    end
    if author then
        ret = lines { concat { ret, "," }, html(author) }
    end
    if full then
        ret = tag("h1", {id = id}, ret)
    else
        ret = tag("h3", {id = id}, ret)
    end
    return ret
end

local function language_links()
    local ret <const> = {}
    for _, x in ipairs(languages) do
        if x == lang then
            table.insert(ret, inline_tag("b", nil, x))
        else
            local href = id
            if x == "en" then
                href = href .. ".html"
            else
                href = string.format("%s-%s.html", href, x)
            end
            table.insert(ret, link { href = href, content = x })
        end
    end
    return tag("p", {class = "languages"}, lines(ret))
end

local content <const> = {}
table.insert(content, image {
    src = "/files/lib/" .. var "cover",
    alt = "cover",
    class = "image book-cover",
})

if languages then
    table.insert(content, book_title(title[lang], author[lang]))
    if full then
        table.insert(content, language_links())
    end
else
    table.insert(content, book_title(title, author))
end

if full then
    table.insert(content,
        html(string.format("<p><i>%s</i></p>", var("timestamp")[2])))
end

if intro then
    table.insert(content, intro)
    if not full then
        table.insert(content, tag("p", nil, link {
            href = id .. ".html",
            content = "<i>continue reading...</i>",
        }))
    end
end

if full or not intro then
    if languages then
        table.insert(content, text[lang])
    else
        table.insert(content, text)
    end
end

return div({class = "book"}, lines(content))
