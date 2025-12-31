return {
    id = "missale",
    title = "Missale",
    cover = "missale_cover.jpg",
    rss = false,
    content = lines {
        par [[
Roman rite missal in Latin, formatted to be printed as a booklet guide for the
solemn Tridentine Mass.
]],
        par [[
Text is adapted directly from the 1962
<a href="https://media.musicasacra.com/pdf/missale62.pdf"><i>Missale Romanum</i></a>.
Neumatic notation for the chants are taken from the 1961
<a href="https://archive.org/details/TheLiberUsualis1961"><i>Liber Usualis</i></a>.
A bilingual Latin/English version in the same spirit can be found
<a href="https://maternalheart.org/library/missal.pdf">here</a>.
]],
        link {
            href = "/files/lib/missale.pdf",
            content = "PDF",
        },
        link {
            href = "/files/lib/missale-book.pdf",
            content = "PDF (booklet)",
        },
        link {
            href = "/blog/booklet-printing-with-latex.html",
            content = "printing",
        },
        link {
            href = "https://gitlab.bbguimaraes.com/bbguimaraes/libri/-/blob/master/missale",
            content = "source",
        },
        link {
            href = "/files/lib/missale.jpg",
            content = "pictures",
        },
    },
}
