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
    par [[
— Matthew 27:51
]],
}

local images <const> = {{
    path = "gaeta0.jpg",
    text = [[
Falesia della Montagna Spaccata, seen from above from a trail in Parco Urbano
Monte Orlando.
]],
}, {
    path = "gaeta1.jpg",
    text = [[
The top of Cattedrale dei Santi Erasmo e Marciano e di Santa Maria Assunta and
its campanile, with the gulf, the city of Formia, and the Monti Aurunci in the
background.
]],
}, {
    path = "gaeta2.jpg",
}, {
    path = "gaeta3.jpg",
}, {
    path = "gaeta4.jpg",
}, {
    path = "gaeta5.jpg",
}, {
    path = "gaeta6.jpg",
    text = [[
Tempio di San Francesco, founded by Francesco d'Assisi in 1222 during his stay
in Gaeta.
]],
}, {
    path = "gaeta7.jpg",
    text = [[
Statue on the stairs to the Tempio, “Allegoria della Religione” (1858), Luigi
Persico.
]],
}, {
    path = "gaeta8.jpg",
    text = [[
Castello Angioino-Aragonese seen from the Western cliffs of Mount Orlando.
]],
}, {
    path = "gaeta9.jpg",
}, {
    path = "gaeta10.jpg",
}, {
    path = "gaeta11.jpg",
}, {
    path = "gaeta12.jpg",
    text = [[
Grotta del Turco: a fantastic grotto under Mount Orlando, a historic hiding
place for Saracen pirates.
]],
}, {
    path = "gaeta13.mp4",
    width = "640",
}, {
    path = "gaeta14.jpg",
    text = [[
The cleft of Montagna Spaccata, seen from the Santuario della Santissima
Trinità, an XI-century sanctuary founded by benedictine monks.
]],
}, {
    path = "gaeta15.mp4",
    height = "384",
}, {
    path = "gaeta16.jpg",
    text = [[
Spiaggia di Serapo.
]],
}, {
    path = "gaeta17.jpg",
    text = [[
Votapiatto di calamarelle, a typical dish from Gaeta.
]],
}, {
    path = "gaeta18.jpg",
    text = [[
Sunset in the gulf and the Monti Aurunci.
]],
}}

return {
    id = "gaeta",
    title = "Gaeta",
    timestamp = {"1706659200", "2024-01-31"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/41173",
        mastodon = "111864602279531402",
        facebook = "pfbid04jpVrgkKdc5LwDeLXmENCsmnp9TwN7ALqhLX4phD84v1WyDPkoGMpuTBc8EPgQeHl",
        instagram = "C23S-8rKuIm",
    },
}
