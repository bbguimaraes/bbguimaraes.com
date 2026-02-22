local description <const> = format {
    [[Milk. Raw milk, to be more specific — not only fresh, having been just recently extracted, but also not processed in any way to increase its longevity, such as pasteurizing (that is, boiling to eliminate any potentially harmful organisms). It is the closest you can get to milk straight out of a cow. For a long time I had been searching for it: I had managed to find a few distributors of <em>fresh</em> whole milk, which is already incomparably better not only in terms of taste, but especially of nutritional value (this is one of the reasons for my weekly peregrination to the nearby town of %s). But raw milk is very difficult to find.]],
    inline_tag("span", {lang = "it"}, "Settimo Torinese"),
}

local content <const> = lines {
    par(format {
        [[
Milk.  Raw milk, to be more specific — not only fresh, having been just recently
extracted, but also not processed in any way to increase its longevity, such as
pasteurizing (that is, boiling to eliminate any potentially harmful organisms).
It is the closest you can get to milk
%s.
For a long time I had been searching for it: I had managed to find a few
distributors of <em>fresh</em> whole milk, which is already incomparably better
not only in terms of taste, but especially of nutritional value (this is one of
the reasons for my weekly peregrination to the nearby town of <span
lang="it">Settimo Torinese</span>).  But raw milk is very difficult to find.
]],
        link {
            href = "https://www.youtube.com/watch?v=g6u-hGnCYsI",
            content = "straight out of a cow",
        },
    }),
    par [[
What is not difficult is to see why: our lives are ever more sanitized and
distanced from reality, and modern institutions, from medicine to politics and
education, view people as helpless infants who have to be taken care of by an
obsessively dominant mother, who cannot be trusted to take care of their own
lives, health, or nutrition (and who, of course, then go on to become just
that).  This is the society which makes “healthcare” “free” (very heavy quotes)
but raw milk illegal (some places have gone that far).
]],
    par(format {
        [[
But my search was finally over when I found <i lang="it">Società Agricola
Versino</i>, which for more than twenty years has had an
%s
right in front of their shop in the small town of <span lang="it">Giaveno</span>
where you can get raw milk.  It costs €1/L (for reference, about half the price
of organic milk at the supermarket), and goes straight into your glass bottle,
so that there is no waste and it never even touches plastic, yet another grave
problem with almost every conventional product these days.
]],
        link {
            href = "https://www.lavalsusa.it/giaveno-compie-20-anni-il-distributore-automatico-di-latte-crudo-dei-versino/",
            content = "automatic milk distributor",
        },
    }),
    hr(),
    par(format {
        [[
So, naturally, there was only one thing to do: take my bicycle and go there.
<span lang="it">Giaveno</span> is about 36km from where I live, at the margin of
a region known as the <i lang="it">anfiteatro morenico di Rivoli-Avigliana</i>,
a large rock formation (about 50km²) caused by a colossal glacier which once
covered the valley of the <span lang="it">Dora Riparia</span> river.  The path
from Torino to Rivoli, at the foot of the mountains, follows the largest
straight street in Europe, <span lang="it">corso Francia</span> (read about it
in the %s).  From there, it crosses the
dense forest of
<span lang="it">%s</span>
into the stunning region of the lakes of Avigliana, with the snowy Alps always
visible in the distance and, of course, plenty of farms and cows, goats, sheep,
etc. grazing on the green mountain slopes.
]],
        link {
            href = "superga.html",
            content = "previous post",
        },
        link {
            href = "https://www.openstreetmap.org/node/12578673241",
            content = "collina morenica di Rivoli",
        },
    }),
    par(format {
        [[
From the few hours I spent in Giaveno itself (this was tight a day trip), I can
say it is a beautiful small town (just above 15 thousand inhabitants) and
<em>very</em> old: the name is said to derive from Latin <i lang="la">iam
veni</i>, “I have arrived”, pronounced by Hannibal after his crossing of the
Alps (again, read all about it in the %s).
In my short walk around the city center, I especially liked the very typical
atmosphere of the Italian countryside, the small cafés, and the beautiful <i
lang="it">Torre degli orologi</i> and the XII century <i lang="it">Chiesa di San
Lorenzo martire</i>.
]],
        link {
            href = "superga.html",
            content = "previous post",
        },
    }),
    par [[
The way back, which thank God was mostly a descent, as I had no legs after
having gone up more than 1000m, had as background the lakes of Avigliana and the
Dora Riparia, which flows down all the way to Torino, where it joins with the
Po, with the entire <span lang="it">Val di Susa</span> painted by the deep blue
and orange colors of dusk.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "la"}, [[
Alium multis gloria terris<br />
tradat et omnes fama per urbes<br />
garrula laudet<br />
caeloque parem tollat et astris;<br />
alius curru sublimis eat:<br />
me mea tellus<br />
lare secreto tutoque tegat.
]]),
    par [[
Let glory laud another to many lands,<br />
and let babbling fame sing his praise<br />
through every city and lift him to a level<br />
with the stars of heaven;<br />
let another fare towering in his car;<br />
but me let my own land, beside my lonely,<br />
sheltered hearth, protect.
]],
    quote_footer(
        "Lucius Annaeus Seneca",
        "Hercules furens",
        link {
            href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A2007.01.0003%3Acard%3D125",
            content = "CXCII",
        }),
}

