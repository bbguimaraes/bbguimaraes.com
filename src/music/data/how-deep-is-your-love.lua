local description <const> = [[Some songs are just perfect, and this is one of them.]]

local content <const> = lines {
    par [[
Some songs are just perfect, and this is one of them.
]],
    par [[
This song from the Bee Gees has always been a favorite of mine to strum on the
guitar, ever since I learned it years ago — I believe after watching a video (of
very poor quality) of John Frusciante playing it (<a
href="https://www.youtube.com/watch?v=q7o-9JuzlD4">here</a> is a more decent
version).  Over time it started to develop, with no goal or direction, simply
carried away by the beauty of the lyrics, the chord progression, and the
interleaving melodies.
]],
    par [[
Last year was a very turbulent one for me, for a variety of reasons; but these
are also the times which ultimately distinguish what in life is real, solid, and
lasting, and what is illusory, shifting, and ephemeral.  Music is one of the
vanishingly few things which consistently remain in the first category — as
Dostoevsky wrote in <i>The Idiot</i>:
]],
    blockquote [[
beauty will save the world
]],
    par [[
But that is only true of real beauty, of real art —  and of real love.  That is
the test for the reality of it.  Anything else is merely a form of deception, of
one's self and/or of others, and so, even though the question which gives the
song its title is formulated in the second person, I found myself asking it
reflexively, in Platonic fashion: how deep really are the objects of your love,
and your love for them?  And I kept coming back to this song again and again,
until it got close to what you hear in this recording.
]],
    par [[
The arrangement then sat here with me for a long time.  I am now finally able to
work on my music again and have all the requirements to do it justice (as best
as I can) so, with a few final touches added, here it is.  Enjoy.
]],
    html '<hr class="small-div" />',
    blockquote(lines {
        par [[
I know your eyes in the morning sun<br />
I feel you touch me in the pouring rain<br />
And the moment that you wander far from me<br />
I want to feel you in my arms again
]],
        par [[
And you come to me on a summer breeze<br />
Keep me warm in your love, then you softly leave<br />
And it's me you need to show<br />
How deep is your love
]],
    }),
}

return {
    id = "how-deep-is-your-love",
    title = "How deep is your love",
    author = "Bee Gees",
    date = {"1723402285", "2024-08-11T18:51:25"},
    duration = "1:25",
    scores = {
        link {
            href = "/files/music/how_deep_is_your_love.pdf",
            content = "score",
            target = "_blank",
        },
        link {
            href = "/files/music/how_deep_is_your_love.mscz",
            content = "source",
            target = "_blank",
        },
    },
    tags = {"guitar", "bass", "short"},
    links = {
        youtube = "B09bdzJT7Vw",
        mastodon = "112947752859372011",
        facebook = "reel/1631339390992899",
        instagram = "C-iqOMxq9w6",
    },
    description = description,
    content = content,
}
