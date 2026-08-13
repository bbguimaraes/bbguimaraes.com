local description <const> = format {
    [[Following the bad news about the weather at dawn, there were good news, then more bad news, then more good news.  They day started with heavy rain and complete cloud cover, and the forecast for the evening was of dense clouds all over the western Alpine arc (these are all accepted facts of life for the calloused %s, in case you don't know).]],
    inline_tag("i", {lang = "it"}, "torinese"),
}

local content <const> = lines {
    par [[
Following the bad news about the weather at dawn, there were good news, then
more bad news, then more good news.  They day started with heavy rain and
complete cloud cover, and the forecast for the evening was of dense clouds all
over the western Alpine arc (these are all accepted facts of life for the
calloused <i lang="it">torinese</i>, in case you don't know).
]],
    par [[
Still, even if it meant staring at clouds all night, I wouldn't let the
opportunity pass, so around 17:00 I made my way to the <span
lang="it">Superga</span> hill (in sweltering weather under a clear sky, of
course).  The view was reasonably clear — you have to be quite lucky to get a
clear view of the valley at any given day anyway — and the sun could be seen
quite distinctly through the mist, especially through the filtered camera lens.
]],
    par [[
The first sighting of the moon, approached by the sun from its southern side,
was at 18:36 (all times are local: CEST UTC+02:00), and the awesome spectacle
was clearly visible up to the very end — a tip: much better viewed through a
telephoto lens than with the eye, even though the apparent magnitude of the
solar disc at 300mm was roughly the same.
]],
    par [[
This miraculous Piedmontese weather continued almost to the very end.  At 19:15,
when the sun and the moon were a few degrees above the Graian Alps — somewhere
between the <span lang="it">Rocciamelone</span> to the south and <span
lang="it">monte Lera</span> and <span lang="it">punta Soulé</span> to the north,
by my estimation — a large group of dense clouds travelling southward reached
them, and concealed most of the last visible minutes of the eclipse.
]],
    par [[
The maximum cover of 93.3% was still more than one hour away, long after the
setting of the sun behind the mountains, so this ended up being an amazing
second spectacle for the evening, with the unique colors of the
partially-eclipsed sun shining behind and around the clouds and the mountains.
At 19:27 a sliver of the sun, by now almost fully eclipsed, showed itself at the
edge of the mountain, before finally setting a minute later.
]],
    par [[
In the end was it worth preparing weeks in advance, enduring the unbearable 36°C
summer heat, handling all the photographic equipment, standing there in the sun
for three hours, waiting for the sixth bus because all the others were full,
going to bed at 01:00, processing all the pictures, …?  Well, I'll just say I'm
already planning my trip to Spain next year.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "it"}, [[
E sí come secondo raggio suole<br />
uscir del primo e risalire in suso,<br />
pur come pelegrin che tornar vole,
]]),
    text_tag("p", {lang = "it"}, [[
cosí de l'atto suo, per li occhi infuso<br />
ne l'imagine mia, il mio si fece,<br />
e fissi li occhi al sole oltre nostr'uso.
]]),
    quote_footer(
        "Dante Alighieri", "Comedia",
        link {
            href = "https://digitaldante.columbia.edu/dante/divine-comedy/paradiso/paradiso-1/",
            content = "Paradiso I.49–54",
        }),
}

local images <const> = {{
    path = "eclipse_2026/IMG_20260812_191601.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_183429.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_183617.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_183746.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_184153.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_184920.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_185633.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_186027.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_190647.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_191226.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_191508.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_191545.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_191600.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_191616.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_191624.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_185624.jpg",
    text = [[
A shot with slightly longer exposure to capture more of those stunningly
beautiful sun rays.
]],
}, {
    path = "eclipse_2026/IMG_20260812_191836.jpg",
    text = [[
The clouds end the spectacle a few minutes earlier.
]],
}, {
    path = "eclipse_2026/IMG_20260812_192036.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_192415.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_192655.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_192726.jpg",
    text = [[
A sliver of the almost fully-eclipsed sun appears just before setting behind the
Alps.
]],
}, {
    path = "eclipse_2026/IMG_20260812_192116.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_192515.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_190309.jpg",
    text = [[
A few quick shots around sunset just so you know what I mean when I say the
weather in <span lang="it">Piemonte</span> is catastrophic.
]],
}, {
    path = "eclipse_2026/IMG_20260812_191314.jpg",
}, {
    path = "eclipse_2026/IMG_20260812_194745.jpg",
    text = [[
Torino and the Alps deep in mist, illuminated by the fading light of the sunset.
]],
}, {
    path = "eclipse_2026/IMG_20260812_195018.jpg",
}, {
    path = "eclipse_2026/VID_20260812_063351.mp4",
    text = [[
Not a promising way to start a day of celestial observation.
]],
}, {
    path = "eclipse_2026/IMG_20260813_115614.jpg",
}}

return {
    timestamp = { 1786566060, "2026-08-12" },
    title = "Partial solar eclipse",
    description = description,
    content = content,
    images = images,
    citation = citation,
}