local images <const> = {{
    path = "giaveno/IMG_20260221_165308.jpg",
    text = [[
<span lang="it">Giaveno</span> and the Alps behind the ever-present Piemonte
mist.
]],
}, {
    path = "giaveno/IMG_20260221_120100.jpg",
    text = [[
Starting to climb <span lang="it">collina morenica di Rivoli</span>.
]],
}, {
    path = "giaveno/IMG_20260221_120119.jpg",
}, {
    path = "giaveno/IMG_20260221_123458.jpg",
}, {
    path = "giaveno/IMG_20260221_123904.jpg",
}, {
    path = "giaveno/IMG_20260221_130529.jpg",
    text = [[
<span lang="it">Castello di Reano</span>.
]],
}, {
    path = "giaveno/IMG_20260221_132209.jpg",
    text = [[
<span lang="it">Santuario di Nostra Signora della Stella</span>, Trana.
]],
}, {
    path = "giaveno/IMG_20260221_132615.jpg",
}, {
    path = "giaveno/IMG_20260221_144756.jpg",
    text = [[
<span lang="it">Torre degli orologi</span>.
]],
}, {
    path = "giaveno/IMG_20260221_160546.jpg",
}, {
    path = "giaveno/IMG_20260221_160319.jpg",
    text = [[
<span lang="it">Chiesa di San Lorenzo martire</span>.
]],
}, {
    path = "giaveno/IMG_20260221_151200.jpg",
}, {
    path = "giaveno/IMG_20260221_150717.jpg",
}, {
    path = "giaveno/IMG_20260221_150824.jpg",
}, {
    path = "giaveno/IMG_20260221_150954.jpg",
}, {
    path = "giaveno/IMG_20260221_151103.jpg",
}, {
    path = "giaveno/IMG_20260221_160414.jpg",
    text = [[
<span lang="it">Chiesa dei Batù</span>.
]],
}, {
    path = "giaveno/IMG_20260221_160658.jpg",
}, {
    path = "giaveno/IMG_20260221_163225.jpg",
    text = [[
<span lang="it">Società Agricola Versino</span>.
]],
}, {
    path = "giaveno/IMG_20260221_163214.jpg",
}, {
    path = "giaveno/IMG_20260221_163547.jpg",
}, {
    path = "giaveno/IMG_20260221_163807.jpg",
}, {
    path = "giaveno/IMG_20260221_170654.jpg",
    text = [[
<span lang="it">Monte Musinè</span>.
]],
}, {
    path = "giaveno/IMG_20260221_174256.jpg",
    text = [[
<span lang="it">Lago piccolo di Avigliana</span>.
]],
}, {
    path = "giaveno/IMG_20260221_175735.jpg",
    text = [[
<span lang="it">Lago grande di Avigliana</span>.
]],
}, {
    path = "giaveno/IMG_20260221_181440.jpg",
    text = [[
The famous <span lang="it">Sacra di San Michele</span>.
]],
}, {
    path = "giaveno/IMG_20260221_181805.jpg",
    text = [[
<span lang="it">Santuario della Madonna dei laghi</span>.
]],
}, {
    path = "giaveno/IMG_20260221_181850.jpg",
    text = [[
Sunset at the lake.
]],
}, {
    path = "giaveno/IMG_20260221_175231.jpg",
    text = [[
<span lang="it">Sacra di San Michele</span> and <span lang="it">Dora
Riparia</span>
]],
}, {
    path = "giaveno/IMG_20260221_190545.jpg",
}, {
    path = "giaveno/IMG_20260221_192447.jpg",
}, {
    path = "giaveno/IMG_20260222_145104.jpg",
    text = [[
Raw milk cappuccino, the breakfast of a man.
]],
}}

return {
    title = "Giaveno",
    timestamp = { 1771632000, "2026-02-21" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "node/63629456",
        mastodon = "116117062189436092",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02CTieJoj8yxe4NnGAN2zDKy6pD1UJ4k2nm7ZHtRPQKQdknVpNWj4mTrd9ssEbY6sDl",
        instagram = "DVFERonDEuI",
    },
}
