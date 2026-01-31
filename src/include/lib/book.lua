local id <const> = var "id"
local full <const> = var("full", false)
local title <const> = var "title"
local book_link <const> = var("link", false)
local author <const> = var("author", false)
local def_lang <const> = var("default_language")
local lang <const> = var("lang", false) or def_lang
local intro <const> = lang == def_lang and var("intro", false)

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

local content <const> = {}
table.insert(content, image {
    src = var("file_url")("lib", var "cover"),
    alt = "cover",
    class = "image book-cover",
})

table.insert(content, book_title(title, author))

if full then
    var_and("languages", function()
        table.insert(content, include("languages.lua") {})
    end)
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
    var_and("content", function(x)
        table.insert(content, x)
    end)
end

return div({class = "book"}, lines(content))
