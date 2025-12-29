local content <const> = lines {
    par [[
Day 24 without a musical instrument, I think the longest I've ever been without
playing music since I was 15. So here I am editing old, unfinished recordings to
try to stay sane.
]],
    par [[
Here is a rough version of the guitar solo from “Something”, one of George
Harrison's finest songs and guitar works. The recording is from some months ago,
but I learned it years before and it has been the soundtrack of many nights
where it's just me and my guitar.
]],
    par [[
One day I'll record it properly and in full, but today this is all I can do.
There's only video for the main guitar part, so you'll have to imagine the
rhythm guitar and bass.
]],
    blockquote(lines {
        par [[
Somewhere in her smile, she knows<br />
That I don't need no other lover<br />
Something in her style that shows me
]],
        par [[
I don't want to leave her now<br />
You know I believe and how<br />
]],
        par [[
You're asking me, will my love grow?<br />
I don't know, I don't know<br />
You stick around, now, it may show<br />
I don't know, I don't know
]],
    }),
}

return {
    id = "something-solo",
    title = "Something (guitar solo)",
    author = "The Beatles",
    timestamp = { 1707784486, "2024-02-13T00:34:46" },
    duration = "0:37",
    poster = "0:07.8",
    scores = {
        link {
            href = "/files/music/something_solo.pdf",
            content = "score",
            target = "_blank",
        },
        link {
            href = "/files/music/something_solo.mscz",
            content = "source",
            target = "_blank",
        },
    },
    tags = {"guitar", "bass", "short"},
    links = {
        youtube = "mCWKgva04ms",
        mastodon = "111921426945685062",
        facebook = "reel/1391962705043972",
        instagram = "C3QhqZ4qk9i",
    },
    content = content,
}
