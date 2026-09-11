local description <const> = format {
    [[On 6 September, to celebrate %s day, %s hosted %s, an evening of literature, poetry, and music in the beautiful %s, the vast gardens of the royal palace of the %s.  It was one of the last events of their fantastic series of summer evenings at the museums, %s.]],
    inline_tag("i", nil, "Read a book"),
    link {
        href = "https://museireali.beniculturali.it",
        content = inline_tag("i", {lang = "it"}, "Musei Reali"),
    },
    link {
        href = "https://museireali.beniculturali.it/events/il-giardino-dei-poeti-2026/",
        content = inline_tag("i", {lang = "it"}, "Il giardino dei poeti"),
    },
    inline_tag("i", {lang = "it"}, "Giardini Reali"),
    inline_tag("i", {lang = "it"}, "Savoia"),
    link {
        href = "https://museireali.beniculturali.it/estate-reale-2026-una-sera-al-museo/",
        content = 'Estate reale',
    },
}

local content <const> = lines {
    par(format {
        [[
On 6 September, to celebrate <i>Read a book</i> day,
%s
hosted %s,
an evening of literature, poetry, and music in the beautiful <i
lang="it">Giardini Reali</i>, the vast gardens of the royal palace of the <span
lang="it">Savoia</span>.  It was one of the last events of their fantastic
series of summer evenings at the museums,
%s.
]],
        link {
            href = "https://museireali.beniculturali.it",
            content = '<i lang="it">Musei Reali</i>',
        },
        link {
            href = "https://museireali.beniculturali.it/events/il-giardino-dei-poeti-2026/",
            content = '<i lang="it">Il giardino dei poeti</i>',
        },
        link {
            href = "https://museireali.beniculturali.it/estate-reale-2026-una-sera-al-museo/",
            content = '<i lang="it">Estate reale</i>',
        },
    }),
    par(format {
        [[
A group of actors spread throughout the garden, each standing behind a small
podium, read poetry excerpts as requested by the audience gathered in small
groups around them.  The royal apartments and library were also extraordinarily
open to visitation, and at the center of the <i lang="it">boschetto</i>, around
Giulio Paolini's <i lang="it">Pietre preziose</i>, the jazz group
%s
provided the soundtrack for the night.
]],
        link {
            href = "https://twombao.bandcamp.com",
            content = "<i>Twombao trio</i>",
        },
    }),
}

local citation <const> = lines {
    text_tag("p", {lang = "grc"}, [[
δὲ ποιηταὶ λόγου καὶ μὴ ἀκροαταὶ μόνον παραλογιζόμενοι ἑαυτούς
]]),
    par [[
but be ye doers of the word, and not hearers only, deceiving your own selves
]],
    quote_footer(
        nil,
        "James",
        link {
            href = "https://www.biblegateway.com/passage/?search=james%201%3A22&amp;version=KJV",
            content = "1:22",
        }),
}

local images <const> = {{
    path = "giardino_dei_poeti/IMG_20260906_211931.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_202125.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_203147.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_210243.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_210934.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_211457.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_211844.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_212756.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_212926.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_212956.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_213109.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_213413.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_213454.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_213709.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_213741.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_213843.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_214000.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_214039.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_221550.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_221715.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_221840.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_221952.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_222020.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_222758.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_224014.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_223125.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_223425.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_223034.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_223531.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_223217.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_223914.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_223941.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_212247.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_205436.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_224820.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_215524.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_204057.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_205544.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_215444.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_204134.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_204759.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_214751.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_215041.jpg",
}, {
    path = "giardino_dei_poeti/IMG_20260906_230859.jpg",
}, {
    path = "giardino_dei_poeti/VID_20260906_185334.mp4",
}, {
    path = "giardino_dei_poeti/VID_20260906_205352.mp4",
}}

return {
    timestamp = { 1788652800, "2026-09-06" },
    title = "Il giardino dei poeti",
    description = description,
    content = content,
    images = images,
    citation = citation,
}
