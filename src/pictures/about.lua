local convert <const> = require "lib.convert"
local path <const> = require "lib.path"

local file_path <const> = var "file_path"
local file_url <const> = var "file_url"

local DIR <const> = "pictures"

local generator <const> = convert.deferred_generator:new {
    path_cache = path.set(path.join(file_path(DIR), "*.jpg")),
    profiles = {small = {size = "512x384", suffix = "_small"}},
}

local toc <const> = toc:new()

local notes <const> = notes:new()

local content <const> = lines {
    h1 "pictures",
    tag("aside", {class = "toc"}, lines {
        html "<i>Contents</i>",
        toc,
    }),
    par [[
Recently I decided what was really lacking in my life was yet another activity
which demands a lifetime to master, to obsess over and occupy all the free time
that is already completely occupied by all my other interests.  So I got myself
a camera.
]],
    par(format {
        [[
I never gave photography much consideration: though I always have liked the
visual arts%s, I just did not have the time one
would need to properly invest in them, much as I wish I did, and my complete
inability to take on an activity without obsessively setting extremely high
demands on the quality of the results%s kept me
from giving it much thought.
]],
        notes:add(par [[
Drawing, painting, calligraphy, craft, architecture, sculpture, carving,
ceramics, I like them all.
]]),
        notes:add(par [[
In case you are not a perfectionist and do not know how our mind works.
]]),
    }),
    par(format {
        [[
But some years ago I created a <a href="/places">page</a> to write about my
travels, which is in a way the precursor to this page.  Although the primary
medium there is writing (Instagram has given humanity enough travel pictures
devoid of content), I also include pictures to make the stories there more
vivid.  Those pictures were taken with the only means I had: my
cellphone%s.  While that provided a great
opportunity to learn to make the best out of every
picture%s, I became increasingly frustrated with
the discrepancy between what I saw in person and what ended up in the
photographs.
]],
        notes:add(par [[
Which, following my philosophy — i.e. buy the cheapest that is usable and keep
it until it disintegrates —  has a camera that is medium-quality at best.
]]),
        notes:add(par [[
As you can see from every one taken before September 2025.
]]),
    }),
    par(format {
        [[
So I finally conceded.  Promising myself I would not develop another obsession
(though it was hopeless), after a brief research for “beginner camera” I bought
<a href="#camera">the cheapest I could find</a> that looked functional and
fulfilled my amateur requirements%s.
]],
        notes:add(par [[
I.e.: DSLR, compatibility with various lens, decent video recording and
low-light shooting, the ability to be operated in completely manual mode.
        ]]),
    }),
    par [[
All of this is to say: do not expect anything amazing.  Like the
<a href="/music">music</a> I record (everything I do, really), I am not a
professional and have no intention of becoming one, this page is for the Muses,
<i lang="la">ars gratia artis</i>, and a celebration of the beauty of the world
and our gift and priviledge of being capable of contemplating it.  Enjoy.
]],
    toc:add("licence", "licence"),
    par [[
It feels a bit ridiculous to write this on a page for amateur photography, but
since it has to be stated: all pictures hosted here were taken by myself (and
for myself) with my own equipment and are free to use by anyone for any purpose
without any cost, though it would be nice to be notified and mentioned (well,
and paid, but a link to this web site is enough) in case they are used.
]],
    toc:add("equipment", "equipment"),
    par [[
Listed here mostly for completeness/curiosity, since it is very boring to anyone
who knows anything about photography.  There is nothing special about what I
use, they are just cheap (relatively speaking, considering the price range of
cameras and accessories), entry-level equipment, bought from regular photography
shops in Italy.
]],
    tag("ul", nil, lines {
        toc:add_sub(nil, "camera", "camera"),
        link {
            href = file_url(DIR, "canon_eos_250D.jpg"),
            content = image {
                src = generator:generate_image(
                    var, "small", path.join(DIR, "canon_eos_250D.jpg")),
                alt = "Canon EOS 250D",
                class = "hor-center image",
            },
        },
        li(par(lines {
                "<b>camera</b>:",
                link {
                    href = "https://en.wikipedia.org/wiki/Canon_EOS_250D",
                    content = "Canon EOS 250D",
                },
                [[
(€600).  At least that is how it is called here in Europe, for some reason it
also has several other names, depending on the region: EOS 200D Mark II, EOS
Rebel SL3, Kiss X10.
]],
        })),
        toc:add_sub(nil, "lens", "lens"),
        li(par(lines {
            "<b>lens</b>:",
            lines {
                link {
                    href = "https://en.wikipedia.org/wiki/Canon_EF-S_18%E2%80%9355mm_lens",
                    content = "Canon EF-S18-55mm <i>f</i>/4–5.6 IS STM",
                },
                [[
(€60).  Also very unsurprising: it is (the latest model of) the lens which
usually accompanies this camera.  Not the greatest lens, but it does the job.
]],
            },
        })),
        li(par(lines {
            "<b>telephoto lens</b>:",
            link {
                href = "https://www.tamron.com/global/consumer/lenses/b016/",
                content = "Tamron 16–300mm <i>f</i>/3.5–6.3 Di II VC PZD MACRO",
            },
            format {
                [[
(€350, used).  A more recent addition, somewhat
unexpected%s.
Like the Cannon lens, it is very decent for the price and enough for my level of
proficiency.  Because its extremely wide range of focal length and aperture
encompass that of the other lens (one of the deciding factors for the purchase),
this is the one I use almost all the time, unless the extra size and weight are
not justified.
]],
                notes:add(par [[
Here is the story: I knew from the start I would buy a telephoto lens at some
point.  One day I decided to do some prospective research just to know what cost
to expect and where to place it in my priority list.  This is the model I chose,
after looking at literally hundreds of others.  I then decided to take a quick
look at the website of the local photography shop
(<a href="https://grandemarvin.com" lang="it">Grande Marvin</a>, I recommend it)
and, what do you know, they had this <em>exact</em> model, used, with this very
appealing price and a one-year warranty.  I took it as a divine sign and bought
the lens the next day.
]]),
            },
        })),
        li(par(lines {
            "<b>tripod</b>:",
            link {
                href = "https://www.kfconcept.com/KF09.159_75-lightweight-travel-tripod-phone-camera",
                content = "K&amp;F Concept tripod",
            },
            [[
(€30).  A good “travel” tripod, with universal attachments for cameras and
phones.  It is quite solid and has a good range (48-190cm) while being very
portable (4kg, easily carried attached to a backpack).
]],
        })),
    }),
    par(format {
        [[
I have to say I am very satisfied with this setup.  Any DSLR is going to be a
significant improvement over a phone camera%s,
but I find I can achieve very good results in almost any circumstance.  Just as
with musical instruments, the ideal state is where the equipment is slightly
ahead of the operator.
]],
        notes:add(par [[
Which is not to denigrate the technical wonder those things are, considering the
incredibly tight physical constraints.
]]),
    }),
    toc:add("software", "software"),
    par [[
I have one simple guiding principle when it comes to editing pictures: to try to
make them as faithful to what my eyes saw as possible.  I dislike the
heavily-processed style which produces images that are unnaturally “spectacular”
or “eye-catching”: the real world is already spectacular enough.
]],
    par [[
While it is very rare that a picture will come out perfect straight from the
camera without any modifications, I limit myself to lightly adjusting those
aspects which the eye is much better at processing than a camera sensor:
lighting contrast, depth and variation of color, image sharpness, etc.
]],
    figure {
        caption = format {
            "An extreme example of image editing bringing a picture closer to reality%s.",
            notes:add(par [[
Note for example how the fog and the overly-bright snowy mountain tops hid
details and skewed the color balance, all photographic phenomena not seen in
person, which is what I believe image editing should correct.
]]),
        },
        content = link {
            href = file_url(DIR, "editing.jpg"),
            content = image {
                alt = "GIMP",
                src = generator:generate_image(
                    var, "small", path.join(DIR, "editing.jpg")),
                class = "image",
            },
        },
    },
    par [[
Just as with <a href="/music/about.html">music</a>, I use only free and
open-source software for this (that page also describes how I edit videos,
though they are not as common here).  For the longest time, I used only <a
href="https://www.gimp.org">GIMP</a>, an amazing piece of software which I use
daily for all types of image editing.
]],
    link {
        href = file_url(DIR, "gimp.jpg"),
        content = image {
            alt = "GIMP",
            src = generator:generate_image(
                var, "small", path.join(DIR, "gimp.jpg")),
            class = "image",
        },
    },
    par [[
More recently I discovered <a href="https://www.darktable.org">darktable</a>,
which is designed specifically for photography, instead of general image
editing.  I have been liking and using it more and more (sometimes in
combination with GIMP).  The interface is excellently done and it processes
images very efficiently.  I especially like how different effects can be
iteratively edited independently and are combined in the final image.
]],
    link {
        href = file_url(DIR, "darktable.jpg"),
        content = image {
            alt = "darktable",
            src = generator:generate_image(
                var, "small", path.join(DIR, "darktable.jpg")),
            class = "image",
        },
    },
    par [[
<a href="https://hugin.sourceforge.io">Hugin</a> is a tool to merge multiple
pictures.  It can be used to connect them to form a panoramic view, combine
pictures at different exposition levels in a high-dynamic-range image, etc.  It
required a bit of study and experimentation, but by now it is an essential tool
for me.  One excellent aspect of it is its ability to be scripted, which saves
a lot of time in common operations.
]],
    link {
        href = file_url(DIR, "hugin.jpg"),
        content = image {
            alt = "hugin",
            src = generator:generate_image(
                var, "small", path.join(DIR, "hugin.jpg")),
            class = "image",
        },
    },
    par [[
And there is not much more to it, other than a few home-made scripts to transfer
pictures from the camera's SD card, name them according to the EXIF data, resize
them for previews in this web site, etc.
]],
    toc:add("notes", "notes"),
    notes,
}

return include "master.lua" {
    title = "pictures – about",
    css = {"/main.css", "pictures.css"},
    body_class_extra = "w80",
    nav_path = {{".", "pictures"}, {nil, "about"}},
    main = main(nil, content),
}
