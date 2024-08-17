local description <const> = [[Faith, in one sentence.]]

local content <const> = par [[
Faith, in one sentence.
]]

local citation <const> = lines {
    par [[
Zwei Dinge erfüllen das Gemüth mit immer neuer und zunehmender Bewunderung und
Ehrfurcht…: Der bestirnte Himmel über mir und das moralische Gesetz in mir
]],
    par [[
Two things fill the mind with ever new and increasing wonder and awe…: the
starry heaven above me and the moral law within me
]],
    par [[
Due cose riempiono l'animo di ammirazione e venerazione sempre nuova e
crescente…: il cielo stellato sopra di me e la legge morale in me
]],
}

local images <const> = {{
    path = "belvedere_filosofico0.jpg",
    text = [[
Plaque in Belvedere Filosofico, with the inscription found in Kant's tombstone
in Kaliningrad.
]],
}, {
    path = "belvedere_filosofico1.jpg",
    text = [[
View from the belvedere: <a href="monte-solaro.html">the mount where the goats
from the last post live</a>, Punta Ventroso, and the Faraglioni.
]],
}, {
    path = "belvedere_filosofico2.jpg",
    text = [[
In Parco Filosofico.
]],
}}

return {
    id = "belvedere-filosofico",
    title = "Belvedere filosofico, Capri",
    timestamp = {"1707091201", "2024-02-05"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "node/2465874541",
        mastodon = "112065914635394815",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02PFF9yV8y9MDag8tgqSRXPPDNrbAhbdDc7C91dgyHoDF6LrVp3TXEQC6n16LcT5Tql",
        instagram = "C4S2wCFqbdn",
    },
}
