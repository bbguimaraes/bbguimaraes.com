local description <const> = [[An unplanned recording, but I've been obsessed with the Unplugged album for months now.]]

local content <const> = lines {
    par [[
An unplanned recording, but I've been obsessed with the <i>Unplugged</i> album
for months now (for years really, ever since I bought it, back in the good old
days of CDs and record stores).  How can you resist learning those masterful
songs and guitar parts?
]],
    par [[
Clapton has always been one of my favorite musicians, and to me this album is
impeccable.  So it's very difficult to choose a favorite, but this might be the
one (but then there's <i>Old love</i>, and <i>Tears in heaven</i>, and …).
]],
    par [[
The Ibanez is really loud (but it sounds so good!), it's difficult to record
anything else with it.  Better microphone placement next time, but this is what
we get today.
]],
    blockquote(lines {
        par [[
I must be invisible<br />
No one knows me<br />
I have crawled down dead-end streets<br />
On my hands and knees<br />
<br />
I was born with a raging thirst<br />
A hunger to be free<br />
But I've learned through the years<br />
Don't encourage me<br />
<br />
'Cause I'm a lonely stranger here<br />
Well beyond my day<br />
I don't know what's going on<br />
I'll be on my way
]],
    }),
}

return {
    id = "lonely-stranger",
    title = "Lonely stranger",
    author = "Eric Clapton",
    timestamp = { 1739287293, "2025-02-11T15:21:33" },
    duration = "1:07",
    poster = "0:24",
    scores = {
        link {
            href = "/files/music/lonely_stranger.pdf",
            content = "score",
            target = "_blank",
        },
        link {
            href = "/files/music/lonely_stranger.mscz",
            content = "source",
            target = "_blank",
        },
    },
    tags = {"guitar", "vocals", "short"},
    links = {
        youtube = "HwzKzfG0Wn8",
        mastodon = "113986183293359442",
        facebook = "reel/625871430137895",
        instagram = "DF8I752IhKn/",
    },
    description = description,
    content = content,
}
