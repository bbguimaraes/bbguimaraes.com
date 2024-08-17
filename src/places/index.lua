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
    },
}
