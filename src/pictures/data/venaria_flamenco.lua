local description <const> = format {
    [[An evening of music, dance, and immense beauty at %s.]],
    inline_tag("i", {lang = "it"}, "Reggia di Venaria Reale"),
}

local content <const> = lines {
    par [[
An evening of music, dance, and immense beauty at <i lang="it">Reggia di Venaria
Reale</i>.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "es"}, [[
La luna es un terrón que alumbra con luz prestada<br />
Solo al cantor que canta coplas del alma<br />
Le estalla, en el corazón, el sol que trepa por su voz
]]),
    text_tag("p", {lang = "es"}, [[
Cantor, para cantar, si nada dicen sus versos<br />
Ay, ¿para qué vas a callar al silencio?<br />
Si es el silencio un cantor lleno de duendes en la voz
]]),
    quote_footer("Pablo Raúl Trullenque", "Entre a mi pago sin golpear"),
}

local images <const> = {{
    path = "venaria_flamenco/IMG_20260828_202701.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_191657.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_191840.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_192150.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_192812.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_192644.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_193216.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_194807.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_195041.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_195254.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_195414.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_195803.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_201040.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_201049.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_202433.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_202659.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_204258.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_224133.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_230726.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_231052.jpg",
}, {
    path = "venaria_flamenco/IMG_20260828_231401.jpg",
}, {
    path = "venaria_flamenco/VID_20260828_182219.mp4",
}, {
    path = "venaria_flamenco/VID_20260828_210345.mp4",
}}

return {
    timestamp = { 1787945400, "2026-08-28" },
    title = 'Serata flamenco, Reggia di Venaria Reale',
    description = description,
    content = content,
    images = images,
    citation = citation,
}
