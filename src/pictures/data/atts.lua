local description <const> = format {
    [[Torino has the oldest tram network system in Italy, which has been in operation since 1871, and the second largest. The %s — how can you not love a city that has one? — conserves many of the original vehicles, and regularly offers tours around the city center.]],
    inline_tag("span", {lang = "it"}, "Associazione Torinese Tram Storici"),
}

local content <const> = lines {
    par [[
Torino has the oldest tram network system in Italy, which has been in operation
since 1871, and the second largest.  The <span lang="it">Associazione Torinese
Tram Storici</span> — how can you not love a city that has one? — conserves many
of the original vehicles, and regularly offers tours around the city center.
]],
    par [[
Today they offered a 20-minute ride inside the oldest one, n. 116, built in
1911, from the <span lang="it">Teatro Regio</span> stop in <span
lang="it">piazza Castello</span> through the <span lang="it">Giardini
Reali</span> to <span lang="it">piazza Carlina</span> and back, during which the
ATTS guides tell the stories of the many trams and their uses, from serving as
ambulances in the World Wars to carrying merchandise to street markets and even
coffins to graveyards.
]],
    par [[
It is amazing to ride a tram that is more than a hundred years old and see how
much beauty and attention to detail was once put into even seemingly banal and
ordinary objects as public transportation vehicles.  Just like the scenery of
some of the oldest and equally beautiful parts of town passing by in the
background, it is a reminder that not long ago society still had its priorities
right.
]],
}

local images <const> = {{
    path = "atts/IMG_20261031_121535.jpg",
}, {
    path = "atts/IMG_20261031_113251.jpg",
}, {
    path = "atts/IMG_20261031_113433.jpg",
}, {
    path = "atts/IMG_20261031_114324.jpg",
}, {
    path = "atts/IMG_20261031_113734.jpg",
}, {
    path = "atts/IMG_20261031_113958.jpg",
}, {
    path = "atts/IMG_20261031_114902.jpg",
}, {
    path = "atts/IMG_20261031_114950.jpg",
}, {
    path = "atts/IMG_20261031_115152.jpg",
}, {
    path = "atts/IMG_20261031_115211.jpg",
}, {
    path = "atts/IMG_20261031_115430.jpg",
}, {
    path = "atts/IMG_20261031_115624.jpg",
}, {
    path = "atts/IMG_20261031_115641.jpg",
}, {
    path = "atts/IMG_20261031_115749.jpg",
}, {
    path = "atts/IMG_20261031_115708.jpg",
}, {
    path = "atts/IMG_20261031_115828.jpg",
}, {
    path = "atts/IMG_20261031_120009.jpg",
}, {
    path = "atts/IMG_20261031_120011.jpg",
}, {
    path = "atts/IMG_20261031_120019.jpg",
}, {
    path = "atts/IMG_20261031_120027.jpg",
}, {
    path = "atts/IMG_20261031_120213.jpg",
}, {
    path = "atts/IMG_20261031_120324.jpg",
}, {
    path = "atts/IMG_20261031_121034.jpg",
}, {
    path = "atts/IMG_20261031_121142.jpg",
}, {
    path = "atts/IMG_20261031_121541.jpg",
}, {
    path = "atts/IMG_20261031_121614.jpg",
}, {
    path = "atts/IMG_20261031_121606.jpg",
}, {
    path = "atts/IMG_20261031_122021.jpg",
}, {
    path = "atts/IMG_20261031_122011.jpg",
}, {
    path = "atts/IMG_20261031_140033.jpg",
}, {
    path = "atts/IMG_20261031_140053.jpg",
}, {
    path = "atts/IMG_20261031_135716.jpg",
}, {
    path = "atts/VID_20261031_105249.mp4",
}, {
    path = "atts/VID_20261031_112312.mp4",
}}

return {
    timestamp = { 1793446200, "2026-10-31" },
    title = "Associazione Torinese Tram Storici",
    description = description,
    content = content,
    images = images,
}
