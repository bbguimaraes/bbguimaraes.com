local convert <const> = require "lib.convert"
local data_dir <const> = require "lib.data_dir"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local file_path <const> = var "file_path"
local file_url <const> = var "file_url"
local base_url <const> = var "base_url"

local DIR <const> = "pictures"
local PREVIEW <const> = var("include_path")("places", "preview.lua")
local PAGE_ENV = {
    css = {"/main.css", "/gallery.css", "pictures.css"},
    generator = convert.deferred_generator:new {
        path_cache = path.set(file_path(DIR, "*/*.jpg")),
        profiles = {
            small = {size = "512x512", suffix = "_small"},
            tiny = {size = "128x87", suffix = "_tiny"},
        },
    }
}

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

local function process_item(_, t)
    if t.images then
        for _, x in ipairs(t.images) do
            x.alt = x.path
            x.path = path.join(DIR, x.path)
        end
    end
end

local render_without_links
local function generate_item(_, t)
    return generate.load(PREVIEW, PAGE_ENV, t, {
        content = render_without_links(t.description),
    })
end

function render_without_links(t)
    if not t then
        return
    end
    if type(t) == "string" then
        return t
    end
    return generate.render(t)
        :gsub('<a%s+href="[^"]+"[^>]*>', "")
        :gsub("</a>", "")
end

local d <const> = data_dir.new(
    var, DIR, var("include_path")("places", "page.lua"))
local files <const> = d:load()
util.ieach(process_item, files)
d:generate_pages(files, function(x)
    return PAGE_ENV, {
        nav_path = {{".", "pictures"}, {nil, x.title}},
        url = path.join(base_url, DIR, x.id .. ".html"),
    }
end)

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
