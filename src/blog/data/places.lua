local description <const> = concat {
    inline_tag("p", nil, [[You might have noticed I like to travel.  For a long time, it did not appeal to me to share this aspect of my life, as it is far from being an uncommon interest, especially in the era of vain social media pretension and ostentation, and no end of people traveling to supposedly “find themselves”, but who, in the words of one of the great Roman poets, <span lang="la">“caelum, nón animum mútant, quí tráns mare currunt”</span>.]]),
    inline_tag("p", nil,  [[But that has gradually changed over the past few years, to the point that I have now, after a week of furious programming, added a new <a href="https://bbguimaraes.com/places">section</a> to this web site dedicated to it.  Read on for an explanation, jump to the <a href="https://bbguimaraes.com/blog/places.html#conclusion">conclusion</a> if you do not like to read (but then this is probably not the place for you in the first place…), or just go directly there and explore.]]),
}

local content <const> = {
    figure {
        class = "framed",
        content = link {
            href = "/places",
            content = image {
                src = "/files/places/coreno_ausonio0_small.jpg",
                alt = "Sunset behind the promontory of Gaeta, January 2024",
            },
        },
        caption = "Sunset behind the promontory of Gaeta, January 2024",
    },
    par [[
You might have noticed I like to travel.  For a long time<a
href="#note0"><sup>0</sup></a>, it did not appeal to me to share this aspect of
my life, as it is far from being an uncommon interest, especially in the era of
vain social media pretension and ostentation, and no end of people traveling to
supposedly “find themselves”, but who, in the words of one of the great Roman
poets, <span lang="la">“caelum, nón animum mútant, quí tráns mare
currunt”</span><a href="#note1"><sup>1</sup></a>.
]],
    par [[
But that has gradually changed over the past few years, to the point that I have
now, after a week of furious programming, added a new <a
href="/places">section</a> to this web site dedicated to it.  Read on for an
explanation, jump to the <a href="#conclusion">conclusion</a> if you do not like
to read (but then this is probably not the place for you in the first place…),
or just go directly there and explore.
]],
    h2_link { "method", inline_tag("span", {lang = "grc"}, "Μέθοδος") },
    figure {
        class = "framed",
        content = link {
            href = "/files/blog/the_death_of_socrates.jpg",
            content = image {
                src = "/files/blog/the_death_of_socrates_small.jpg",
                alt = "Jacques-Louis David, “La mort de Socrate”, 1787",
            },
        },
        caption = inline_tag(
            "span", {lang = "fr"},
            "Jacques-Louis David, “La mort de Socrate”, 1787"),
    },
    par [[
I do have a very particular method<a href="#note2"><sup>2</sup></a> of traveling
and of writing and posting about it, which I initially attributed to me being
very different from most, if not all, people — I have a very different
perspective with regards to almost everything in life, so there is no reason why
traveling should be different.
]],
    par [[
But traveling with others (which is not something I commonly do, I rather enjoy
being by myself) and sharing these experiences I eventually discovered there
<em>is</em> quite an interest, at least from a few select people, and that has
led me to change my mind and start publishing some of my remarks about the
places I have been to.  Even though the reward for any creative work is in the
process itself, if one is fortunate it also happens to be interesting and
pleasing to others, and the response I have received has made me more inclined
to continue sharing.
]],
    h2_link { "media", "Media" },
    figure {
        class = "framed",
        content = link {
            href = "/files/blog/vision_of_the_valley_of_dry_bones.jpg",
            content = image {
                src = "/files/blog/vision_of_the_valley_of_dry_bones_small.jpg",
                alt = "Gustave Doré, “La vision de la vallée des os secs”, 1866",
            },
        },
        caption = inline_tag(
            "span", {lang = "fr"},
            "Gustave Doré, “La vision de la vallée des os secs”, 1866"),
    },
    par [[
But the medium frustrates me immensely.  It is no secret I find social media
abhorrent — in particular the wasteland that is Instagram — with their evident
mechanisms for stimulating and rewarding addictive behavior and, what is an even
worse sin, vanity and mediocrity.  I find myself continually fighting the
ridiculous limitations arbitrarily imposed by them.
]],
    par [[
For all of these reasons, I am adding a new section dedicated to my travels to
my personal web site.  This is where I publish everything I consider important:
my personal and professional projects, writings, music, … in short, the endless
list of things I am fascinated by — and now also these notes, which have
increased in importance so that they now deserve to be among those.
]],
    par [[
Here I will have complete freedom of form and content, and will not be
restricted by the previously-mentioned deplorable policies of other platforms,
to name just a few:
]],
    ul {
        par [[
No text length restriction, which is my primary source of frustration.  Social
media sites, most egregiously Instagram (you can prepend this to every
complaint/insult in this text), obviously prefer short bursts of inane
platitudes, preferably just a list of hash tags<a
href="#note3"><sup>3</sup></a>.  I, on the contrary, like words, so it is
extremely difficult to conform to that limited space.
]],
        par [[
No number, size, dimension, or other image restrictions, pictures and videos
will be the originals taken from my camera, as many as I want, not some
resized/cropped/compressed version, and viewers will have direct access to them
as regular images on the Internet and be able to do whatever they want with
them.
]],
        par [[
I can add any kind of formatting I want, including links<a
href="#note4"><sup>4</sup></a> to other posts and additional sources of
information and other extremely primitive functionality of the Internet we used
to have in the good old days.
]],
        par [[
The four or five people who, like me, still receive updates primarily using <a
href="https://en.wikipedia.org/wiki/RSS">RSS</a> (the vastly-superior method)
can use this web site's <a href="https://bbguimaraes.com/rss.xml">feed</a>,
available also via the familiar icon at the top-right corner of every page, to
also follow that type of content.
]],
        par [[
Everything I already <a href="/blog/mv-home.html">wrote</a> back in 2019 when I
moved this web site to my own server, which have only gotten far worse five
years later.
]],
    },
    h2_link { "conclusion", "Conclusion" },
    par [[
In summary, from now on <a
href="https://bbguimaraes.com/places">https://bbguimaraes.com/places</a> will be
the primary location for these posts.  They will still be posted on <a
href="/contact.html">Facebook and Instagram</a>, but will be an incomplete and
inferior version of the ones here.  If you primarily use Instagram, sorry (in
general).  I will still put links there but they will of course not be
clickable, you will have to copy/paste them or, if you are on a phone (God help
you), come here yourself.
]],
    par [[
It is not lost on me that this will mean (even) less “followers”, “likes”,
“views”, or whatever false idols people attach their worth to these days, but
this has never been about numbers for me.  The best responses I have had to my
posts have been from those who do not even interact in that way, but have told
me personally and privately that they always read and enjoy them.  One of these
is worth more than all the others to me.
]],
    par [[
I tried my best to give this text a positive tone and to offer alternatives
instead of just pouring out negativity, but this is one of the very few subjects
which genuinely upset me — yes, they do exist!  I continually see the extremely
negative influence these platforms have, even to the point of losing friends and
people I care about in no small part because of it, and so, as usual in
everything I do, here I attempt to show a different way of looking at things.
]],
    par [[
The real journey of self-discovery is not inwards or outwards, but upwards
(<span lang="grc">“οὐδαμοῦ γὰρ οὔτε ἡσυχιώτερον οὔτε ἀπραγμονέστερον ἄνθρωπος
ἀναχωρεῖ ἢ εἰς τὴν ἑαυτοῦ ψυχήν”</span><a href="#note5"><sup>5</sup></a>), and I
hope you find reading these posts as enriching and enjoyable as I find writing
them.
]],
    h2_link { "notes", "Notes" },
    tag("ol", {start = 0}, lines {
        tag("li", {id = "note0"}, par [[
Those who have not known me for long may not know that I only created my
Instagram account at the end of last year (2023), almost out of compulsion (you
can see my first post there, which I have pinned, for my general opinion about
it).  But, I have to say, discovering that <em>that</em> was how many spend a
large portion of their day suddenly helped me understand so much about the
current state of humanity.
]]),
        tag("li", {id = "note1"}, par [[
“Sky, not spirit change, those who run across the sea”<br />
— Quintus Horatius Flaccus, “Epistulae”/“Epistles”, I.11
]]),
        tag("li", {id = "note2"}, par [[
“Method”, while we are at it, the μετά-ὁδός, is literally a pursuit or
“transcending path”, so a very appropriate word in this context.
]]),
        tag("li", {id = "note3"}, par [[
#peace #love #gratitude #life #nature #travel
]]),
        tag("li", {id = "note4"}, par [[
How humanity has elected as their primary source of contact and entertainment a
platform which does not even support links… <em>links!</em> is absolutely beyond
my comprehension.
]]),
        tag("li", {id = "note5"}, par [[
“For nowhere either with more quiet or more freedom from trouble does a man
retire than into his own soul”<br />
— Marcus Aurelius, <span lang="grc">“Τὰ εἰς ἑαυτόν”</span>/“Meditations”, IV.3
]]),
    }),
}

return {
    title = "~/places",
    style = "w80 roman white-bg",
    date = {"1717138320", "2024-05-31T06:52:00"},
    tags = {
    },
    description = description,
    content = content,
}
