local description <const> = [[The Roman city of Minturnae, in the southern region of Lazio, was built in 312 B.C. on the site of the previous conquered ancient city of the same name, part of the Pentapoli Aurunca.  Its location, protected by the monti Aurunci to the north, golfo di Gaeta and mar Tirreno to the southwest, and the river Liris (now called Garigliano) to the southeast, and right on via Appia, the “regina viarum” (queen of roads, the main road connecting Rome to the southern end of the peninsula), made it a strategic point for a colony.]]

local content <const> = lines {
    par [[
The Roman city of Minturnae, in the southern region of Lazio, was built in 312
B.C. on the site of the previous conquered ancient city of the same name, part
of the Pentapoli Aurunca.  Its location, protected by the monti Aurunci to the
north, golfo di <a href="gaeta.html">Gaeta</a> and mar Tirreno to the southwest,
and the river Liris (now called Garigliano) to the southeast, and right on via
Appia, the “regina viarum” (queen of roads, the main road connecting Rome to the
southern end of the peninsula), made it a strategic point for a colony.
]],
    par [[
The ruins of the Roman city can be still be visited today (<a
href="minturnae.html">that's for another post</a>), but after the fall of the
Empire and the interruption of its great aqueduct by the Goths, it was
transferred to a fortified place on a nearby hill, and given the name of the old
city, today called “Minturno”.
]],
    par [[
The medieval city center consists of two parallel roads encircling the hill,
crossed by endless alleys (vichi) passing between and at places under the
buildings, all surrounded by beautiful churches, bars and restaurants, and a
medieval palace.
]],
    par [[
The modern part of the city spreads all the way to the sea and, together with
the neighboring Formia and <a href="gaeta.html">Gaeta</a>, is still a popular
summer destination on the beautiful Tyrrhenian coast, just as it was in Roman
times.
]],
}

local citation <const> = lines {
    par [[
man is by nature a political animal, and a man that is by nature and not merely
by fortune citiless is either low in the scale of humanity or above it
]],
    par [[
[…]
]],
    par [[
a man who is incapable of entering into partnership, or who is so
self-sufficing that he has no need to do so, is no part of a state, so that he
must be either a lower animal or a god
]],
    tag("footer", nil, lines {
        "— Ἀριστοτέλης,",
        tag("cite", nil, "Πολιτική"),
        "<br />",
        '<span class="hidden">— </span>Aristotle,',
        tag("cite", nil, "Politics"),
    }),
}

local images <const> = {{
    path = "minturno0.jpg",
    text = [[
Castrum Argentum, a Roman fortress on monte D'Argento, with the medieval
Minturno behind it.
]],
}, {
    path = "minturno1.jpg",
    text = [[
Corso Vittorio Emanuele III.
]],
}, {
    path = "minturno2.jpg",
    text = [[
One of the many vichi in the medieval center.
]],
}, {
    path = "minturno3.jpg",
    text = [[
Chiesa dell'Annunziata.
]],
}, {
    path = "minturno4.jpg",
    text = [[
Chiesa di San Francesco.
]],
}, {
    path = "minturno5.jpg",
    text = [[
Cattedrale di San Pietro Apostolo.
]],
}, {
    path = "minturno6.jpg",
}, {
    path = "minturno7.jpg",
}, {
    path = "minturno8.jpg",
}, {
    path = "minturno9.jpg",
    text = [[
Coast and the monte Aurunci.
]],
}, {
    path = "minturno10.jpg",
    text = [[
Monte D'Argento.
]],
}}

return {
    id = "minturno",
    title = "Minturno",
    timestamp = {"1709078401", "2024-02-28"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/41180",
        mastodon = "112372439083891368",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02T2yYBFfX2MfsNWQFCZiBEEunKiCg9UawBHt3k4LRBbXDk2eCcoB4tnzsv8twc393l",
        instagram = "C6eP17HKam6",
    },
}
