local convert <const> = require "lib.convert"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local include_path <const> = var "include_path"
local page_path <const> = var "page_path"
local file_path <const> = var "file_path"
local file_url <const> = var "file_url"

local DIR <const> = "places"
local DATA_DIR <const> = path.join("src", DIR, "data")
local PAGE <const> = include_path(DIR, "page.lua")
local PREVIEW <const> = include_path(DIR, "preview.lua")
local PAGE_ENV <const> = {
    base_url_sub = path.join(var("base_url"), DIR),
    file_url = function(...) return file_url(DIR, ...) end,
}

local IMAGES <const> = path.set(
    file_path(DIR, "*.jpg"),
    file_path(DIR, "*/*.jpg"))

local cit0 <const> = lines {
    par [[
Caelum, nón animum mútant, quí tráns mare currunt.
]],
    par [[
— Quintus Horatius Flaccus, Epistulae
]],
}

local cit0_en <const> = [[
Sky, not spirit, do they change, those who cross the sea.

— Quintus Horatius Flaccus, Epistles
]]

local cit1 <const> = [[
Ἀναχωρήσεις αὑτοῖς ζητοῦσιν ἀγροικίας καὶ αἰγιαλοὺς καὶ ὄρη, εἴωθας δὲ καὶ σὺ τὰ
τοιαῦτα μάλιστα ποθεῖν.  ὅλον δὲ τοῦτο ἰδιωτικώτατόν ἐστιν ἐξόν, ἧς ἂν ὥρας
ἐθελήσῃς, ἰδιωτικώτατόν ἐστιν, ἐξόν, ἧς ἂν ὥρας ἐθελήσῃς, εἰς ἑαυτὸν ἀναχωρεῖν.
οὐδαμοῦ γὰρ οὔτε ἡσυχιώτερον οὔτε ἀπραγμονέστερον ἄνθρωπος ἀναχωρεῖ ἢ εἰς τὴν
ἑαυτοῦ ψυχήν, μάλισθ᾽ ὅστις ἔχει ἔνδον τοιαῦτα, εἰς ἃ ἐγκύψας ἐν πάσῃ εὐμαρείᾳ
εὐθὺς γίνεται: τὴν δὲ εὐμάρειαν οὐδὲν ἄλλο λέγω ἢ εὐκοσμίαν.
]]

local cit1_en <const> = ([[
Men seek retreats for themselves, houses in the country, seashores, and
mountains; and thou too art wont to desire such things very much.  But this is
altogether a mark of the most common sort of men, for it is in thy power
whenever thou shalt choose to retire into thyself.  For nowhere either with more
quiet or more freedom from trouble does a man retire than into his own soul,
particularly when he has within him such thoughts that by looking into them he
is immediately in perfect tranquility; and I affirm that tranquility is nothing
else than the good ordering of the mind.]]):gsub("\n", " ") .. [[


— Marcus Aurelius, Meditations
]]

local generate_images
local function process_item(t)
    t.images = generate_images(t)
    return t
end

local function generate_page(t)
    local file_name <const> = page_path(DIR, t.id) .. ".html"
    local f <close> = assert(io.open(file_name, "w"))
    generate.generate(f, PAGE, PAGE_ENV, t)
end

local render_without_links
local function generate_item(_, t)
    local tt
    if t.content then
        tt = {content = render_without_links(t.content)}
    end
    return generate.load(PREVIEW, PAGE_ENV, t, tt)
end

function render_without_links(t)
    if not t then
        return
    end
    return generate.render(t)
        :gsub('<a%s+href="[^"]+"[^>]*>', "")
        :gsub("</a>", "")
end

local generate_image
function generate_images(t)
    local ret <const> = t.images
    if ret then
        for _, x in ipairs(ret) do
            generate_image(x, "_small", "512x384")
            generate_image(x, "_tiny", "128x87")
        end
    end
    return ret
end

function generate_image(t, suffix, size)
    local src <const> = t.path
    local dst <const> =
        file_path(DIR, src:gsub("%.[^.]+$", suffix .. ".jpg"), nil)
    if not IMAGES[dst] then
        convert.generate_image(dst, file_path(DIR, src), size, t.poster)
    end
end

local files <const> = {}
for x in path.each(DATA_DIR) do
    table.insert(files, process_item(generate.load(path.join(DATA_DIR, x))))
end
table.sort(files, function(x, y) return y.timestamp[1] < x.timestamp[1] end)

for _, x in ipairs(files) do
    generate_page(x)
end

return include "master.lua" {
    title = "places",
    css = {"/main.css", "places.css"},
    body_class = "no-margin white-bg roman",
    main = lines {
        div({class = "w80"}, include "nav.lua" {
            nav_path = {{nil, "places"}},
        }),
        div({class = "header"}, lines {
            link {
                href = file_url(DIR, "header.jpg"),
                content = image {
                    src = file_url(DIR, "header_cropped.jpg"),
                    alt = "Sunset behind the promontory of Gaeta",
                    title = "Sunset behind the promontory of Gaeta",
                },
            },
            div({class = "w80"}, lines {
                div({class=  "citations"}, lines {
                    generic_tag(
                        "blockquote",
                        {{"lang", "la"}, {"title", cit0_en}},
                        cit0),
                    blockquote(lines {
                        text_tag("p", {lang = "grc", title = cit1_en}, cit1),
                        "— Marcus Aurelius,",
                        inline_tag("span", {lang = "grc"}, "Τὰ εἰς ἑαυτόν"),
                    }),
                }),
                par [[
<a href="/blog/places.html">about this page</a>
]],
            }),
        }),
        main(
            {class = "places gallery"},
            lines(util.imap(generate_item, files))),
    },
}
