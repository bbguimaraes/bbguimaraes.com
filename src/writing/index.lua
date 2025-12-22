local convert <const> = require "lib.convert"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local include_path <const> = var "include_path"
local page_path <const> = var "page_path"
local file_url <const> = var "file_url"

local DIR <const> = "writing"
local DATA_DIR <const> = path.join("src", DIR, "data")
local FILES_URL <const> = file_url(DIR)
local FILES_DIR <const> = "bbguimaraes.com" .. FILES_URL
local PAGE <const> = include_path(DIR, "page.lua")

local IMAGES <const> = path.set(path.join(FILES_DIR, "*.jpg"))

local cit <const> = [[
Ἐν ἀρχῇ ἦν ὁ λόγος
]]

local cit_la <const> = [[
In principio erat Verbum
]]

local cit_en <const> = [[
In the beginning was the Word
]]

local generate_image
local function process_item(file_name, t)
    t.id = file_name:gsub("%.lua$", ""):gsub("_", "-")
    generate_image(t.image.src, "_small", "512x384")
    return t
end

local function generate_page(t)
    local file_name <const> = page_path(DIR, t.id) .. ".html"
    local f <close> = assert(io.open(file_name, "w"))
    generate.generate(f, PAGE, t)
end

local function generate_item(_, t)
    local href <const> = t.id .. ".html"
    return div({class = "article-preview"}, lines {
        link {
            href = href,
            content = text_tag(
                "h1", {class = "article-title"},
                t.languages and t.title.en or t.title),
        },
        inline_tag(
            "p", {class = "article-date"},
            inline_tag("i", nil, t.timestamp[2])),
        inline_tag("p", nil, t.description),
        inline_tag("p", nil, link {
            href = href,
            content = "continue reading…",
        }),
    })
end

function generate_image(src, suffix, size)
    local dst <const> = path.join(
        FILES_DIR, src:gsub("%.[^.]+$", suffix .. ".jpg"), nil)
    if not IMAGES[dst] then
        convert.generate_image(dst, path.join(FILES_DIR, src), size)
    end
end

local files <const> = {}
for x in path.each(DATA_DIR) do
    table.insert(files, process_item(x, generate.load(path.join(DATA_DIR, x))))
end
table.sort(files, function(x, y) return y.timestamp[1] < x.timestamp[1] end)

for _, x in ipairs(files) do
    generate_page(x)
end

return include "master.lua" {
    title = "writing",
    css = {"/main.css", "writing.css"},
    body_class = "roman white-bg",
    main = lines {
        div({class = "w80"}, lines {
            include "nav.lua" {
                nav_path = {{nil, "writing"}},
            },
            div({class = "header"}, lines {
                link {
                    href = file_url(DIR, "header.jpg"),
                    content = image {
                        class = "image",
                        src = file_url(DIR, "header_cropped.jpg"),
                        alt = "writing",
                    },
                },
                div({class = "citation"}, blockquote(lines {
                    par(lines {
                        text_tag("span", {lang = "grc"}, cit),
                        html "<br />",
                        text_tag("span", {lang = "la"}, cit_la),
                        html "<br />",
                        text_tag("span", nil, cit_en),
                    }),
                    quote_footer(
                        nil, '<span lang="grc">Εὐαγγέλιον κατὰ Ἰωάννην</span>',
                        link {
                            href = "https://www.biblegateway.com/passage/?search=john%201%3A1&amp;version=SBLGNT",
                            content = "1:1",
                        }),
                    quote_footer(
                        nil,
                        '<span lang="la">Evangelium secundum Ioannem</span>',
                        link {
                            href = "https://www.biblegateway.com/passage/?search=john%201%3A1&amp;version=VULGATE",
                            content = "1:1",
                        },
                        "&nbsp;&nbsp;&nbsp;&nbsp;"),
                    quote_footer(
                        nil, "John",
                        link {
                            href = "https://www.biblegateway.com/passage/?search=john%201%3A1&amp;version=KJV",
                            content = "1:1",
                        },
                        "&nbsp;&nbsp;&nbsp;&nbsp;"),
                })),
            }),
            table.unpack(util.imap(generate_item, files)),
        }),
    },
}
