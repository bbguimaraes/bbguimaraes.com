local convert <const> = require "lib.convert"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local file_path <const> = var "file_path"
local file_url <const> = var "file_url"

local description <const> = [[My web site now has a new appearance.]]

local DIR <const> = path.join("blog", "redesign")
local notes <const> = notes:new()
local generator <const> = convert.deferred_generator:new {
    path_cache = path.set(file_path(DIR, "*.jpg")),
    profiles = {
        tiny = {size = "x150>", suffix = "_tiny"},
    },
}

local function music_img(i, year)
    local src <const> = path.join(
        DIR, string.format("music%d.jpg", tostring(i - 1)))
    return link {
        href = file_url(src),
        content = image {
            alt = year,
            title = year,
            class = "image",
            src = generator:generate_image(var, "tiny", src),
        },
    }
end

local content <const> = {
    par(format {
        [[
My web site now has a new appearance.  If you had ever visited it, and you are a
human being and not a machine, you probably felt a bit lost — and if not, below
is how the home page used to look like.  There was a reason for this: it was
conceived, from its humble beginnings back in the prehistorical days of
2012%s, to be a place where I could publish
technical content, specifically topics related to computer programming, my area
of professional expertise.
]],
        notes:add(lines {
            par(format {
                [[
The first version of this blog was created and hosted on Google's
Blogspot/Blogger service.  In 2015, I created the version you see in the
picture, from then on all written by myself and hosted on my own server, and in
2019 moved all content here.  Since it is a static web site stored in
%s,
you can go look at its entire history, and I can
%s
the very first version for your viewing (dis)pleasure (the link to Google+
attests to how ancient it is, read %s
if you are a spring chicken and have never heard of it):
]],
                link {
                    href = "https://gitlab.bbguimaraes.com/bbguimaraes/bbguimaraes.com.git",
                    content = "<code>git</code>",
                },
                link {
                    href = "https://www.youtube.com/watch?v=hihEhsdwiIk",
                    content = "summon from the grave",
                },
                link {
                    href = "https://en.wikipedia.org/wiki/Google%2B",
                    content = "this",
                },
            }),
            figure {
                content = image_link {
                    alt = "The very first version of this web site.",
                    src = file_url(DIR, "v0.jpg"),
                    class = "image",
                    width = 200,
                },
            },
        }),
    }),
    image_link {
        alt = "before",
        src = file_url(DIR, "comp.jpg"),
        class = "image",
        width = 200,
    },
    h2_link { "metamorphosis", "metamorphosis" },
    par(format {
        [[
For a long time, this intentionally austere and cryptic style was perfectly
appropriate, as those who were interested in and who could understand the
esoteric and highly specific topics I wrote about were likely the same set of
people.  But over time the scope expanded, in concert with my interests: as I
became established professionally, my focus could be directed (or dispersed) to
other areas of life.  And because of my %s to
always host my own content, instead of leaving it at the mercy of inferior and
restrictive platforms, more and more varied sections started to appear:
]],
            link {
                href = "mv-home.html",
                content = "rule",
            },
    }),
    ul {
        format {
            [[
the first, and most significant, was the %s section,
added in %s]],
            link { href = "/music", content = "music" },
            link { href = "music.html", content = "2017" },
        },
        format {
            "a page dedicated to %s in 2020",
            link { href = "lib.html", content = "literature" },
        },
        format {
            "a %s in %s",
            link { href = "/places", content = "traveling journal" },
            link { href = "places.html", content = "2024" },
        },
        format {
            [[
those dedicated to %s and
%s, added just last month
]],
            link { href = "pictures.html", content = "photography" },
            link { href = "writing.html", content = "writing" },
        },
    },
    par(format {
        [[
At the same time, my taste and style evolved%s,
and the old look represented a progressively smaller aspect of myself and the
content of these pages.  In addition, with each new section the potential
audience grew, both in size and in variety — which is not to say this was
intentional or planned, the last thought on my mind when starting a new project
is how many people will be interested in it%s.
But it did mean more and more… <i>normal</i> people got to my page and
experienced the aforementioned confusion.
]],
        notes:add(lines {
            par [[
The music page is the perfect example of the evolution of this web site's style
over the years:
]],
            div(
                {class = "img-group"},
                lines(util.imap(
                    music_img, {2017, 2022, 2023, 2024, 2024, 2025, 2026}))),
        }),
        notes:add(par [[
With the current state of humanity and the internet, that factor to me has the
inverse effect, if anything.
]]),
    }),
    h2_link { "rewrite", "rewrite" },
    par [[
All of this led me to perform the largest redesign and reformulation this web
site has ever seen.  I found myself with plenty of free time around the
Christmas holidays (though, with all my interests, my time is never really
<i>free</i>, just distributed differently), and a strong need to shut off the
outside world and dedicate myself to laboring over something meaningful.
]],
    par(format {
        [[
What you see now is the product of about two months of work, though more than
half of that effort was spent on the actual content of the pages and on
improving the code used to generate them%s.  As a
result, and I hope you will agree, they all look more unified, human, and I dare
say beautiful.  In particular, the %s should now be much
more understandable to everyone%s, while also
giving a better idea of the multitude of different pages found in here — and of
the reason why I live the life of a hermit.
]],
        notes:add(par(format {
            [[
Which I wrote myself, see %s if you are interested in the details.
]],
            link {
                href = "/contact.html",
                content = "this page",
            },
        })),
        link {
            href = "/",
            content = "home page",
        },
        notes:add(par(format {
            [[
For the machines among you: do not worry, the old home page still
%s, virtually unchanged, but is now properly nested as a
subsection of the general content.
]],
            link {
                href = "/comp",
                content = "exists",
            },
        })),
    }),
    par [[
Lastly, as a sort of celebration (and because why not do it), this page is now
also available via a shorter name:
]],
    div({class = "center-text text-large"}, link {
        href = "https://bbguimara.es",
        content = "bbguimara.es",
    }),
    h2_link { "notes", "notes" },
    notes,
}

return {
    title = "Redesign",
    style = var("body_class"),
    timestamp = { 1769238089, "2026-01-24T07:01:29" },
    tags = {"meta"},
    description = description,
    content = content,
}
