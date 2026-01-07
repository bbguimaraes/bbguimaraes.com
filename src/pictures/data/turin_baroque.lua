local description <const> = indented(format {
    [[The 4th edition of the %s organized by %s, which took place in June–July and October–November 2025 in some of the most beautiful churches and palaces in Torino.]],
    link {
        href = "https://www.tbmf.eu",
        content = "baroque music festival",
    },
    link {
        href = "https://www.accademiadelsantospirito.it",
        lang = "it",
        content = "Accademia del Santo Spirito",
    },
})

local content <const> = lines {
    par(format {
        [[
The 4th edition of the %s
organized by %s,
which took place in June–July and October–November 2025 in some of the most
beautiful churches and palaces in Torino.
]],
        link {
            href = "https://www.tbmf.eu",
            content = "baroque music festival",
        },
        link {
            href = "https://www.accademiadelsantospirito.it",
            lang = "it",
            content = "Accademia del Santo Spirito",
        },
    }),
    par [[
These pictures and videos are from the following concerts:
]],
    ul {
        [[
21 October: <i lang="it">Palestrina 500</i> at <i lang="it">Real Chiesa di San
Lorenzo</i>
]],
        [[
25 October: <i lang="it">Barocco tedesco</i> at <i lang="it">Villa della
regina</i>
]],
        [[
28 October: <i lang="it">La scuola violinistica piemontese</i> at <i
lang="it">Chiesa dello Spirito Santo</i>
]],
        [[
4 November: <i lang="la">Te Deum</i> at <i lang="it">Cattedrale di San Giovanni
Battista</i>
]],
    },
    par [[
with some bonus content from the equally magnificent
<a href="https://www.assmusto.org/images/Natale2025_programma.pdf">Advent/Christmas music festival</a>
which followed it:
]],
    ul {
        [[
15 November: <i lang="it">Preludio Ensemble e Compositori Associati</i> at <i
lang="it">Chiesa di San Rocco</i>
]],
    [[
20 November: <i lang="it">Mythos e Corale Roberto Goitre</i> at <i
lang="it">Cappella dei Mercanti</i>
]],
    },
}

local images <const> = {{
    path = "turin_baroque/IMG_20251025_171703.jpg",
}, {
    path = "turin_baroque/IMG_20251025_171532.jpg",
}, {
    path = "turin_baroque/IMG_20251025_155949.jpg",
}, {
    path = "turin_baroque/IMG_20251025_160024.jpg",
}, {
    path = "turin_baroque/IMG_20251025_170821.jpg",
}, {
    path = "turin_baroque/VID_20251025_143707.mp4",
    poster = "0:20",
}, {
    path = "turin_baroque/VID_20251021_175917.mp4",
}, {
    path = "turin_baroque/IMG_20251028_210657.jpg",
}, {
    path = "turin_baroque/IMG_20251028_231007.jpg",
}, {
    path = "turin_baroque/VID_20251028_201952.mp4",
}, {
    path = "turin_baroque/IMG_20251104_224215.jpg",
}, {
    path = "turin_baroque/IMG_20251115_173150.jpg",
}, {
    path = "turin_baroque/IMG_20251115_192322.jpg",
}, {
    path = "turin_baroque/VID_20251115_155133.mp4",
    poster = "0:02",
}, {
    path = "turin_baroque/VID_20251115_162226.mp4",
}, {
    path = "turin_baroque/IMG_20251120_220002.jpg",
}, {
    path = "turin_baroque/IMG_20251120_221423.jpg",
}, {
    path = "turin_baroque/IMG_20251120_234253.jpg",
}, {
    path = "turin_baroque/IMG_20251120_234232.jpg",
}, {
    path = "turin_baroque/VID_20251120_201449.mp4",
}}

return {
    timestamp = { 1761350400, "2025-10-25" },
    title = "Turin baroque music festival",
    description = description,
    content = content,
    citation = citation,
    images = images,
}
