local data_dir <const> = require "lib.data_dir"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local file_url <const> = var "file_url"

local DIR <const> = "music"
local ICON_PDF <const> = file_url(DIR, "pdf_icon.svg")
local ICON_MUSESCORE <const> = file_url(DIR, "musescore_icon.svg")

local function generate_index(k, v)
    local id <const> = "letter-" .. k
    if #v == 0 then
        return inline_tag("span", {id = id}, k)
    end
    return link {
        id = id,
        href = "#" .. k,
        content = k,
    }
end

local function generate_link(icon, title, alt, ...)
    local url = path.join(...)
    if not url:match("^%w+://") then
        url = file_url(DIR, url)
    end
    return link {
        href = url,
        target = "_blank",
        content = image {
            src = icon,
            title = title,
            alt = alt,
        },
    }
end

local function generate_score_link(...)
    return generate_link(ICON_PDF, "score", "PDF file icon", ...)
end

local function generate_source_link(...)
    return generate_link(ICON_MUSESCORE, "source", "MuseScore file icon", ...)
end

local function generate_item(_, t)
    local l <const> = {}
    if t.timestamp then
        table.insert(l, link {
            class = "score-title",
            href = url_escape(t.id .. ".html"),
            content = t.title,
        })
    else
        table.insert(l, inline_tag("span", {class = "score-title"}, t.title))
    end
    if t.author then
        table.insert(l, html(" – " .. t.author))
    end
    local scores <const> = t.scores
    if scores then
        if type(scores) == "table" then
            for _, x in ipairs(scores) do
                if path.ext(x) == "mscz" then
                    table.insert(l, generate_source_link(x))
                else
                    table.insert(l, generate_score_link(x))
                end
            end
        else
            local file_name <const> = t.file_name or t.id:gsub("-", "_")
            table.insert(l, generate_score_link(file_name .. ".pdf"))
            table.insert(l, generate_source_link(file_name .. ".mscz"))
        end
    end
    return tag("li", {id = t.id}, lines(l))
end

local function generate_letter(k, v)
    if #v == 0 then return end
    return lines {
        inline_tag("h2", {id = k}, k),
        tag("ul", nil, lines(util.imap(generate_item, v))),
    }
end

local d <const> = data_dir.new(var, DIR)
local files <const> = d:load()
local scores <const> = util.table_default_assign(function() return {} end)
local sort_by_id <const> = function(x, y) return x.id < y.id end

for _, x in ipairs(files) do
    if x.scores then
        util.insert_sorted(scores[x.id:sub(1, 1)], x, sort_by_id)
    end
end
for _, x in ipairs(
    assert(generate.load(
        path.join("src", DIR, "scores_list.lua")))
) do
    x.scores = true
    util.insert_sorted(scores[x.id:sub(1, 1)], x, sort_by_id)
end

local letters <const> = util.imap(
    function(_, x) return string.char(x) end,
    util.range(string.byte("a"), string.byte("z") + 1))
local index <const> = util.imap(
    function(_, x) return generate_index(x, scores[x]) end,
    letters)
local scores <const> = util.imap(
    function(_, x) return generate_letter(x, scores[x]) end,
    letters)

return include "master.lua" {
    title = "music – scores",
    css = {"/main.css", "music.css"},
    body_class_extra = "w80",
    main = lines {
        include "nav.lua" {
            nav_path = {{".", "music"}, {nil, "scores"}},
        },
        main(nil, lines {
            h1("scores"),
            div({class = "scores"}, lines {
                div({class = "index"}, lines {
                    image {
                        src = file_url(DIR, "scores_index.png"),
                        alt = "index background with music score",
                    },
                    table.unpack(index),
                }),
                div({class = "description"}, link {
                    href = "about.html#sheets",
                    content = "about this page",
                }),
                table.unpack(scores),
            }),
        }),
    },
}
