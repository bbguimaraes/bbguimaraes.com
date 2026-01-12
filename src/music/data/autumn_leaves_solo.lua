local description <const> = [[Can you tell Clapton is one of my favorite musicians — if not my favorite?]]

local content <const> = lines {
    par [[
Can you tell Clapton is one of my favorite musicians — if not my favorite?
]],
    par [[
I don't usually do solos… except when they are a masterpiece that remains in
your head forever after hearing it.
]],
    par [[
Also, I have this valve amplifier sitting in my room (very gently entrusted to
me by my friend Paolo), and I love that I can finally get that singing
Telecaster tone from his early years, so I felt compelled to record something.
]],
    blockquote(lines {
        par [[
The falling leaves drift by the window<br />
The autumn leaves of red and gold<br />
]],
        par [[
I see your lips the summer kisses<br />
The sunburned hands I used to hold<br />
]],
        par [[
Since you went away the days grow long<br />
And soon I'll hear old winter's song<br />
]],
        par [[
But I miss you most of all, my darling,<br />
When autumn leaves start to fall
]],
    }),
}

return {
    title = "Autumn leaves (solo)",
    author = "Eric Clapton",
    timestamp = { 1754155877, "2025-08-02T17:31:17" },
    duration = "1:24",
    poster = "0:27",
    tags = {"guitar", "vocals", "short"},
    links = {
        youtube = "AhwJjTj1_3g",
        mastodon = "114961067923059754",
        facebook = "reel/1074250271520230",
        instagram = "DM3dn2DtTKe",
        {"backing track", "https://www.youtube.com/watch?v=cawcLKFhFMA"},
    },
    description = description,
    content = content,
}
