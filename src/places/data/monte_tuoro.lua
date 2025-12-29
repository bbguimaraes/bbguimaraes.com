local description <const> = [[Last set from Capri, though I would post every single picture if I could.  These are taken over the two days I spent there, along two sentieri: one going from the famous Faraglioni up to monte Tuoro, the other crossing the entire Western coast passing through the ruins of Roman forts and rocky paths along the limestone cliffs, where dolphins and whales can be regularly seen (a pity they were too far away to get a good picture or video of them).]]

local content <const> = lines {
    par [[
Last set from <a href="capri.html">Capri</a>, though I would post every single
picture if I could.
]],
    par [[
These are taken over the two days I spent there, along two sentieri: one going
from the famous Faraglioni up to monte Tuoro, the other crossing the entire
Western coast passing through the ruins of Roman forts and rocky paths along the
limestone cliffs, where dolphins and whales can be regularly seen (a pity they
were too far away to get a good picture or video of them).
]],
}

local citation <const> = lines {
    par [[
One man, when he has done a service to another, is ready to set it down to his
account as a favour conferred.  Another is not ready to do this, but still in
his own mind he thinks of the man as his debtor, and he knows what he has done.
A third in a manner does not even know what he has done, but he is like a vine
which has produced grapes, and seeks for nothing more after it has once produced
its proper fruit.  As a horse when he has run, a dog when he has tracked the
game, a bee when it has made the honey, so a man when he has done a good act,
does not call out for others to come and see, but he goes on to another act, as
a vine goes on to produce again the grapes in season.
]],
    quote_footer("Marcus Aurelius", "Meditations", "V.6"),
}

local images <const> = {{
    path = "monte_tuoro/0.jpg",
    text = [[
Penisola Sorrentina from via Pizzolungo.
]],
}, {
    path = "monte_tuoro/1.jpg",
    text = [[
The Faraglioni.
]],
}, {
    path = "monte_tuoro/2.jpg",
    text = [[
Marina Piccola from the Faraglioni.
]],
}, {
    path = "monte_tuoro/3.jpg",
    text = [[
View of the sea around them from via Tragara.
]],
}, {
    path = "monte_tuoro/4.jpg",
    text = [[
Going up to monte Tuoro.
]],
}, {
    path = "monte_tuoro/5.jpg",
    text = [[
The Amalfi coast at sunset.
]],
}, {
    path = "monte_tuoro/6.jpg",
    text = [[
Punta Carena from Fortino di Pino.
]],
}, {
    path = "monte_tuoro/7.jpg",
    text = [[
Sea near Fortino di Mesola.
]],
}, {
    path = "monte_tuoro/8.jpg",
    text = [[
Wrong focus, but too good to discard.
]],
}, {
    path = "monte_tuoro/9.mp4",
    width = "640",
    text = [[
Scattered sunset light dances on the gulf of Napoli.
]],
}}

return {
    title = "Monte Tuoro, Capri",
    timestamp = { 1707091202, "2024-02-05" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "node/3500501412",
        mastodon = "112101867601106841",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0D4CbhsQrF2Fy5RqYjAej6BVTjYdRs15RLyifNYY87EnfdvXbWS4MM3YL3n1RTMiXl",
        instagram = "C4jM-nqq0NU",
    },
}
