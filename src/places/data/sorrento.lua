local description <const> = [[Known to the Romans as Surrentum, from Greek Συρρεντόν, meaning “a confluence”, from the verb “συρρέω”.  A city protected by steep rock walls, with a single entrance where parts of the Greek walls and gate can still be seen, and by the waters of the gulf of Napoli.  I spent most of my time there (just over a day, unfortunately) walking Capo di Sorrento, and most of that in Bagni della Regina Giovanna, amazing Roman ruins from the 1st century AD, with its own natural swimming pool and port.]]

local content <const> = lines {
    par [[
Known to the Romans as Surrentum, from Greek Συρρεντόν, meaning “a confluence”,
from the verb “συρρέω”.  A city protected by steep rock walls, with a single
entrance where parts of the Greek walls and gate can still be seen, and by the
waters of the gulf of <a href="napoli.html">Napoli</a>.
]],
    par [[
I spent most of my time there (just over a day, unfortunately) walking Capo di
Sorrento, and most of that in Bagni della Regina Giovanna, amazing Roman ruins
from the 1st century AD, with its own natural swimming pool and port.
]],
}

local citation <const> = lines {
    par [[
Of all that is written, I love only what a person hath written with his blood.
Write with blood, and thou wilt find that blood is spirit.
]],
    quote_footer("Friedrich Nietzsche", "Thus spoke Zarathustra"),
}

local images <const> = {{
    path = "sorrento0.jpg",
    text = [[
Porto di Marina Piccola.
]],
}, {
    path = "sorrento1.jpg",
    text = [[
<a href="vesuvius.html">Vesuvius</a>, always visible in the gulf, here seen from
Marina Grande.
]],
}, {
    path = "sorrento2.jpg",
    text = [[
The walls of Sorrento.
]],
}, {
    path = "sorrento3.jpg",
    text = [[
Corso Italia.
]],
}, {
    path = "sorrento4.jpg",
    text = [[
Bagni della Regina Giovanna.
]],
}, {
    path = "sorrento5.jpg",
}, {
    path = "sorrento6.jpg",
}, {
    path = "sorrento7.jpg",
    text = [[
Top part of the ruins, with the Northern portion of the Monti Lattari in the
background.
]],
}, {
    path = "sorrento8.jpg",
}, {
    path = "sorrento9.jpg",
    text = [[
Natural swimming pool.
]],
}, {
    path = "sorrento10.jpg",
    text = [[
Unbelievably clear waters around the ruins.
]],
}, {
    path = "sorrento11.jpg",
    text = [[
Marina di Puolo.
]],
}, {
    path = "sorrento12.mp4",
    width = "640",
    text = [[
I've posted some pictures of extravagant meals I sometimes like to have when I'm
traveling, but for me nothing tastes better than some pane e formaggio while
sitting in the sun after a long walk on top of a wall surrounding the olive
trees in the orchard of the ruins of a 1st-century Roman villa and enjoying the
cool winter sea breeze and the view of the Sorrento coast and the gulf of
Napoli, with no one around except for the occasional seagull flying by.
]],
}}

return {
    id = "sorrento",
    title = "Sorrento",
    timestamp = {"1707177600", "2024-02-06"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/40620",
        mastodon = "112135335380898581",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0VjN8PThr3THhm52jbjUQxBH8qH9C2u3GHwmi3kbsjPmePsEMhpnNfWSgv8s6tFHGl",
        instagram = "C4yarYCKCgq",
    },
}
