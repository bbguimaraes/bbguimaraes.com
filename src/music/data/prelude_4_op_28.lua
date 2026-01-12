local description <const> = [[
The sound of absence and longing.
]]

local content <const> = lines {
    par(description),
    tag("blockquote", nil, lines {
        par [[
With all that I tried to suggest to students, you get a feeling of a piece… one
of the most profound ones that Chopin ever wrote.  It's a beloved piece.  In
fact, it's so beloved that it was performed at Chopin's funeral.  And everything
in the piece &mdash; the chromatic harmonies, and the two-note phrases, crying
&mdash; it's a piece that projects deep emotion of the most intense kind, of a
man who is really dying in his thirties.  And it's rewarding for us to go into
that area of emotional understanding.
]],
        par [[
Because you see, in the final analysis musicians are very fortunate people
because, in order to interpret music properly, we have to know three major
things.  We have to know emotionally what the composer is trying to convey, we
can't just play with our feelings; we have to understand intellectually
everything on the printed page; and then the third thing is that's not
sufficient: we have to make a physical connection to everything that we feel
and think.  And what that means is that we're working on our person, not just
our talent, and that's what you take away from your practice sessions.  So that
everything that you learn through the discipline of music you project into
everything you do in life.
]],
        tag("footer", nil, par(concat {
            "&mdash; ",
            tag("cite", nil, link {
                href = "https://www.youtube.com/watch?v=pRLBBJLX-dQ",
                content = "Seymour Bernstein",
                target = "_blank",
            }),
            "\n",
        })),
    }),
}

return {
    title = "Prelude 4, op. 28",
    author = "Frédéric François Chopin",
    timestamp = { 1690716480, "2023-07-30T11:28:00" },
    duration = "2:30",
    poster = "0:39",
    scores = {
        link {
            href = "https://imslp.org/wiki/Preludes%2C_Op.28_(Chopin%2C_Fr%C3%A9d%C3%A9ric)",
            content = "score",
            target = "_blank",
        },
    },
    tags = {"piano"},
    links = {
        youtube = "NCk9XZCStJQ",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0cbhWAHPUxc2QYMxnpRHBjPhkPS2gC2e5He8Ut7bdttRAMDoh2eqNQwDxmhKrd4h4l",
    },
    description = description,
    content = content,
}
