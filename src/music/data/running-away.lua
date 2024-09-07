local description <const> = [[
Continuing the theme of perfect love songs with a 70's feel and a deadly groove.
]]

local content <const> = lines {
    par(description),
    par [[
It was about time my beloved Roland made a reappearance, and with it I can now
assemble in one video all of the pinnacles of man's creation — viz.: the Rhodes
(with a delicious amount of tremolo), the (slightly-overdriven) Telecaster, and
the Jazz Bass (with beefy low-end).
]],
    par [[
If you could hear the background noise of my thoughts, this is how it would
sound.
]],
    html '<hr class="small-div" />',
    blockquote(lines {
        par [[
Why'd you keep on running,<br />
Why'd you keep on, why'd you keep on running<br />
Why'd you keep on,<br />
Why'd you keep on, why'd you keep on running away
]],
    }),
}

return {
    id = "running-away",
    title = "Running away",
    author = "Joey Dosik",
    date = {"1725725529", "2024-09-07T16:12:09"},
    duration = "1:45",
    poster = "1:00",
    scores = {
        link {
            href = "/files/music/running_away.pdf",
            content = "score",
            target = "_blank",
        },
        link {
            href = "/files/music/running_away.mscz",
            content = "source",
            target = "_blank",
        },
    },
    tags = {"piano", "guitar", "bass", "short"},
    links = {
        youtube = "NiXynjq0hnw",
        mastodon = "113097433962533086",
        facebook = "reel/863597932105968",
        instagram = "C_n8Ek4K2dq",
    },
    description = description,
    content = content,
}
