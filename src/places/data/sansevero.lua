local description <const> = [[This post will be different than usual.  Taking photographs is forbidden inside the cappella, so these are not mine, but taken from their web site (I hope they will not sue me for the mountains of money I make with each post).]]

local content <const> = lines {
    par [[
This post will be different than usual.  Taking photographs is forbidden inside
the cappella, so these are not mine, but taken from their web site (I hope they
will not sue me for the mountains of money I make with each post).
]],
    par [[
But it is impossible not to mention Cappella Sansevero, in the heart of the old
city center of <a href="napoli.html">Napoli</a>, right next to Basilica di San
Domenico Maggiore.  The pieces on display stand out even in a city that is full
of spectacular art; if you like sculpture, or art in general, you probably
already know at least some of them, since they are frequently listed as some of
the most stunning works of all time.
]],
    par [[
The most famous of them is the piece at the center, Giuseppe Sanmartino's
<a href="https://www.museosansevero.it/la-cappella-e-il-cristo-velato/il-cristo-velato"><i>Cristo Velato</i></a>
(1753), closely followed by Antonio Corradini's
<a href="https://www.museosansevero.it/la-cappella-e-il-cristo-velato/le-statue/pudicizia"><i>Pudicizia</i></a>
(1752) and Francesco Queirolo's
<a href="https://www.museosansevero.it/la-cappella-e-il-cristo-velato/le-statue/disinganno"><i>Disinganno</i></a>
(1754), all of which are so unbelievably vivid they barely look like statues
made entirely of marble.
]],
    par [[
Many other works complete the densely-packed exposition, such as the high relief
behind the main altar (Francesco Celebrano's
<a href="https://www.museosansevero.it/la-cappella-e-il-cristo-velato/la-cappella/altare-maggiore"><i>Deposizione</i></a>,
1756), but the main feature are the
<a href="https://www.museosansevero.it/la-cappella-e-il-cristo-velato/le-statue">ten statues of the <i>Virtues</i></a>
along both lateral walls, from the entrance to the altar, which include the two
already mentioned; they are: <span lang="it"><i>Pudicizia</i>,
<i>Disinganno</i>, <i>Soavità del giogo coniugale</i>, <i>Sincerità</i>, <i>Zelo
della religione</i>, <i>Dominio di se stessi</i>, <i>Liberalità</i>,
<i>Educazione</i>, <i>Decoro</i></span>, and <i lang="it">Amor divino</i>.
]],
    par [[
Even if you cannot make it to Napoli to see these in person, the Cappella has a
website full of high-resolution pictures and additional information, so you can
do a virtual tour.  And one final note: if you <em>do</em> decide to go there,
make sure to reserve tickets in advance (which can be also done via their
website), they were sold out the first time I went and I almost missed it the
second time.  Oh, and take the audio guide, it's very good.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "la"}, [[
Cum rerum natura in consortium omnis aevi patiatur incedere, quidni ab hoc
exiguo et caduco temporis transitu in illa toto nos demus animo, quae immensa,
quae aeterna sunt, quae cum melioribus communia?
]]),
    par [[
Since Nature allows us to commune with every age, why do we not abstract
ourselves from our own petty fleeting span of time, and give ourselves up with
our whole mind to what is vast, what is eternal, what we share with better men
than ourselves?
]],
    quote_footer(
        "Lucius Annaeus Seneca",
        "De Brevitate Vitae",
        link {
            href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A2007.01.0016%3Abook%3D10%3Achapter%3D14%3Asection%3D2",
            content = "10.14.2",
        }),
}

local images <const> = {{
    path = "sansevero0.jpg",
    text = [[
Wide view of the area near the altar, showing all four of the most renowned
works of the Cappella.
]],
}, {
    path = "sansevero1.jpg",
    text = [[
The back of the altar and some of the freschi covering the walls and ceiling.
]],
}, {
    path = "sansevero2.jpg",
    text = [[
Cristo velato.
]],
}, {
    path = "sansevero3.jpg",
    text = [[
The ten Virtues.
]],
}, {
    path = "sansevero4.jpg",
}}

return {
    id = "sansevero",
    title = "Cappella Sansevero",
    timestamp = {"1709078400", "2024-02-28"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        {"website", "https://www.museosansevero.it"},
        map = "way/123977918",
        mastodon = "113148647300428162",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0Mx4YnAn1fjj2XkkRRkmv1ybdSoTbffrCcmoHpUUw6YgBVVt2Y1KNpijWtiuKND22l",
        instagram = "C__O5DXqwmV",
    },
}
