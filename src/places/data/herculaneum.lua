local description <const> = indented(format {
    [[At the foot of %s there existed, until the fated year of 79 AD, a Roman town named <i>Herculaneum</i>.  Legend says it was founded by the Greek hero %s (Heracles, known to the Romans as Hercules) himself while returning from Iberia after one of his twelve labors, and named after him.  While not as large as the nearby city of %s, its position at (what was then) the seaside made it a retreat for Roman nobility including, it is believed, Julius Caesar's father-in-law, Lucius Calpurnius Piso Caesonius, and its four thousand inhabitants enjoyed decent prosperity.]],
    link {
        href = "https://bbguimaraes.com/places/vesuvius.html",
        content = "mount Vesuvius",
    },
    inline_tag("span", {lang = "grc"}, "Ἡρακλῆς"),
    link {
        href = "https://bbguimaraes.com/places/pompeii.html",
        content = "Pompeii",
    },
})

local content <const> = lines {
    par(format {
        [[
At the foot of %s there existed, until
the fated year of 79 AD, a Roman town named <i>Herculaneum</i>.  Legend says it
was founded by the Greek hero <span lang="grc">Ἡρακλῆς</span> (Heracles, known
to the Romans as Hercules) himself while returning from Iberia after one of his
twelve labors, and named after him.  While not as large as the nearby city of
%s, its position at (what was then) the seaside
made it a retreat for Roman nobility including, it is believed, Julius Caesar's
father-in-law, Lucius Calpurnius Piso Caesonius, and its four thousand
inhabitants enjoyed decent prosperity.
]],
        link {
            href = "vesuvius.html",
            content = "mount Vesuvius",
        },
        link {
            href = "pompeii.html",
            content = "Pompeii",
        },
    }),
    par [[
That, of course, changed radically with the eruption.  At around 1AM heat waves
of up to 400°C reached the town, traveling at 160km/h, killing those who
remained instantly and burying the area under 20m of volcanic ash.
]],
    par [[
More than a millennium and a half would pass until the town was accidentally
rediscovered in 1709 during the excavations for the construction of a well.
Because of its position away from the wind direction in that particular day of
the eruption, its destruction was much reduced compared to other places around
the gulf such as <a href="pompeii.html">Pompeii</a>, making it unique in how
well-preserved its structures are, as well as the artifacts found inside them
(most of which are now on display in the <a href="https://mann-napoli.it">museo
archeologico nazionale di Napoli</a>).
]],
    par [[
The modern Italian city of Ercolano, renamed after the ancient Roman town it was
built (unknowingly) upon, is located 450m away from what is today the coast, and
the ancient ruins are now 4m below sea level.  Around ¾ still remain buried, as
efforts have lately been focused on preserving the rapidly-deteriorating parts
which have already been excavated.  This is also the reason why some of these
pictures are not at ideal and sometimes are even at awkward angles: many of the
houses, rooms, and spaces are not accessible so they can be better preserved and
renovated.
]],
    par [[
New discoveries are constantly made.  A recent example was the unearthing of
more than three hundred human skeletons in 1980 inside what were then the docks,
revealing the last moments of those who remained and waited to be rescued by
brave sailors, such as (and as is famously recounted by) <a
href="vesuvius.html">Pliny the Elder</a>.
]],
    par [[
Another recent excavation area, currently closed for the public, is <a
href="https://mann-napoli.it/en/villa-dei-papiri-2/">Villa dei Papiri</a>, named
after the many ancient texts found in its vast library (if you ever need further
evidence of the decadence of Western society — not that there is a short supply
— think about how nobility in Roman times went to the seaside to read Greek
texts about Epicurean philosophy).  <a
href="https://en.wikipedia.org/wiki/Getty_Villa">Getty Villa</a> in Los Angeles
is a reconstruction of the Herculaneum villa, illustrating how it and the other
houses looked like at its prime just before the eruption.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "la"}, [[
Soli omnium otiosi sunt qui sapientiae vacant, soli vivunt
]]),
    par [[
Only are at leisure those who dedicate their time to wisdom, only those live
]],
    quote_footer(
        "Lucius Annaeus Seneca",
        "De Brevitate Vitae",
        link {
            href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A2007.01.0016%3Abook%3D10%3Achapter%3D14%3Asection%3D1",
            content = "10.14.1",
        }),
}

local images <const> = {{
    path = "herculaneum/0.jpg",
    text = [[
The ruins of Herculaneum (what has so far been excavated) from above, just after
the entrance.
]],
}, {
    path = "herculaneum/1.jpg",
    text = [[
Entrance gate to the ruins.
]],
}, {
    path = "herculaneum/2.jpg",
    text = [[
View from the opposite side, showing the modern city in the distance, and just
how close Vesuvius is.  If you <a href="vesuvius.html">remember</a>, the
mountains to the left of the crater are actually the other end of the original
volcano, mount Somma, which was destroyed in that eruption.  Mount Vesuvius as
seen today is what survived from that catastrophic event.
]],
}, {
    path = "herculaneum/3.jpg",
    text = [[
A view of what would, in 79 AD, be the port.  Seen from the south-western
entrance bridge.
]],
}, {
    path = "herculaneum/4.jpg",
    text = [[
Great arches on top of the docks, where those who sought shelter from the
eruption waiting for rescue were found.
]],
}, {
    path = "herculaneum/5.jpg",
    text = [[
Boat recovered from the docks in 1982.  9m long, with its wood and tools (even
fishing nets) incredibly preserved.
]],
}, {
    path = "herculaneum/6.jpg",
}, {
    path = "herculaneum/7.jpg",
    text = [[
Lararium in Casa dello scheletro.
]],
}, {
    path = "herculaneum/8.jpg",
    text = [[
Sede degli Augustali, where many amazingly-preserved two-thousand-year-old
freschi can still be seen.
]],
}, {
    path = "herculaneum/9.jpg",
    text = [[
Entrance of Hercules into Olympus.
]],
}, {
    path = "herculaneum/10.jpg",
    text = [[
Contest between Hercules and the river Achelous for the hand of Deianira.
]],
}, {
    path = "herculaneum/11.jpg",
    text = [[
Atrium in Casa del salone nero.
]],
}, {
    path = "herculaneum/12.jpg",
    text = [[
The columns of the gymnasium.
]],
}, {
    path = "herculaneum/13.jpg",
    text = [[
Also seen here is the layer of sediments on which the modern city was built.
]],
}, {
    path = "herculaneum/14.jpg",
}, {
    path = "herculaneum/15.jpg",
    text = [[
Mosaic of Neptune and Amphitrite, Casa di Nettuno.
]],
}, {
    path = "herculaneum/16.jpg",
    text = [[
Casa del tramezzo di legno.
]],
}, {
    path = "herculaneum/17.jpg",
    text = [[
“Conoscono l'ozio soltanto coloro che dedicano il loro tempo alla sapienza; solo
essi vivono” — Seneca
]],
}, {
    path = "herculaneum/18.jpg",
    text = [[
Garden of Casa dei cervi.
]],
}, {
    path = "herculaneum/19.jpg",
    text = [[
Terrace, which at the time would have been directly over the waters of the gulf,
facing right between the islands of Ischia and Capri.
]],
}, {
    path = "herculaneum/20.jpg",
    text = [[
Excerpts from the letter of Pliny the Younger recounting his uncle's description
of the eruption.
]],
}, {
    path = "herculaneum/21.jpg",
}, {
    path = "herculaneum/22.jpg",
    text = [[
Original Latin text.
]],
}, {
    path = "herculaneum/23.jpg",
    text = [[
<i>Head of an amazon</i>, originally found in Villa dei papiri, now in the
antiquarium.
]],
}, {
    path = "herculaneum/24.jpg",
    text = [[
Gold coins.
    ]],
}, {
    path = "herculaneum/25.jpg",
    text = [[
Decumanus maximus from above.  The entire span seen here forms the south-western
wall of the Augusteum (a site dedicated to the cult of the emperor), which still
remains buried underneath the city.
]],
}, {
    path = "herculaneum/26.jpg",
    text = [[
Napoli from the shore of Ercolano.
]],
}, {
    path = "herculaneum/27.jpg",
    text = [[
Vesuvius from the center of the city (and with less clouds in front of it).
]],
}, {
    path = "herculaneum/28.jpg",
    text = [[
What has to be the greatest brand in the history of marketing.
]],
}, {
    path = "herculaneum/29.jpg",
    text = [[
The modern city of Ercolano.
]],
}}

return {
    title = "Herculaneum",
    timestamp = { 1708819200, "2024-02-25" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        {"website", "https://ercolano.beniculturali.it"},
        map = "way/351900172",
        mastodon = "112780081759739958",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0soYwjF64mBTb4e2v4PeZZbV8qkme3vxwuKKmWcFEax3hQta4omiCKm9pYdTHB3TXl",
        instagram = "C9Xn-S5q4_q",
    },
}
