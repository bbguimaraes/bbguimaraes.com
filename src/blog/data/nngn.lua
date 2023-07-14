local description <const> = [[Back in 2018, I publicized a project I had been working on intently for more than a year.  Because of the circumstances, it ended up never having its own entry here in this blog.  That is finally being corrected, and I am going to write not just one, but a series of posts about it.]]

local content <const> = {
    video {
        controls = true,
        loop = true,
        preload = "none",
        poster = "/files/nngn/fiona_poster.png",
        sources = {"/files/nngn/fiona.webm"},
    },
    par [[
Back in 2018, I publicized a project I had been working on intently for more
than a year.  Because of the circumstances, it ended up never having its own
entry here in this blog.  That is finally being corrected, and I am going to
write not just one, but a series of posts about it.
]],
    [[
            <aside>
                <p>
See the <a href="tags/nngn.html">nngn</a> tag for other posts on this series.
                </p>
            </aside>]],
    h2_link { "quid", "quid" },
    par [[
It is always difficult for me to even explain exactly what it is.  The shortest
and least interesting version is: a game engine.  However, game development
does not really interest me, so for lack of a better description, I call it a
"2D/3D game/graphics/physics engine".
]],
    par [[
What interests me are the <em>components</em> of game engines, and in reality,
it is simply a place for me to explore those in a coherent manner.  I
implemented it from scratch based on just a few low-level libraries.  From its
humble beginnings in the sleepless nights of my period in college, it has
developed scripting, graphics, physics, and much more &mdash; and consumed an
inordinate amount of time and effort.
]],
    par [[
I do not have any commercial aspirations for the project (if it is not obvious
from the art repurposed from existing games).  It has been from the beginning a
tool for studying and learning and contains work exclusively of my own.  My
goal in sharing it openly is so that those can be extended to other people.
]],
    h2_link { "ubi", "ubi" },
    par [[
The <a href="/nngn">home page</a> for the project has been up for two years,
even though I never mentioned it here.  It has a short description and links to
the source code — the project was always open-source and free — as well as some
screenshots and a video demonstration.
]],
    par [[
Additionally, one of the things I wanted to explore was compilation to
WebAssembly instead of (or as well as) native code.  The page has a link to a
web version of the engine that runs exclusively in the browser, so it can be
tested very easily without downloading or compiling code.
]],
    h2_link { "quo", "quo" },
    par [[
This post was intentionally succinct and light on technical details because, as
I mentioned, I want to delve deeper in future posts.  It is long overdue, but I
want to finally get to that in the following weeks.
]],
    par [[
As a start, <a href="nngn-lua.html">this post</a> describes how Lua is the core
of the engine.  These and all further posts can be found in the
<a href="tags/nngn.html">nngn</a> tag page.
]],
}

return {
    title = "nngn",
    date  = { "1598810048", "2020-08-30T17:54:08" },
    tags = { "nngn", "programming" },
    description = description,
    content = content,
}
