local description <const> = [[After crossing via Valle di Suio, next to the road which follows the Garigliano river, in the comune of Sant'Andrea del Garigliano, almost in Frosinone, just before the end of the province of Latina, there is a magical place, hidden among the trees that surround the river margins.]]

local content <const> = lines {
    par [[
After crossing via Valle di <a href="suio.html">Suio</a>, next to the road which
follows the Garigliano river, in the comune of Sant'Andrea del Garigliano,
almost in Frosinone, just before the end of the province of Latina, there is a
magical place, hidden among the trees that surround the river margins.
]],
    par [[
A fountain of sulphur-rich mineral water springs from a large vertical rock and
forms a small pool of almost-transparent azure color, which then runs to the
river and joins it on its way down the valley to the gulf of <a
href="gaeta.html">Gaeta</a> in the Tyrrhenian Sea.
]],
    par [[
You can find pictures of what it looks like in summer; in this particular bright
winter day, the fountain was not running, but the icy waters, the trees without
their foliage, the nubilous weather, all made for an equally fantastical
spectacle.
]],
    par [[
(there are no tricks in these pictures: this is really what this place looks
like — there are none in the ones I post, but especially in these they would not
be necessary)
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "he", dir = "rtl"}, [[
יִרְאַת יְהוָה, רֵאשִׁית דָּעַת; חָכְמָה וּמוּסָר, אֱוִילִים בָּזוּ.
]]),
    par [[
The fear of the LORD is the beginning of knowledge: but fools despise wisdom and
instruction.
]],
    tag("footer", nil, lines {
        "—",
        tag("cite", nil, "Proverbs 1:7"),
        "<br />",
        '<span class="hidden">— </span>Solomon the son of David,',
        "<br />",
        '<span class="hidden">— </span>king of Israel',
    }),
}

return {
    id = "salomone",
    title = "Fonte di Salomone, Sant'Andrea del Garigliano",
    timestamp = {"1707436800", "2024-02-09"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "node/2841350574",
        mastodon = "112260675638901830",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02dNKXaG1a5RjydbBdwAJsLBmDQvXR6H3S7SXuj9tv5qf6Yugwxj4kjixG7bUfkBvsl",
        instagram = "C5qqpPqqAX3",
    },
}
