local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local DIR <const> = path.join("src", "places", "data")
local FILES_URL <const> = path.join("", "files", "places")
local FILES_DIR <const> = "bbguimaraes.com" .. FILES_URL

local IMAGES <const> = {}

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

local function generate_item(_, t)
    local id <const> = t.id
    local l <const> = {}
    table.insert(l, image {
        class = "main-img",
        alt = t.title,
        src = path.join(FILES_URL, t.images[1].path:gsub("%.", "_small."), nil),
    })
    table.insert(l, div({class = "title"}, lines {
        inline_tag("h2", nil, t.title),
        html(t.timestamp[2]),
    }))
    return div(
        {class = "place"},
        tag("a", {href = id .. ".html"}, lines(l)))
end

local find_images
local generate_small_image
local function generate_images(t)
    local id <const> = t.id:gsub("-", "_")
    local ret <const> = t.images or find_images(id)
    for _, x in ipairs(ret) do
        generate_small_image(x, "_small", "512x384")
        generate_small_image(x, "_tiny", "128x87")
    end
    return ret
end

function find_images(id)
    local ret <const> = {}
    local pat <const> = path.join("", id .. ".*%.jpg$")
    for x in pairs(IMAGES) do
        if not x:match(pat) then
            goto continue
        end
        x = path.base(x)
        if x:match("_small.jpg$") or x:match("_tiny.jpg$") then
            goto continue
        end
        table.insert(ret, x)
        ::continue::
    end
    table.sort(ret)
    for k, v in pairs(ret) do
        ret[k] = {path = v}
    end
    return ret
end

function generate_small_image(t, suffix, size)
    local name = t.path
    local small <const> = path.join(
        FILES_DIR,
        name:gsub("%.[^.]+$", suffix .. ".jpg"), nil)
    if IMAGES[small] then
        return
    end
    name = path.join(FILES_DIR, name)
    if name:match("%.mp4$") then
        assert(os.execute(string.format(
            "ffmpeg "
                .. " -loglevel warning -ss %s -i %s"
                .. " -vf scale=%s -update 1 -vframes 1 %s",
            t.poster or "0:00", name, size, small)))
    else
        assert(os.execute(string.format(
            "convert -resize '%s>' %s %s", size, name, small)))
    end
end

for x in path.each(path.join(FILES_DIR, "*.jpg")) do
    IMAGES[x] = true
end

local files <const> = {}
for x in path.each(DIR) do
    local t <const> = generate.load(path.join(DIR, x))
    local id <const> = t.id
    t.images = generate_images(t)
    table.insert(files, t)
end
table.sort(files, function(x, y) return y.timestamp[1] < x.timestamp[1] end)

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
                href = "/files/places/header.jpg",
                content = image {
                    src = "/files/places/header_cropped.jpg",
                    alt = "Sunset behind the promontory of Gaeta",
                    title = "Sunset behind the promontory of Gaeta",
                },
            },
            div({class = "w80 citations"}, lines {
                generic_tag(
                    "blockquote", {{"lang", "la"}, {"title", cit0_en}}, cit0),
                blockquote(lines {
                    text_tag("p", {lang = "grc", title = cit1_en}, cit1),
                    "— Marcus Aurelius,",
                    inline_tag("span", {lang = "grc"}, "Τὰ εἰς ἑαυτόν"),
                }),
            }),
        }),
        main(nil, lines {
            div({class = "places gallery"}, lines {
                table.unpack(util.imap(generate_item, files))
            }),
        }),
    },
}
