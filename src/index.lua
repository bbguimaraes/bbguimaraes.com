local util <const> = require "lib.util"

local file_url <const> = var "file_url"

local function generate_section(_, t)
    return tag("section", nil, lines {
        link {
            class = "section-header",
            href = t.href,
            content = image {
                class = "image",
                alt = t.title,
                src = t.image,
            },
        },
        div(nil, lines {
            inline_tag("h2", nil, link {
                href = t.href,
                content = t.title,
            }),
            par(inline_tag("i", nil, t.subtitle)),
            t.content,
        }),
    })
end

local sections <const> = {{
    href = "music",
    title = "music",
    subtitle = "audio/video recordings, transcriptions",
    image = file_url("music", "running_away.png"),
    content = par [[
Without it, life would be a mistake (Friedrich Nietzsche, <i>Twilight of the
idols</i> — alternatively: it would B♭).  Music is absolutely essential to me,
and I've learned to play a variety of instruments of the years, to varying
degrees of success, though I'm not a professional (evidently, nor do I have the
ambition to be one, not in this life).  These recordings are for myself and the
Muses, and for whoever else might enjoy them.
]],
}, {
    href = "comp",
    title = "comp",
    subtitle = "personal and professional projects, articles, lectures",
    image = file_url("index", "comp.png"),
    content = lines {
        par [[
My entire professional career, which by now is approaching two decades, has been
as a computer programmer (perhaps surprisingly, given the content of the rest of
these pages, but it is what it is).  Mathematics, physics, and everything
related to computer science and engineering have always been very close to my
heart, and subjects I research and practice constantly.
]],
        par(text_tag("small", nil, [[
(this is where the old home page went, in case you were wondering)
]])),
    },
}, {
    href = "places",
    title = "places",
    subtitle = "traveling journal, pictures",
    image = file_url("places", "header_small.jpg"),
    content = par [[
History, geography, philosophy, culture, language, … the world is too
interesting, and I spend much of my leisure time (though it can hardly be called
that) travelling, visiting, exploring, and learning about the amazing places on
this planet.  Writing about those experiences makes me learn even more, and
serves as a lasting memory — <i lang="la">verba volant, scripta manent</i>.
]],
}, {
    href = "lib",
    title = "literature",
    subtitle = "reading lists, book reviews, publications",
    image = file_url("lib", "header_small.jpg"),
    content = par [[
Books have always been my closest companions, and I've been a voracious reader
from infancy.  There is nothing like the world of literature, where we can
“abstract ourselves from our own petty fleeting span of time, and give ourselves
up with our whole mind to what is vast, what is eternal, what we share with
better men than ourselves” (Seneca, <i lang="la">De brevitate vitae</i>).
]],
}, {
    href = "writing",
    title = "writing",
    subtitle = "essays, divagations, encomia, diatribes",
    image = file_url("writing", "header_cropped_small.jpg"),
    content = par [[
<i>The great poet, in writing himself, writes his time</i>.  While I'm no
Seneca, Shakespeare, or T. S. Eliot, I like words in all their forms, and I
enjoy the process and practice of writing: it assists the mind in ordering and
developing ideas.  Words shape your view of the world, and ultimately shape your
soul (which is why the origin of <i>character</i> is the verb <span
lang="grc">χαράσσω</span>, <i>to carve</i>).  Here you can find a varied,
loosely-related collection of texts which don't fall under any other category.
]],
}, {
    href = "pictures",
    title = "pictures",
    subtitle = "amateur photography",
    image = file_url("index", "pictures.jpg"),
    content = par [[
Recently I decided what was really lacking in my life was yet another activity
which demands a lifetime to master, to obsess over and occupy all the free time
that is already completely occupied by all my other interests.  So I got myself
a camera.
]],
}, {
    href = "contact.html",
    title = "contact",
    subtitle = '<span lang="la">de me ipso</span>',
    image = file_url("index", "contact_small.jpg"),
    content = par [[
Personal information, other places to find me, about this page, etc.
]],
}}

return include "master.lua" {
    title = "bbguimaraes.com",
    body_class = "white-bg roman",
    css = {"main.css", "index.css"},
    main = lines {
        div({class = "w80"}, include "nav.lua" {
            nav_path = {{"/", "bbguimaraes.com"}},
        }),
        main(
            {class = "sections"},
            lines(util.table_concat(
                util.imap(generate_section, sections),
                hr()))),
    },
}
