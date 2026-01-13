local description <const> = indented(format {
    [[As many of the cities along the Tyrrhenian coast on the ancient via Appia, Formia was a favored place for Roman seaside villae — including one belonging to the stepfather of the emperor Augustus.  Its Greek name %s (%s in Latin, from a word for “harbor”) refers to its many ports and the mild maritime climate provided by its surroundings: the gulf of Gaeta and the monti Aurunci.  The remains of many of these villae and ports can still be seen all they from the city center to the rocky shore on the way to %s, with salient pieces of two-thousand-year-old mosaics coming out of the rock every now and then.]],
    inline_tag("span", {lang = "grc"}, "Όρμιαι"),
    inline_tag("span", {lang = "la"}, "Hormiae"),
    link {
        href = "https://www.openstreetmap.org/node/8390626221",
        content = "monte Scauri",
    },
})

local content <const> = lines {
    par(format {
        [[
As many of the cities along the Tyrrhenian coast on the ancient via Appia,
Formia was a favored place for Roman seaside villae — including one belonging to
the stepfather of the emperor Augustus.  Its Greek name <span
lang="grc">Όρμιαι</span> (<span lang="la">Hormiae</span> in Latin, from a word
for “harbor”) refers to its many ports and the mild maritime climate provided by
its surroundings: the gulf of Gaeta and the monti Aurunci.  The remains of many
of these villae and ports can still be seen all they from the city center to the
rocky shore on the way to
%s, with
salient pieces of two-thousand-year-old mosaics coming out of the rock every now
and then.
]],
        link {
            href = "https://www.openstreetmap.org/node/8390626221",
            content = "monte Scauri",
        },
    }),
    par [[
One of the most famous residents of Formiae was the illustrious <i
lang="la">novus homo</i> <a href="https://en.wikipedia.org/wiki/Cicero"
lang="la">Marcus Tulius Cicero</a>.  It was there, on via Appia in 43 A.D., that
he was assassinated by order of Marcus Antoninus, after criticizing both him and
Julius Caesar throughout the decadent period which led to the Empire and
admonishing Romans to return to the old Republican values — one of his most
famous phrases, <span lang="la">“O tempora, o mores”</span>, “O times!  O
customs!”, comes from this period.
]],
    par [[
For both his implacable resistance and eminence as a public citizen, Cicero
received the harshest punishment of all opponents of Antoninus: his severed head
and his hands were displayed in the Roman Forum as strong discouragement of
dissent.  The <a href="https://www.openstreetmap.org/way/159656918">monument</a>
housing his tomb lies on a stretch of the via Appia just outside of Formia now
named after him: <a href="https://www.openstreetmap.org/way/48503665"
lang="it">via Marco Tulio Cicerone</a>.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "la"}, [[
Imitatus est homo Romanus et consularis veterem illum Socratem, qui, cum omnium
sapientissimus esset sanctissimeque vixisset, ita in iudicio capitis pro se ipse
dixit, ut non supplex aut reus, sed magister, aut dominus videretur esse
iudicum.
]]),
    par [[
The Roman consul imitated Socrates of old, who, being the wisest and having
lived the most saintly life, spoke for himself while on trial for his life as to
be seen not supplicant as a defendant, but great as a master of the judges.
]],
    quote_footer(
        "Marcus Tulius Cicero",
        "De oratore",
        link {
            href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.02.0120%3Abook%3D1%3Asection%3D231",
            content = "I LIV 231",
        }),
}

local images <const> = {{
    path = "formia/0.jpg",
    text = [[
Sunset in Gaeta seen from the ruins of a Roman port.
]],
}, {
    path = "formia/1.jpg",
    text = [[
Monti Aurunci and the sea in Minturno.
]],
}, {
    path = "formia/2.jpg",
    text = [[
Monte Argento (right) and Monte Orlando (left).
]],
}, {
    path = "formia/3.jpg",
}, {
    path = "formia/4.jpg",
}, {
    path = "formia/5.jpg",
    text = [[
The monumental tomb of Cicero (under heavy restoration that day).
]],
}, {
    path = "formia/6.jpg",
}, {
    path = "formia/7.jpg",
    text = [[
As many of the locations in via Appia, Formia is on the path of
<a href="francigena.html">via Francigena</a>.
]],
}, {
    path = "formia/8.jpg",
    text = [[
<span lang="it">Città di Cicerone</span>.
]],
}, {
    path = "formia/9.jpg",
    text = [[
Street art by Apolo Torres.
]],
}, {
    path = "formia/10.jpg",
}, {
    path = "formia/11.jpg",
    text = [[
<a href="https://www.formiae.it/siti/cisternone-romano/" lang="it">Cisternone
romano</a>, one of the largest cisterns in the world, from the 1st century B.C.
]],
}, {
    path = "formia/12.jpg",
    text = [[
Old city center around the cistern.
]],
}, {
    path = "formia/13.jpg",
}, {
    path = "formia/14.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/1160023521">Torre di Castellone</a>.
]],
}, {
    path = "formia/15.jpg",
}, {
    path = "formia/16.jpg",
    text = [[
Via Francigena where it reaches the coast.
]],
}, {
    path = "formia/17.jpg",
    text = [[
Criptoportici right under
<a href="https://www.openstreetmap.org/relation/9192510" lang="it">Villa
Comunale Umberto I</a>, a park in the city center.
]],
}, {
    path = "formia/18.jpg",
}, {
    path = "formia/19.jpg",
    text = [[
Remains of the Roman port next to the portici.
]],
}, {
    path = "formia/20.jpg",
    text = [[
<a href="https://www.openstreetmap.org/node/8390626570">Villa Pellegrini</a>.
]],
}, {
    path = "formia/21.jpg",
    text = [[
The gulf of Gaeta from the Roman ruins of
<a href="https://www.openstreetmap.org/way/151095052">Cisterna Maggiore</a>.
]],
}, {
    path = "formia/22.jpg",
    text = [[
The villa from the other side.
]],
}, {
    path = "formia/23.jpg",
    text = [[
Gaeta from the ruins of a Roman port.
]],
}, {
    path = "formia/24.jpg",
    text = [[
I'll stop at nothing for a picture.
]],
}, {
    path = "formia/25.jpg",
}, {
    path = "formia/26.jpg",
}, {
    path = "formia/27.jpg",
    text = [[
Monti Aurunci from the port.
]],
}, {
    path = "formia/28.jpg",
    text = [[
One of the mosaics buried under the rocks.
]],
}, {
    path = "formia/29.jpg",
}, {
    path = "formia/30.jpg",
    text = [[
The sun begins to set in the gulf.
]],
}, {
    path = "formia/31.jpg",
}, {
    path = "formia/32.jpg",
}, {
    path = "formia/33.jpg",
    text = [[
Sunset behind the promontory of Gaeta.
]],
}, {
    path = "formia/34.mp4",
}}

return {
    title = "Formia",
    timestamp = { 1709164800, "2024-02-29" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/41192",
        mastodon = "113534704851590417",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02f6TUujAeoaWUZnNtspueitGmSAn6ic1Eo6gQdZbUQyq8mTVooA3XfA7XRRXkGZf4l",
        instagram = "DCuzDVuo-Iy",
    },
}
