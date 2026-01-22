local cit <const> = [[
οὐδαμοῦ οὔτε ἡσυχιώτερον οὔτε ἀπραγμονέστερον
ἄνθρωπος ἀναχωρεῖ ἢ εἰς τὴν ἑαυτοῦ ψυχήν
]]

local cit_en <const> = [[
for nowhere either with more quiet and more freedom from trouble does a man
retire than into his own soul
]]

local sections <const> = {{
    items = {
        link {
            href = "/files/cv.pdf",
            title = "CV",
            content = "curriculum vitae",
        },
    },
}, {
    items = {
        lines {
            html "email:",
            link {
                href = "mailto:bbguimaraes@bbguimaraes.com",
                content = "bbguimaraes​@​bbguimaraes​.​com",
            },
        },
        lines {
            html "matrix:",
            link {
                href = "https://matrix.to/#/@bbguimaraes:matrix.bbguimaraes.com",
                content = "@bbguimaraes:matrix.bbguimaraes.com",
            },
        },
        lines {
            html "mastodon:",
            link {
                href = "https://mastodon.bbguimaraes.com/@bbguimaraes",
                content = " @bbguimaraes@bbguimaraes.com",
            },
        },
    },
}, {
    items = {
        link {
            href = "https://www.reddit.com/u/bbguimaraes",
            content = "/u/bbguimaraes",
        },
        link {
            href = "https://www.youtube.com/user/bbgstb",
            content = "youtube",
        },
        link {
            href = "https://facebook.com/bruno.barcarolguimaraes",
            content = "facebook",
        },
        link {
            href = "https://www.instagram.com/bruno.barcarolguimaraes/",
            content = "instagram",
        },
        link {
            href = "https://www.linkedin.com/in/bruno-barcarol-guimar%C3%A3es-15037551",
            content = "linkedin",
        },
    },
}}

return include "list_simple.lua" {
    title = "contact",
    list_title = "Bruno Barcarol Guimarães",
    description = lines {
        blockquote(lines {
            text_tag("p", {lang = "grc"}, cit),
            par(cit_en),
            quote_footer(
                "Marcus Aurelius",
                "Meditations",
                link {
                    href = "https://www.youtube.com/watch?v=GJ1LPtf3Fa4",
                    content = "IV.3",
                }),
        }),
        hr(),
        par [[
Below you'll find other means to contact me, in descending order of preference.
You'll also find links to social media I reluctantly use.  Those for the most
part serve just to publish inferior versions of the pages here, with links to
them.
]],
        par [[
I highly recommend — not just for this web site, but for everything on the
internet — using the <a href="rss.xml">RSS</a> feed (which you can also find via
the icon on the top right of every page) to be notified when I publish something
new.
]],
        par [[
You can find the code behind this web site
<a href="https://gitlab.bbguimaraes.com/bbguimaraes/bbguimaraes.com.git">here</a>.
It's very simple HTML, with a minimal amount of CSS and Javascript, all written
from scratch and served statically by one <code>nginx</code> server hosted in
Hetzner.
]],
        par [[
For almost a decade it was all manually written using only <code>vim</code>.
Then, I created a small static web site generator, also written from scratch in
<a href="https://www.lua.org">Lua</a>, because I'm a programmer and that's what
we do for recreation.  You can find all of the code and the history in the
<code>git</code> repository linked above.
]],
        hr(),
    },
    header = link {
        href = "/files/contact.jpg",
        content = image {
            class = "float-right image",
            src = "/files/contact_small.jpg",
            title = "me",
            alt = "me",
        },
    },
    nav_path = {{nil, "contact"}},
    sections = sections,
}
