local convert <const> = require "lib.convert"
local data_dir <const> = require "lib.data_dir"
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local file_path <const> = var "file_path"
local file_url <const> = var "file_url"
local base_url <const> = var "base_url"

local DIR <const> = "places"
local PREVIEW <const> = var("include_path")(DIR, "preview.lua")
local PAGE_ENV <const> = {
    css = {"/main.css", "/gallery.css", "places.css"},
    generator = convert.deferred_generator:new {
        path_cache = path.set(
            file_path(DIR, "*.jpg"),
            file_path(DIR, "*/*.jpg")),
        profiles = {
            small = {size = "512x384", suffix = "_small"},
            tiny = {size = "128x87", suffix = "_tiny"},
        },
    }
}

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

local d <const> = data_dir.new(var, DIR)
local files <const> = d:load()
util.ieach(process_item, files)
d:generate_pages(files, function(x)
    return PAGE_ENV, {
        nav_path = {{".", "places"}, {nil, x.title}},
        url = path.join(base_url, DIR, x.id .. ".html"),
    }
end)

return include "master.lua" {
    title = "places",
    css = {"/main.css", "/gallery.css", "places.css"},
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
