local convert <const> = require "lib.convert"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local base_url <const> = var "base_url"
local include_path <const> = var "include_path"
local page_path <const> = var "page_path"
local file_path <const> = var "file_path"
local file_url <const> = var "file_url"

local DIR <const> = "pictures"
local DATA_DIR <const> = path.join("src", DIR, "data")
local PAGE <const> = include_path("places", "page.lua")
local PREVIEW <const> = include_path("places", "preview.lua")
local PAGE_ENV = {
    css = {"/main.css", "/gallery.css", "pictures.css"},
    base_url_sub = path.join(base_url, DIR),
    file_url = function(...) return file_url(DIR, ...) end,
}

local IMAGES <const> = path.set(file_path(DIR, "*/*.jpg"))

local cit0 <const> = blockquote(lines {
    text_tag("p", {lang = "grc"}, [[
εἰ γὰρ ἦν ὁ ὀφθαλμὸς ζῷον, ψυχὴ ἂν ἦν αὐτοῦ ἡ ὄψις·
]]),
    par [[
If the eye were an animal, vision would be its soul.
]],
    quote_footer(
        '<span lang="grc">Ἀριστοτέλης</span>',
        '<span lang="grc">Περὶ ψυχῆς</span>',
        link {
            href = "https://www.mikrosapoplous.gr/aristotle/psyxhs/2_01.html",
            content = "412β18",
        }),
        quote_footer(
            "Aristotle", "On the soul",
            link {
                href = "https://classics.mit.edu/Aristotle/soul.2.ii.html",
                content = "412b18",
            },
            "&nbsp;&nbsp;&nbsp;&nbsp;"),
        })

local cit1 <const> = blockquote(lines {
    text_tag("p", {lang = "grc"}, [[
τί δῆτα οἰόμεθα, εἴ τῳ γένοιτο αὐτὸ τὸ καλὸν ἰδεῖν εἰλικρινές, καθαρόν,
ἄμεικτον, ἀλλὰ μὴ ἀνάπλεων σαρκῶν τε ἀνθρωπίνων καὶ χρωμάτων καὶ ἄλλης πολλῆς
φλυαρίας θνητῆς[…] ἐνταῦθα αὐτῷ μοναχοῦ γενήσεται, […] τεκόντι δὲ ἀρετὴν ἀληθῆ
καὶ θρεψαμένῳ ὑπάρχει θεοφιλεῖ γενέσθαι, καὶ εἴπέρ τῳ ἄλλῳ ἀνθρώπων ἀθανάτῳ καὶ
ἐκείνῳ;
]]),
    par [[
But what if man had eyes to see true beauty — divine, pure, clear, unalloyed,
not clogged with the pollutions of mortality and all the colors and vanities of
human life?  […] In that communion only can he[…], bringing forth and nourishing
true virtue, become the friend of God and be immortal, if mortal man may.
]],
    quote_footer(
        '<span lang="grc">Πλάτων</span>',
        '<span lang="grc">Συμπόσιον</span>',
        link {
            href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.01.0173%3Atext%3DSym.%3Asection%3D211d",
            content = "211δ",
        }),
        quote_footer(
            "Plato", "Symposium",
            link {
                href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.01.0174%3Atext%3DSym.%3Asection%3D211d",
                content = "211d",
            },
            "&nbsp;&nbsp;&nbsp;&nbsp;"),
        })

local generate_images
local function process_item(file_name, t)
    t.id = file_name:gsub("%.lua$", ""):gsub("_", "-")
    generate_images(t.images)
    return t
end

local function generate_page(t)
    local file_name <const> = page_path(DIR, t.id) .. ".html"
    local f <close> = assert(io.open(file_name, "w"))
    generate.generate(f, PAGE, PAGE_ENV, t, {
        nav_path = {{".", "pictures"}, {nil, t.title}},
        url = path.join(base_url, "pictures", t.id .. ".html"),
    })
end

local render_without_links
local function generate_item(_, t)
    return generate.load(PREVIEW, PAGE_ENV, t, {
        content = render_without_links(t.content),
    })
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
    for _, x in ipairs(t) do
        generate_image(x.path, "_small", "512x512")
        generate_image(x.path, "_tiny", "128x87")
    end
end

function generate_image(src, suffix, size)
    local dst <const> =
        file_path(DIR, src:gsub("%.[^.]+$", suffix .. ".jpg"), nil)
    if not IMAGES[dst] then
        convert.generate_image(dst, file_path(DIR, src), size)
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
    title = "pictures",
    css = {"/main.css", "/gallery.css", "pictures.css"},
    body_class = "white-bg roman",
    main = lines {
        div({class = "w80"}, lines {
            include "nav.lua" {
                nav_path = {{nil, "pictures"}},
            },
        }),
        div({class = "header"}, lines {
            div({class = "w80 citations"}, lines {
                cit0,
                cit1,
                par [[
<a href="about.html">about this page</a>
]],
            }),
        }),
        hr(),
        main(
            {class = "gallery"},
            lines(util.imap(generate_item, files))),
    },
}
