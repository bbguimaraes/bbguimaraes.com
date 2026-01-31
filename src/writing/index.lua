local convert <const> = require "lib.convert"
local data_dir <const> = require "lib.data_dir"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local def_lang <const> = var "default_language"
local file_path <const> = var "file_path"
local file_url <const> = var "file_url"

local DIR <const> = "writing"
local base_url <const> = var "base_url"
local header_cropped <const> = file_url(DIR, "header_cropped.jpg")
local PAGE_ENV = {
    generator = convert.deferred_generator:new {
        path_cache = path.set(file_path(DIR, "*.jpg")),
        profiles = {
            small = {size = "512x384", suffix = "_small"},
        },
    }
}

local cit <const> = [[
Ἐν ἀρχῇ ἦν ὁ λόγος
]]

local cit_la <const> = [[
In principio erat Verbum
]]

local cit_en <const> = [[
In the beginning was the Word
]]

local function process_item(_, t)
    t.image.src = path.join(DIR, t.image.src)
end

local function generate_item(_, t)
    local href <const> = t.id .. ".html"
    return div({class = "article-preview"}, lines {
        link {
            href = href,
            content = text_tag(
                "h1", {class = "article-title"},
                t.languages and t.title[def_lang] or t.title),
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

local d <const> = data_dir.new(var, DIR)
local files <const> = d:load()
util.ieach(process_item, files)
d:generate_pages(files, PAGE_ENV)

return include "master.lua" {
    title = "writing",
    og = {
        type = "website",
        title = DIR,
        image = base_url .. header_cropped,
        url = path.join(base_url, DIR),
    },
    css = {"/main.css", "writing.css"},
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
                        src = header_cropped,
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
