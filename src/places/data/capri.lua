local description <const> = [[I've been to many beautiful places in my life.  But none compares, at least in terms of pure natural beauty, to this piccola isola at the Southern end of the gulf of Napoli, a few kilometers away from the Sorrento peninsula.]]

local content <const> = lines {
    par [[
I've been to many beautiful places in my life.  But none compares, at least in
terms of pure natural beauty, to this piccola isola at the Southern end of the
gulf of Napoli, a few kilometers away from the Sorrento peninsula.
]],
    par [[
Capri occupies a relatively small space — it's about 6x3km in its longest spans
— but there's so much in it… Beaches with extremely clear waters of the typical
azure color of the gulf, mounts as high as 800m with peaks surrounded by clouds,
rocky limestone cliffs sculpted by sea water, bucolic small villages, remains of
Roman villae and ruins, trails through forests and hills connecting all of
these, beautiful art, land and aquatic wildlife, … it truly is a wonderful
place.  I initially spent a day there, but had to return for another, and will
certainly return more times in the future.
]],
    par [[
A warning: make sure your legs are in shape before you go.  I like to think I'm
reasonably fit and usually have to walk for a long, long time before getting to
a point where my legs just won't go another step, but that happened more than
once.  The island is mostly steep ascents, and if you decide to walk (and
really, why would you do anything else?), it's going to be tough.  But you can
see the reward you'll get here in these pictures.  This is a small initial
selection, much more to come later.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "grc"}, [[
καὶ ὅστις σε ἀγγαρεύσει μίλιον ἕν, ὕπαγε μετ’ αὐτοῦ δύο.
]]),
    text_tag("p", {lang = "la"}, [[
et quicumque te angariaverit mille passus, vade cum illo et alia duo.
]]),
    par [[
And whosoever shall compel thee to go a mile, go with him twain.
]],
    quote_footer(nil, "Matthew 5:41"),
}

local images <const> = {{
    path = "capri/0.jpg",
    text = [[
Faraglioni from belvedere Cannone.
]],
}, {
    path = "capri/1.jpg",
    text = [[
Capri from the shore of Ercolano.
]],
}, {
    path = "capri/2.jpg",
    text = [[
Porto di Marina Grande, monte Tiberio.
]],
}, {
    path = "capri/3.jpg",
    text = [[
<a href="monte-solaro.html">Monte Solaro</a>.
]],
}, {
    path = "capri/4.jpg",
    text = [[
Here you can swim among the ruins of a Roman port.
]],
}, {
    path = "capri/5.jpg",
    text = [[
From Piazzeta di Capri: <a href="monte-solaro.html">monte Solaro</a>, the gulf,
the island of Ischia and <a href="napoli.html">Napoli</a> faintly in the
distance.
]],
}, {
    path = "capri/6.jpg",
    text = [[
Marina Piccola from belvedere Cannone.
]],
}, {
    path = "capri/7.jpg",
    text = [[
Arco naturale.
]],
}, {
    path = "capri/8.jpg",
    text = [[
Sunset (a pity my camera did not capture how incandescent the bougainvillea —
“três-marias” — were).
]],
}, {
    path = "capri/9.jpg",
    text = [[
A sad farewell, with Ischia outlined by the sunset glow.
]],
}}

return {
    id = "capri",
    title = "Capri",
    timestamp = { 1706918400, "2024-02-03" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/2675353",
        mastodon = "112031407101254716",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0Hm7hu6rYQ3mvyRX3wdeSgeRmLCfB652wNpnMY9Ybmqw8w3XYdDMRTUBKDWVyTgHHl",
        instagram = "C4DKiTJKtK7",
    },
}
