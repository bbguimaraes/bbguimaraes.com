local description <const> = [[One of the two major early-Mediaeval peregrination routes across Western Europe — the other being, of course, the famous Camino de Santiago, which it predates by a few centuries and to which it is roughly perpendicular.  Beginning in Canterbury (specifically, Canterbury Cathedral, seat of the Archbishop of the Church of England), at the southeastern corner of Britain near the Thames estuary, it crosses France, Switzerland, and the entirety of the Italian peninsula, passing through Rome and ending in Santa Maria di Leuca in Puglia, the southeastern end of Italy, after more than three thousand kilometers.  From there pilgrims would sail across the Mediterranean to the Holy Land.  Thus it connects, together with Camino de Santiago, Compostela, Canterbury, Rome, and Jerusalem, the main peregrination sites of Christianity.]]

local content <const> = lines {
    par [[
One of the two major early-Mediaeval peregrination routes across Western Europe
— the other being, of course, the famous Camino de Santiago, which it predates
by a few centuries and to which it is roughly perpendicular.  Beginning in
Canterbury (specifically, Canterbury Cathedral, seat of the Archbishop of the
Church of England), at the southeastern corner of Britain near the Thames
estuary, it crosses France, Switzerland, and the entirety of the Italian
peninsula, passing through Rome and ending in Santa Maria di Leuca in Puglia,
the southeastern end of Italy, after more than three thousand kilometers.  From
there pilgrims would sail across the Mediterranean to the Holy Land.  Thus it
connects, together with Camino de Santiago, Compostela, Canterbury, Rome, and
Jerusalem, the main peregrination sites of Christianity.
]],
    par [[
Its southeastern portion in Lazio, departing from Rome, follows the ancient via
Appia, the Roman <i>regina viarum</i>, and I had the chance to visit many places
on that route during my brief stay there: <a href="gaeta.html">Gaeta</a>,
Formia, Scauri, <a href="minturno.html">Minturno</a> (and the archeological site
of <a href="minturnae.html">Minturnae</a>), <a href="minturno.html">Santi Cosma
e Damiano</a>, <a href="castelforte.html">Castelforte</a>, and <a
href="suio.html">Suio</a> (see those for more, I won't repost the pictures
here), after which it crosses the Garigliano river into Campania.  The entire
path is demarcated by signs directing the way and, more than just the road
(although that is itself an attraction), there are endless natural, cultural,
and historical wonders along the way.
]],
    par [[
Maybe one day I'll go for the entire 3268 kilometers.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "grc"}, [[
ὅτι στενὴ ἡ πύλη καὶ τεθλιμμένη ἡ ὁδὸς<br />
ἡ ἀπάγουσα εἰς τὴν ζωήν,<br />
καὶ ὀλίγοι εἰσὶν οἱ εὑρίσκοντες αὐτήν.
]]),
    text_tag("p", {lang = "la"}, [[
Quam angusta porta, et arcta via est,<br />
quae ducit ad vitam :<br />
et pauci sunt qui inveniunt eam!
]]),
    par [[
Because strait is the gate, and narrow is the way,<br />
which leadeth unto life,<br />
and few there be that find it.
]],
    quote_footer("Matthew 7:14"),
}

local images <const> = {{
    path = "via_francigena/0.jpg",
    text = [[
A sign in <a href="castelforte.html">Castelforte</a> showing the path from Rome
to southeastern Lazio.
]],
}, {
    path = "via_francigena/1.jpg",
    text = [[
Church of Santa Maria del Buon Rimedio in <a href="suio.html">Suio</a>.
]],
}, {
    path = "via_francigena/2.jpg",
    text = [[
In <a href="suio.html">Suio</a>.
]],
}, {
    path = "via_francigena/3.jpg",
    text = [[
On the road to <a href="suio.html">Suio Alto</a>.
]],
}, {
    path = "via_francigena/4.jpg",
    text = [[
Life-size nativity scene display inside a grotto on the side of that road
(missing on that particular day).
]],
}, {
    path = "via_francigena/5.jpg",
    text = [[
On the road to the <a href="minturnae.html">Roman ruins</a> in <a
href="minturno.html">Minturno</a>.
]],
}, {
    path = "via_francigena/6.jpg",
    text = [[
Next to the Vespasian aqueduct.
]],
}, {
    path = "via_francigena/7.jpg",
    text = [[
At the entrance of the <a href="minturnae.html">Roman ruins</a>.
]],
}, {
    path = "via_francigena/8.jpg",
    text = [[
<i>Roma: 215,4km</i><br />
<i>Canterbury: 2.451km</i>
]],
}, {
    path = "via_francigena/9.jpg",
    text = [[
Next to Monte d'Argento in <a href="minturno.html">Minturno</a>.
]],
}, {
    path = "via_francigena/10.jpg",
}, {
    path = "via_francigena/11.jpg",
    text = [[
In via Bagni di <a href="suio.html">Suio</a>.
]],
}, {
    path = "via_francigena/12.jpg",
    text = [[
At the entrance of Formia.
]],
}, {
    path = "via_francigena/13.jpg",
}, {
    path = "via_francigena/14.jpg",
    text = [[
Next to Torre di Castellone in Formia.
]],
}, {
    path = "via_francigena/15.jpg",
    text = [[
In Piazza Sant'Erasmo.
]],
}, {
    path = "via_francigena/16.jpg",
    text = [[
Next to the colossal Roman cistern.
]],
}, {
    path = "via_francigena/17.jpg",
}, {
    path = "via_francigena/18.jpg",
    text = [[
In Piazza della Vittoria.
]],
}, {
    path = "via_francigena/19.jpg",
}, {
    path = "via_francigena/20.jpg",
    text = [[
On the coastal roads between Formia and Scauri.
]],
}, {
    path = "via_francigena/21.jpg",
}, {
    path = "via_francigena/22.jpg",
    text = [[
Map of the entire Via, from <a
href="https://www.viefrancigene.org">viefrancigene.org</a>.
]],
}}

return {
    id = "via-francigena",
    title = "Via Francigena",
    timestamp = {"1709164801", "2024-02-29"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/6201614",
        mastodon = "112699138364695028",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0ELUqR6Dd7XrWCLPXzqr9motA6dQwWZ2AeWHKxmoa6pPcuHoH1zX88Ar27H6nD5ztl",
        instagram = "C8y0cgmKKgY",
    },
}
