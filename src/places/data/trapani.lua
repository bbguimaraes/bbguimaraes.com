local description <const> = [[The trip across Sicily started at the western end, in the city of Trapani and the adjoining archipelago, <a href="https://bbguimaraes.com/places/favignana.html">Isole Egadi</a>. Before Greeks, Phoenicians, and Romans competed for dominance over Sicily — possibly even before the fall of Troy in the XII century B.C. — this region was inhabited by the <span lang="grc">Ελυμοι</span> (<i>Elymoi</i>, “Elymians”), who had built a city and a temple in the nearby mount <span lang="grc">Ἔρυξ</span> (<i>Éryx</i>, modern Erice). It even appears in Virgil's Aeneid, as the place where Aeneas burries his father Anchise before sailing to the penninsula.]]

local content <const> = lines {
    par [[
The trip across Sicily started at the western end, in the city of Trapani and
the adjoining archipelago, <a href="favignana.html">Isole Egadi</a>.  Before
Greeks, Phoenicians, and Romans competed for dominance over Sicily — possibly
even before the fall of Troy in the XII century B.C. — this region was
inhabited by the <span lang="grc">Ελυμοι</span> (<i>Elymoi</i>, “Elymians”),
who had built a city and a temple in the nearby mount <span
lang="grc">Ἔρυξ</span> (<i>Éryx</i>, modern Erice).  It even appears in
Virgil's Aeneid, as the place where Aeneas burries his father Anchise before
sailing to the penninsula.
]],
    par [[
Following a victory by the Carthaginians in 260 B.C., the mountainous city was
almost completely destroyed, and its inhabitants transferred to the nearby
coast, to the newly founded <span lang="grc">Δρέπανον</span> (<i>Drépanon</i>,
<span lang="la">Drepanum</span> in Latin).  The name was given due to the shape
of the promontory, evident when seen from mount Erice, from the Greek word for
“sickle”, <span lang="grc">δρεπάνη</span> (<i>drepáne</i>).  It persisted as one
of the last remaining Punic cities in the island, and was the location of a
Roman defeat in 249 B.C., until the <a href="favignana.html">Battle of the
Aegates</a> in the nearby archipelago secured their domination of Sicily.
]],
    par [[
With such an extensive history, many of the buildings in the historical center
(which is very unique, being contained entirely inside the promontory) date
back to the XII–XIV century.  Its cathedral, <span lang="it">Cattedrale di San
Lorenzo</span>, was built in 1102.  Millennia of war around this critical
channel at the heart of the Mediterranean have also left their mark:
fortifications from the Punic Wars to the World Wars are seen throughout the
city and the surrounding waters.  And it was here, in the XIX century, that
Giuseppe Garibaldi started the military campaing that would become the <span
lang="it">Risorgimento</span>.
]],
	par [[
Being the western end of Sicily (and so the south-west end of Italy), this
region has an even more pronounced Arab influence — Tunisia is just 160km away
on the other side of the channel.  One of the main influences is culinary (this
is Italy, after all), and many local dishes are an Italian–Arab mixture, as is
the local specialty, <span lang="it">cuscus di pesce</span> — which is
<em>fantastic</em>.
]],
    par [[
I am so traumatized by how awful most tourists behave, I end up not taking as
many pictures as I should.  That, in this case, combined with the frenetic pace
of trying to cross the entire island in three weeks, meant I unfortunatelly did
not manage to capture what the city is like very well, especially the old city
center.  Oh well, at least the pictures you get are pretty.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "la"}, [[
Fortis cadere cedere non potest
]]),
    par [[
The mighty may fall, but not yield
]],
    quote_footer("Latin proverb"),
}

local images <const> = {{
    path = "trapani/0.jpg",
    text = [[
Fontana della Venere Anadiomene.
]],
}, {
    path = "trapani/1.jpg",
    text = [[
First sight of Trapani: the port looking out west to the Mediterranean.
]],
}, {
    path = "trapani/2.jpg",
    text = [[
No better way to get acquainted with the local food. Also the beginning of my
acciughe addiction.
]],
}, {
    path = "trapani/3.jpg",
    text = [[
My morning walks along lungomare Dant Alighieri, on the north coast of the
promontory.
]],
}, {
    path = "trapani/4.jpg",
}, {
    path = "trapani/5.jpg",
}, {
    path = "trapani/6.jpg",
}, {
    path = "trapani/7.jpg",
}, {
    path = "trapani/8.jpg",
    text = [[
Via Torrearsa, the heart of the old city center.
]],
}, {
    path = "trapani/9.jpg",
    text = [[
If you are going to have your first breakfast in Sicily, better make it count.
]],
}, {
    path = "trapani/10.jpg",
    text = [[
Isola and Castello della Colombaia (through a very dirty boat window), on the
way to the <a href="favignana.lua">Isole Egadi</a>.
]],
}, {
    path = "trapani/11.jpg",
    text = [[
Monte Erice.
]],
}, {
    path = "trapani/12.jpg",
    text = [[
After the first stop in Levanzo.
]],
}, {
    path = "trapani/13.jpg",
    text = [[
From Torre di Ligny.
    ]],
}, {
    path = "trapani/14.jpg",
    text = [[
Cattedrale di San Lorenzo (1102).
]],
}, {
    path = "trapani/15.jpg",
    text = [[
<span lang="it">Fontana di Saturno</span> (1342), mythical founder of the city.
]],
}, {
    path = "trapani/16.jpg",
    text = [[
Cuscus di pesce.
]],
}, {
    path = "trapani/17.jpg",
    text = [[
The sea at Lido Paradiso.
]],
}, {
    path = "trapani/18.mp4",
    poster = "0:20",
}, {
    path = "trapani/19.jpg",
    text = [[
Plaque commemorating Giuseppe Garibaldi and the birth of Risorgimento in
Trapani in 1862.
]],
}, {
    path = "trapani/20.jpg",
    text = [[
Torre dell'Orologio (1596).
]],
}}

return {
    title = "Trapani",
    timestamp = { 1745366400, "2025-04-23" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "node/67253724",
        mastodon = "114845321482890749",
        facebook = "bruno.barcarolguimaraes/posts/pfbid034oymfBFmxbV2ECBhWZTvTHzTyaNu2uWw8TgLj5Bb9zAuRB4iYdAEmcxnsPveRpxgl",
        instagram = "DMCzAXJtSlD",
    },
}
