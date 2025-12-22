local description <const> = [[Seen from <span lang="it">Torino</span>, Italy, behind <span lang="it">Collina di Superga</span> and <span lang="it">Chiesa della Gran Madre di Dio</span>, from <span lang="it">Lungo Po Armando Diaz</span> across <span lang="it">Ponte Vittorio Emanuele</span> I and the river Po.]]

local content <const> = lines {
    par [[
Seen from <span lang="it">Torino</span>, Italy, behind <span lang="it">Collina
di Superga</span> and <span lang="it">Chiesa della Gran Madre di Dio</span>,
from <span lang="it">Lungo Po Armando Diaz</span> across <span lang="it">Ponte
Vittorio Emanuele</span> I and the river Po.
]],
    par [[
Italy was a priviledged position on the planet to observe this particular
eclipse.  The moon rose at 20:30, dark as the night.  A few minutes later, when
it was still touching the top of the hill, a red strip started to grow from the
southwest.  As it grew brighter and towards white, the entire surface turned
bright red, then slowly faded to the usual white.  While it left the Earth's
umbra, the craters on the surface could be seen with the naked eye.
]],
}

local images <const> = {{
    path = "eclipse_2025/IMG_20250907_221531.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_203848.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_204807.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_205847.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_213857.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_214057.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_214638.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_215559.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_220258.jpg",
}, {
    path = "eclipse_2025/IMG_20250907_221530.jpg",
}}

local citation <const> = lines {
    text_tag("p", {lang = "fr"}, [[
Je me demande si les étoiles sont éclairées afin que chacun puisse un jour
retrouver la sienne.  Regarde ma planète.  Elle est juste au-dessus de nous…
Mais comme elle est loin!
]]),
    text_tag("p", {lang = "it"}, [[
Mi domando se le stelle sono illuminate affinché ognuno un giorno possa trovare
la sua.  Guarda il mio pianeta.  È proprio sopra di noi…  Ma come è lontano!
]]),
    quote_footer(
        "Antoine de Saint-Exupéry",
        '<span lang="fr">Le petit prince</span>'),
}

return {
    timestamp = { 1757203200, "2025-09-07" },
    title = "Total lunar eclipse",
    images = images,
    description = description,
    content = content,
    citation = citation,
}
