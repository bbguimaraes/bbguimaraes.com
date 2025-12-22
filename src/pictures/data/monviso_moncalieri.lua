local description <const> = [[Autumn sunset at <span lang="it">Viale del Castello</span> in <span lang="it">Moncalieri</span>, with <span lang="it">Monviso</span> and <span lang="it">Ponte dei Cavalieri Templari</span>.]]

local content <const> = lines {
    par [[
Autumn sunset at <span lang="it">Viale del Castello</span> in <span
lang="it">Moncalieri</span>, with <span lang="it">Monviso</span> and <span
lang="it">Ponte dei Cavalieri Templari</span>.
]],
}

local images <const> = {{
    path = "monviso_moncalieri/IMG_20251108_183018.jpg",
}, {
    path = "monviso_moncalieri/IMG_20251108_180518.jpg",
}, {
    path = "monviso_moncalieri/IMG_20251108_181219.jpg",
}, {
    path = "monviso_moncalieri/IMG_20251108_180703.jpg",
}}

local citation <const> = lines {
    text_tag("p", {lang = "it"}, [[
Fatto avea di là mane e di qua sera<br />
tal foce, e quasi tutto era là bianco<br />
quello emisperio, e l’altra parte nera
]]),
    quote_footer("Dante Alighieri", "Comedia", "Paradiso I.43"),
}

return {
    timestamp = { 1762560000, "2025-11-08" },
    title = "Monviso from Moncalieri",
    description = description,
    content = content,
    citation = citation,
    images = images,
}
