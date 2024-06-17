local description <const> = [[I was in Pompei very briefly — just a single day, on the way to and from Vesuvius.  That was much less than the four years I estimate it will take me to visit its famous ruins, given that my mind lives more in the Roman empire than in whatever this “real” life is, next time I'm there.]]

local content <const> = lines {
    par [[
I was in Pompei very briefly — just a single day, on the way to and from <a
href="vesuvius.html">Vesuvius</a>.  That was much less than the four years I
estimate it will take me to visit its famous ruins, given that my mind lives
more in the Roman empire than in whatever this “real” life is, next time I'm
there.
]],
    par [[
But that was more than compensated by a visit to Pontificio Santuario della
Beata Vergine del Santo Rosario, Pompei's cathedral.  Its paintings, relatively
recent (most from the 19th century) and recently renovated, along with its
bright environment (finally some decent pictures!) are a unique opportunity to
experience what the masterworks which can be seen elsewhere would have looked
like when they were fresh.
]],
    par [[
Which is not to demean the art there: it is one of the most beautiful cathedrals
I've visited.
]],
}

local citation <const> = lines {
    par [[
To love someone else is easy, but to love what you are, the thing that is
yourself, is just as if you were embracing a glowing red-hot iron: it burns into
you and that is very painful.  Therefore, to love somebody else in the first
place is always an escape which we all hope for, and we all enjoy it when we are
capable of it.  But in the long run, it comes back on us.  You cannot stay away
from yourself forever, you have to return, have to come to that experiment, to
know whether you really can love.  That is the question — whether you can love
yourself, and that will be the test.
]],
    quote_footer(
        "Carl Jung",
        "seminar on Nietzsche's “Thus spoke Zarathustra”"),
}

local images <const> = {{
    path = "pompei0.jpg",
    text = [[
San Michele.
]],
}, {
    path = "pompei1.jpg",
    text = [[
Entrance — virgini dicatum.
]],
}, {
    path = "pompei2.jpg",
    text = [[
Bell tower — cordi Iesu sacrum, venite ad me omnes.
]],
}, {
    path = "pompei3.jpg",
    text = [[
Cappella di San Francesco, Ponziano Loverini (1892).
]],
}, {
    path = "pompei4.jpg",
    text = [[
Altar.
]],
}, {
    path = "pompei5.jpg",
    text = [[
inter roseta lilium
]],
}, {
    path = "pompei6.jpg",
    text = [[
in hoc signo vinces
]],
}}

return {
    id = "pompei",
    title = "Pompei",
    timestamp = {"1706832001", "2024-02-02"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/40730",
        mastodon = "111970240733710418",
        facebook = "pfbid02h5MZkYiussUnX3QsKXYqsNXh63TeuN6ZVGBtjTCJvSuyuNJ9fGuNgyXz4XYZR4TWl",
        instagram = "C3nVgiMqb10",
    },
}
