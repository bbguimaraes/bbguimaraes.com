local description <const> = indented(format {
    [[The %s keeps teaching me about movement and change. Ever since my first visit (of many) to Genova, I wanted to explore the coast around it, the %s. This weekend, after seeing that the gulf of Tigullio is only about 30km away, and that spring weather had arrived with gusto, I did what any sensible man would: got myself a bicycle and departed the very next day.]],
    link {
        href = "https://bbguimaraes.com/places/genova.html",
        content = "city of Ianus",
    },
    inline_tag("i", {lang = "it"}, "riviera ligure"),
})

local content <const> = lines {
    par(format {
        [[
The %s keeps teaching me about movement and
change.  Ever since my first visit (of many) to Genova, I wanted to explore the
coast around it, the <i lang="it">riviera ligure</i>.  This weekend, after
seeing that the gulf of Tigullio is only about 30km away, and that spring
weather had arrived with gusto, I did what any sensible man would: got myself a
bicycle and departed the very next day.
]],
        link {
            href = "genova.html",
            content = "city of Ianus",
        },
    }),
    par [[
The trip amounted to about 40km, over two days:
]],
    ul {
        "25km: Genova – Recco",
        "10km: Rapallo – Portofino",
        "5km: Portofino – Santa Margherita Ligure",
    },
    par [[
(I arrived in Recco with no time, and neither my legs nor the brakes of the
bicycle were in condition, to face the trip across Monte Pollone to Rapallo as I
had originally planed, so I ended up making those final 10km by train)
]],
    par [[
Portofino is a tiny <i lang="it">comune</i>, with around 350 inhabitants.  It is
a natural harbor, its promontory providing protection from both sea and wind and
creating a calm pool of azure water, long used by fishermen before it became a
big touristic attraction, and a prominent position in the gulf for both its
lighthouse and castle.
]],
    par [[
The origin of its name is found in Pliny the Elder (the one who bravely died
during the eruption of <a href="vesuvius.html">Vesuvius</a>, again): <i
lang="la">Portus Delphíní</i>, from the Latin word which is the root of
“dolphin” in English.  <span lang="grc">Δελφίς</span> in turn comes from the
word for “womb”, <span lang="grc">δελφύς</span> (since it is an aquatic mammal).
The resemblance to the name of the famous temple — whose priestess prophesied
the wisdom of Socrates, the fate of Oedipus, etc. — is not accidental: it was an
ancient place of veneration of the Earth goddess Gaia, and legend says Apollo
turned into a dolphin to carry its priests from the island of Crete, who then
worshipped him as <span lang="grc">Απόλλων Δελφίνιος</span>.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "la"}, [[
Ac ne forte roges quo me duce, quo lare tuter:<br />
nullius addictus iurare in verba magistri,<br />
quo me cumque rapit tempestas, deferor hospes.
]]),
    par [[
And if you may ask who guides me, what place shelters me:<br />
I do not submit to swearing by anyone's precepts,<br />
and whither the tempest carries me off, I am borne a stranger.
]],
    quote_footer(
        "Quintus Horatius Flaccus",
        link {
            href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A2008.01.0539%3Abook%3D1%3Apoem%3D1",
            content = "Epistulae",
        },
        "I.I"),
}

local images <const> = {{
    path = "portofino/IMG_20250330_180752.jpg",
    text = [[
Monte Pollone and the promontory of Portofino from Bogliasco.
]],
}, {
    path = "portofino/IMG_20250330_161252.jpg",
    text = [[
Departing from Genova.
]],
}, {
    path = "portofino/IMG_20250330_170604.jpg",
    text = [[
First bath in Punta Vagno.
]],
}, {
    path = "portofino/IMG_20250315_164506.jpg",
    text = [[
Boccadasse.
]],
}, {
    path = "portofino/IMG_20250330_175540.jpg",
    text = [[
Ponte romano di Nervi.
]],
}, {
    path = "portofino/IMG_20250330_181255.jpg",
    text = [[
Train in Bogliasco.
]],
}, {
    path = "portofino/IMG_20250330_184253.jpg",
    text = [[
Recco.
]],
}, {
    path = "portofino/IMG_20250330_184414.jpg",
}, {
    path = "portofino/IMG_20250330_185000.jpg",
}, {
    path = "portofino/IMG_20250330_193749.jpg",
    text = [[
Rapallo at dusk.
]],
}, {
    path = "portofino/IMG_20250330_201921.jpg",
}, {
    path = "portofino/IMG_20250330_202826.jpg",
}, {
    path = "portofino/IMG_20250331_093302.jpg",
    text = [[
The promontory from Rapallo.
]],
}, {
    path = "portofino/IMG_20250331_100520.jpg",
    text = [[
Chiosco della musica.
]],
}, {
    path = "portofino/IMG_20250331_100454.jpg",
}, {
    path = "portofino/IMG_20250331_100419.jpg",
}, {
    path = "portofino/IMG_20250331_101256.jpg",
    text = [[
The port of Rapallo, towards La Spezia.
]],
}, {
    path = "portofino/IMG_20250331_103832.jpg",
    text = [[
First stop in Santa Margherita Ligure.
]],
}, {
    path = "portofino/IMG_20250331_105737.jpg",
    text = [[
The water color announces the imminent arrival.
]],
}, {
    path = "portofino/IMG_20250331_105812.jpg",
    text = [[
Turning back towards Rapallo.
]],
}, {
    path = "portofino/IMG_20250331_110018.jpg",
}, {
    path = "portofino/IMG_20250331_111053.jpg",
}, {
    path = "portofino/IMG_20250331_112814.jpg",
    text = [[
La Piazzetta.
]],
}, {
    path = "portofino/IMG_20250331_113500.jpg",
    text = [[
Portofino.
]],
}, {
    path = "portofino/IMG_20250331_114642.jpg",
    text = [[
Walking the park around Castello Brown.
]],
}, {
    path = "portofino/IMG_20250331_114942.jpg",
}, {
    path = "portofino/IMG_20250331_115037.jpg",
}, {
    path = "portofino/IMG_20250331_115339.jpg",
}, {
    path = "portofino/IMG_20250331_115617.jpg",
}, {
    path = "portofino/IMG_20250331_115831.jpg",
    text = [[
The Alps, always unmistakably visible from the Ligurian coast, on the other side
of the gulf.
]],
}, {
    path = "portofino/IMG_20250331_115843.jpg",
    text = [[
Faro di Portofino.
]],
}, {
    path = "portofino/IMG_20250331_122629.jpg",
    text = [[
How can one resist?
]],
}, {
    path = "portofino/IMG_20250331_130123.jpg",
}, {
    path = "portofino/IMG_20250331_130324.jpg",
}, {
    path = "portofino/IMG_20250331_130331.jpg",
}, {
    path = "portofino/IMG_20250331_130527.jpg",
}, {
    path = "portofino/IMG_20250331_131024.jpg",
}, {
    path = "portofino/IMG_20250401_233253.jpg",
    text = [[
Beautiful painting by local artist <a href="https://www.maraportofino.it">Mara
Sanguineti</a>.
]],
}, {
    path = "portofino/IMG_20250331_161138.jpg",
    text = [[
Saying goodbye from Santa Margherita Ligure, after another swim.
]],
}}

return {
    title = "Portofino",
    timestamp = { 1743446292, "2025-03-31" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/43028",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02jzNEnSU2MvYMyyyL176xsuShUkKdaW9DJAYAdCtt3ifZr2zg2n1mE5v1M4RtYX3el",
        instagram = "DH7BVhHI45C",
    },
}
