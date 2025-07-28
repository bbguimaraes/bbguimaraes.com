local description <const> = [[Castelforte is a small comune in the Garigliano valley.  It is where Suio (see previous post) is contained and together with it, as the name suggests, served as a protective and vigilant center for the entire valley, from the surrounding mountains down to the delta of the river in the gulf of Gaeta.
]]

local content <const> = lines {
    par [[
Castelforte is a small comune in the Garigliano valley.  It is where Suio (see
<a href="suio.html">previous post</a>) is contained and together with it, as the
name suggests, served as a protective and vigilant center for the entire valley,
from the surrounding mountains down to the delta of the river in the gulf of <a
href="gaeta.html">Gaeta</a>.
]],
    par [[
This is a region of immense beauty and I never got tired of walking around it,
on its small rural roads passing through rows and rows of olive trees, or along
the trails (and often outside of them) crossing the many hills and mountains
there.  In particular, in this period of winter, the sun rising from behind
monte Massico and setting in the gulf was a spectacle I watched — as you'll see
— as often as I could.
]],
}

local citation <const> = lines {
    par [[
ἐκεῖνος γὰρ ἔφη ὁρῶν αὐτὸν περὶ πάντων μᾶλλον διαλεγόμενον ἢ περὶ τῆς δίκης
εἰπεῖν: οὐκ ἐχρῆν μέντοι σκοπεῖν, ὦ Σώκρατες, καὶ ὅ τι ἀπολογήσῃ; τὸν δὲ τὸ μὲν
πρῶτον ἀποκρίνασθαι: οὐ γὰρ δοκῶ σοι ἀπολογεῖσθαι μελετῶν διαβεβιωκέναι; ἐπεὶ δ᾽
αὐτὸν ἐρέσθαι: πῶς; ὅτι οὐδὲν ἄδικον διαγεγένημαι ποιῶν: ἥνπερ νομίζω μελέτην
εἶναι καλλίστην ἀπολογίας.
]],
    par [[
For he stated that on seeing Socrates discussing any and every subject rather
than the trial, he had said: “Socrates, ought you not to be giving some thought
to what defence you are going to make?”.  That Socrates had at first replied,
“Why, do I not seem to you to have spent my whole life in preparing to defend
myself?”.  Then when he asked, 'How so?” he had said, “Because all my life I
have been guiltless of wrong-doing; and that I consider the finest preparation
for a defence”.
]],
    tag("footer", nil, lines {
        "— Ξενοφων,",
        tag("cite", nil, "Ἀπολογία Σωκράτους"),
        "2",
        "<br />",
        '<span class="hidden">— </span>Xenophon,',
        tag("cite", nil, "Apology of Socrates"),
        "2",
        "<br />",
    }),
}

local images <const> = {{
    path = "castelforte0.jpg",
    text = [[
Sunrise illuminating the misty valley, Castelforte in the middle, <a
href="santi-cosma-e-damiano.html">Santi Cosma e Damiano</a> below.
]],
}, {
    path = "castelforte1.jpg",
    text = [[
Chiesa di San Giovanni Battista.
]],
}, {
    path = "castelforte2.jpg",
    text = [[
Sunset from the church.
]],
}, {
    path = "castelforte3.jpg",
    text = [[
Again.
]],
}, {
    path = "castelforte4.jpg",
    text = [[
And again.
]],
}, {
    path = "castelforte5.jpg",
    text = [[
Old city center from one of the roads.
]],
}, {
    path = "castelforte6.jpg",
    text = [[
The valley from one of the surrounding mountains, immersed in mist at sunset
(the peak in the far distance is monte Epomeo in the island of Ischia, some 64km
away).
]],
}, {
    path = "castelforte7.jpg",
    text = [[
Capre.
]],
}, {
    path = "castelforte8.jpg",
    text = [[
One of the many olive plantations at dusk.
]],
}}

return {
    id = "castelforte",
    title = "Castelforte",
    timestamp = {"1706054401", "2024-01-24"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/41229",
        mastodon = "112444037168541317",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02NpZEVvLHuFoxDpyjPPHodDiX1dgR9Rq1MC7Gy5jZbArXuaVsiS17jHwRbNsMhpDel",
        instagram = "C6-yTH5KPGO",
    },
}
