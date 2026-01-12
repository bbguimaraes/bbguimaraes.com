local description <const> = indented(format {
    [[The equally small comune of Santi Cosma e Damiano is situated right next to %s, on the same hillside overlooking the Garigliano valley and the gulf of %s (but don't mix the two towns, or you'll upset the locals on both sides).  There is a stony road which climbs almost to the top of the hill, the highest point in the surrounding area, the village of %s and its 12th-century Romanesque watch tower, with a view of not only the valley and the vastness of the gulf, but stretching all the way to monte Cairo in the north, monti Aurunci in the west, Roccamonfina to the east, and going as far as %s and the island of Ischia in the south-east when the weather is sufficiently clear.]],
    link {
        href = "https://bbguimaraes.com/places/castelforte.html",
        content = "Castelforte",
    },
    link {
        href = "https://bbguimaraes.com/places/gaeta.html",
        content = "Gaeta",
    },
    link {
        href = "https://www.openstreetmap.org/node/1235709903",
        content = "Ventosa",
    },
    link {
        href = "https://bbguimaraes.com/places/vesuvius.html",
        content = "Vesuvius",
    },
})

local content <const> = lines {
    par(format {
        [[
The equally small comune of Santi Cosma e Damiano is situated right next to
%s, on the same hillside overlooking the
Garigliano valley and the gulf of %s (but don't mix
the two towns, or you'll upset the locals on both sides).  There is a stony road
which climbs almost to the top of the hill, the highest point in the surrounding
area, the village of
%s and its
12th-century Romanesque watch tower, with a view of not only the valley and the
vastness of the gulf, but stretching all the way to monte Cairo in the north,
monti Aurunci in the west, Roccamonfina to the east, and going as far as
%s and the island of Ischia in the south-east
when the weather is sufficiently clear.
]],
        link {
            href = "castelforte.html",
            content = "Castelforte",
        },
        link {
            href = "gaeta.html",
            content = "Gaeta",
        },
        link {
            href = "https://www.openstreetmap.org/node/1235709903",
            content = "Ventosa",
        },
        link {
            href = "vesuvius.html",
            content = "Vesuvius",
        },
    }),
    par [[
Having moved to a larger city now (<em>much</em> larger, but thankfully not
without a few places like this), to this day I miss being able to retreat to one
of those hilltops with just a fifteen-minute walk, away from everything and
everyone (except for meeting the occasional horses, goats, or other animals
along the trails), contemplating the sunrise or the sunset, or simply enjoying
the winter sun and the view of mountains, rivers, seas, forests which have seen
some of the largest empires on Earth come and go.
]],
}

local citation <const> = lines {
    par(lines {
        "I never was cut out to step and strut out<br />",
        "Give me the simple life<br />",
        "Just serve me tomatoes and mashed potatoes<br />",
        "Give me the simple life<br />",
    }),
    par(lines {
        "A cottage small is all I'm after<br />",
        "Not one that's spacious and wide<br />",
        "A home that's full of joy and laughter<br />",
        "The ones you love inside<br />",
    }),
    quote_footer(
        "Rube Bloom, Harry Ruby",
        link {
            href = "https://www.youtube.com/watch?v=XPeWp6uj6Yg",
            content = "Give me the simple life",
        }
    ),
}

local images <const> = {{
    path = "santi_cosma_e_damiano/0.jpg",
    text = [[
One of my favorite activities during this time: waking up before sunrise on
chilly winter mornings and walking on the hills next to Ventosa, admiring the
view of the gulf and the valley.
]],
}, {
    path = "santi_cosma_e_damiano/1.jpg",
    text = [[
The watch tower in Ventosa, built in the 12th century.
]],
}, {
    path = "santi_cosma_e_damiano/2.jpg",
    text = [[
An afternoon walk in San Lorenzo…
]],
}, {
    path = "santi_cosma_e_damiano/3.jpg",
    text = [[
… and then resting under a stone pine next to an abandoned house as the sunset
begins to paint the horizon and the mountains golden.
]],
}, {
    path = "santi_cosma_e_damiano/4.jpg",
    text = [[
Traffic jams in Santi Cosma.
]],
}, {
    path = "santi_cosma_e_damiano/5.jpg",
    text = [[
Stone roads leading to <a href="coreno-ausonio.html">monte Maio</a>.
]],
}, {
    path = "santi_cosma_e_damiano/6.jpg",
    text = [[
The sun rising behind monte Massico, with the church of Santi Cosma e Damiano on
the foreground.
]],
}, {
    path = "santi_cosma_e_damiano/7.jpg",
    text = [[
Sunlight at dawn among the old houses in the village of Ventosa.
]],
}, {
    path = "santi_cosma_e_damiano/8.jpg",
    text = [[
The lower regions of Santi Cosma immersed in mist at sunrise.
]],
}, {
    path = "santi_cosma_e_damiano/9.jpg",
    text = [[
<a href="https://instagram.com/reel/C2sOHUwq2dd">Sitting on top of the
world</a>.
]],
}, {
    path = "santi_cosma_e_damiano/10.jpg",
    text = [[
Too many beautiful views of the gulf.
]],
}, {
    path = "santi_cosma_e_damiano/11.jpg",
    text = [[
<a href="gaeta.html">Monte Orlando in Gaeta</a> and the Pontine Islands in the
far distance.
]],
}, {
    path = "santi_cosma_e_damiano/12.jpg",
    text = [[
A “luogo sacro di preghiera”…
]],
}, {
    path = "santi_cosma_e_damiano/13.jpg",
    text = [[
… in some ruins by the side of the road coming down from Ventosa.
]],
}, {
    path = "santi_cosma_e_damiano/14.jpg",
    text = [[
The old streets of Ventosa.
]],
}, {
    path = "santi_cosma_e_damiano/15.jpg",
    text = [[
Stairs down the hill from Ventosa to Santi Cosma…
]],
}, {
    path = "santi_cosma_e_damiano/16.jpg",
    text = [[
…along which there are many nice points where you can stop and enjoy views of
the valley.
]],
}}

return {
    title = "Santi Cosma e Damiano",
    timestamp = { 1706486400, "2024-01-29" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        mastodon = "112638371952187949",
        facebook = "bruno.barcarolguimaraes/posts/pfbid022e4Tsbx4u1XCczWB95JnZXiLEzjAoDfPgDRUnzzF8DBvvPEWaFTzbTqdsTvLRwcKl",
        instagram = "C8XJDz2KEvM",
        map = "relation/41207",
    },
}
