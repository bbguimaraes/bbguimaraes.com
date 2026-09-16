local description <const> = [[Gaeta, a coastal city in the Riviera d'Ulisse, in the Southern end of Lazio, built on the tip of Torre di Orlando, a promontory formed at the feet of the Monti Aurunci.  Aeneas, in Virgil's Aeneid, buries his wet-nurse, Καιήτη, in this place while sailing the Lazio, giving the city its name.]]

local content <const> = lines {
    par [[
Gaeta, a coastal city in the Riviera d'Ulisse, in the Southern end of Lazio,
built on the tip of Torre di Orlando, a promontory formed at the feet of the
Monti Aurunci.  Aeneas, in Virgil's Aeneid, buries his wet-nurse, Καιήτη, in
this place while sailing the Lazio, giving the city its name.
]],
    par [[
Human settlements go as far as the XII-XIII centuries B.C., first inhabited by
the Aurunci, then by the Romans, when it was a common destination of emperors
and the nobility, with its position on the via Appia, one of the main imperial
roads, connecting Rome to Brundisium in the South.  It was also a strategic
location in the Risorgimento and the Second World War.
]],
    text_tag("p", {lang = "pt"}, [[
Com uma parceria inesperada para trilhas, <a
href="https://instagram.com/maiconferro_tattoo">@maiconferro_tattoo</a>.
]]),
}

local citation <const> = lines {
    text_tag("p", {lang = "grc"}, [[
καὶ ἰδοὺ τὸ καταπέτασμα τοῦ ναοῦ ἐσχίσθη ἀπ’ ἄνωθεν ἕως κάτω εἰς δύο, καὶ ἡ γῆ
ἐσείσθη, καὶ αἱ πέτραι ἐσχίσθησαν
]]),
    text_tag("p", {lang = "la"}, [[
Et ecce velum templi scissum est in duas partes a summo usque deorsum: et terra
mota est, et petrae scissae sunt
]]),
    par [[
And, behold, the veil of the temple was rent in twain from the top to the
bottom; and the earth did quake, and the rocks rent
]],
    quote_footer(nil, "Matthew 27:51"),
}

local images <const> = {{
    path = "gaeta/IMG_20240131_110724.jpg",
    text = [[
Falesia della Montagna Spaccata, seen from above from a trail in Parco Urbano
Monte Orlando.
]],
}, {
    path = "gaeta/IMG_20240131_091748.jpg",
    text = [[
The top of Cattedrale dei Santi Erasmo e Marciano e di Santa Maria Assunta and
its campanile, with the gulf, the city of Formia, and the Monti Aurunci in the
background.
]],
}, {
    path = "gaeta/IMG_20240131_091318.jpg",
}, {
    path = "gaeta/IMG_20240131_093639.jpg",
}, {
    path = "gaeta/IMG_20240131_092933.jpg",
}, {
    path = "gaeta/IMG_20240131_093237.jpg",
}, {
    path = "gaeta/IMG_20240131_094131.jpg",
    text = [[
Tempio di San Francesco, founded by Francesco d'Assisi in 1222 during his stay
in Gaeta.
]],
}, {
    path = "gaeta/IMG_20240131_094243.jpg",
    text = [[
Statue on the stairs to the Tempio, “Allegoria della Religione” (1858), Luigi
Persico.
]],
}, {
    path = "gaeta/IMG_20240131_103526.jpg",
    text = [[
Castello Angioino-Aragonese seen from the Western cliffs of Mount Orlando.
]],
}, {
    path = "gaeta/IMG_20240131_111508.jpg",
}, {
    path = "gaeta/IMG_20240131_111225.jpg",
}, {
    path = "gaeta/IMG_20240131_111238.jpg",
}, {
    path = "gaeta/IMG_20240131_113913.jpg",
    text = [[
Grotta del Turco: a fantastic grotto under Mount Orlando, a historic hiding
place for Saracen pirates.
]],
}, {
    path = "gaeta/VID_20240131_113043.mp4",
    width = "640",
}, {
    path = "gaeta/IMG_20240131_114813.jpg",
    text = [[
The cleft of Montagna Spaccata, seen from the Santuario della Santissima
Trinità, an XI-century sanctuary founded by benedictine monks.
]],
}, {
    path = "gaeta/VID_20240131_114718.mp4",
    height = "384",
}, {
    path = "gaeta/IMG_20240131_120106.jpg",
    text = [[
Spiaggia di Serapo.
]],
}, {
    path = "gaeta/IMG_20240131_140432.jpg",
    text = [[
Votapiatto di calamarelle, a typical dish from Gaeta.
]],
}, {
    path = "gaeta/IMG_20240131_164452.jpg",
    text = [[
Sunset in the gulf and the Monti Aurunci.
]],
}}

return {
    title = "Gaeta",
    timestamp = { 1706659200, "2024-01-31" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/41173",
        facebook = "bruno.barcarolguimaraes/posts/pfbid04jpVrgkKdc5LwDeLXmENCsmnp9TwN7ALqhLX4phD84v1WyDPkoGMpuTBc8EPgQeHl",
        instagram = "C23S-8rKuIm",
    },
}
