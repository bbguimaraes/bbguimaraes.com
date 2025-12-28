local img_class <const> = "hor-center image"

local toc <const> = ul {
    link { href = "#licence", content = "licence" },
    lines {
        link { href = "#sheets", content = "sheets" },
        ul {
            link { href = "#musescore", content = "musescore" },
            link { href = "#imslp", content = "IMSLP" },
        },
    },
    lines {
        link { href = "#instruments", content = "instruments" },
        ul {
            link { href = "#bass", content = "bass" },
            link { href = "#guitar", content = "guitar" },
            link { href = "#piano", content = "piano" },
            link { href = "#acoustic-guitar", content = "acoustic guitar" },
            link { href = "#mandolin", content = "mandolin" },
        },
    },
    lines {
        link { href = "#recording", content = "recording" },
        ul {
            link { href = "#microphone", content = "microphone" },
            link { href = "#pre-amp", content = "pre-amp" },
            link { href = "#camera", content = "camera" },
        },
    },
    lines {
        link { href = "#software", content = "software" },
        ul {
            link { href = "#audio", content = "audio" },
            link { href = "#video", content = "video" },
        },
    },
}

local content <const> = lines {
    inline_tag("h1", nil, "music"),
    tag("aside", nil, lines {
        html "<i>Contents</i>",
        toc,
    }),
    par [[
This is the page where I put all of my music recordings.  Here I upload
full-length videos, uncompressed and in full resolution, as well as audio files,
<a href="#sheets">music sheets</a>, additional information, etc., without the
restrictions of the various social media sites (but there are also links to
those here, if you are a masochist).
]],
    par [[
It doesn't need to be said, but I am (at best) an amateur musician; I make these
recordings because:
]],
    ol {
        str [[
each one is a personal challenge, even when that is dealing with frustration,
and a great learning experience]],
        str [[
they become a nice record of a particular point in my life (musical and
otherwise)]],
        str [[
music is one of the most important things in my life, I absolutely love it, and
I enjoy bringing into the world the music I have inside of me.]],
    },
    par [[
And I hope you enjoy them too =)
]],
    h2_link { "licence", "licence" },
    par [[
First, the disclaimers.
]],
    par [[
Every piece of content here is free to use for any end, and has no commercial
purpose.  Copyright of the music obviously does not belong to me.
]],
    par [[
Everything music-related I do, from studying to composing to recording and
publishing, is done exclusively using <a href="https://en.wikipedia.org/wiki/Free_software">free and open-source software</a>.
]],
    h2_link { "sheets", "sheets" },
    par [[
My memory is terrible, so I write down almost everything I study.  I am not a
professional musician (clearly), so it may happen that I will not play a piece
for some time and <em>completely</em> forget it.
]],
    par [[
These notes are also very helpful while I am studying.  Every piece I learn is
meaningful and important to me in some way, and so I try to learn the original
with as much fidelity and in as many of the original instruments as I can, even
if that is not how I am going to play them in the end.
]],
    par [[
And since these sheets are part of the recording process anyway, why not make
them available to other people?  Most pages here have links to them, both the
finished product and the “source code” to recreate it (see the next section).  I
try to keep them as close to the recording as I can, though what I play may not
be 100% pre-written, so some details may escape me when I re-edit the sheet, but
they should be close enough to be helpful.
]],
    h3_link { "musescore", "musescore" },
    par [[
I do all my music transcription and composition using <a
href="https://musescore.org">MuseScore</a>, a fantastic piece of software, which
just keeps getting better and better over time.  Next to the resulting PDF file,
I also include the <code>mscz</code> file which generated it, so it can be
recreated, edited, and adapted for any use.
]],
    link {
        href = "/files/music/musescore.png",
        content = image {
            src = "/files/music/musescore_small.png",
            title = "Musescore",
            alt = "Musescore",
            class = img_class,
        },
    },
    h3_link { "imslp", "IMSLP" },
    par [[
I also cannot fail to mention the amazing <a href="https://imslp.org">Petrucci
Music Library</a>, a web site which makes available public-domain music sheets,
some of which I have used and included in these pages.  If you are a fellow
lover of classical music, make sure you take a look, they have absolutely
beautiful scans of old sheets (by which I mean <em>centuries</em> old),
including some of the original manuscripts by the composers themselves or their
contemporaries.
]],
    link {
        href = "/files/music/imslp.png",
        content = image {
            src = "/files/music/imslp_small.png",
            title = "IMSLP",
            alt = "IMSLP",
            class = img_class,
        },
    },
    h2_link { "instruments", "instruments" },
    par [[
The obligatory obsessively-detailed description of the recording equipment.
]],
    par [[
These days, I have arrived at my dream collection of instruments: a small set,
all of which I love very much.  In no particular order:
]],
    tag("ul", nil, lines {
        link { id = "bass" },
        link {
            href = "/files/music/jazz_bass.jpg",
            content = image {
                src = "/files/music/jazz_bass_small.jpg",
                alt = "Jazz Bass",
                title = "Jazz Bass",
                class = img_class,
            },
        },
        li(par [[
<b>bass</b>: 1996 USA Fender V Jazz Bass.  The bass was the first instrument I
learned to play, and the one which defined my playing and how I like things to
sound.  This Jazz bass was the first “real” instrument I bought, and is still
one of my favorites.
]]),
        link { id = "guitar" },
        link {
            href = "/files/music/telecaster.jpg",
            content = image {
                src = "/files/music/telecaster_small.jpg",
                alt = "Telecaster",
                title = "Telecaster",
                class = img_class,
            },
        },
        li(par [[
<b>guitar</b>: 2023 Mexican Fender Telecaster.  My newest baby.  Ever since I
knew anything about guitars, I knew I wanted a Tele.  I'm not a phenomenal
guitar player, but I love the way it sounds, so it features frequently in my
arrangements.
]]),
        link { id = "piano" },
        link {
            href = "/files/music/fp_80.jpg",
            content = image {
                src = "/files/music/fp_80_small.jpg",
                alt = "Roland FP-80",
                title = "Roland FP-80",
                class = img_class,
            },
        },
        li(lines {
            par [[
<b>piano</b>: 2013 Roland FP-80 digital piano.  If I was forced to choose just
one instrument, it would be the piano, and this one is the stuff of dreams.  It
has a fantastic weighted keyboard, the best I've ever seen on a digital
instrument.  The built-in sounds are pretty great too, so much so I just use
them directly when I record.
]],
            par [[
In some of my older videos, you will also see a Nord Electro 5 HP, which I used
to own (and loved), but had to sell when I moved.  In even older videos you will
see a Yamaha DGX-620, my first “real” digital piano, back when I was just
learning to play (but you can skip those =).
]],
        }),
        link { id = "acoustic-guitar" },
        link {
            href = "/files/music/ibanez.jpg",
            content = image {
                src = "/files/music/ibanez_small.jpg",
                alt = "Ibanez",
                title = "Ibanez",
                class = img_class,
            },
        },
        li(par [[
<b>acoustic guitar</b>: 2016 Ibanez GA15-NT.  Having grown up in the pampas of
Latin America, the classical guitar resonates deep in my soul, and I really like
the sound of this Ibanez.  Even though it's a pain to play and record, I include
it whenever I can.
]]),
        link { id = "mandolin" },
        link {
            href = "/files/music/richwood.jpg",
            content = image {
                src = "/files/music/richwood_small.jpg",
                alt = "Richwood",
                title = "Richwood",
                class = img_class,
            },
        },
        li(par [[
<b>mandolin</b>: for completeness, you will also see on some videos my old
Richwood F-style mandolin.  Unfortunately, it no longer lives (R.I.P.), but I
loved playing it and plan to get myself another one as soon as possible.
]]),
    }),
    h2_link { "recording", "recording" },
    par [[
My recording setup is almost comically simple:
]],
    tag("ul", nil, lines {
        link { id = "microphone" },
        link {
            href = "/files/music/zoom.jpg",
            content = image {
                src = "/files/music/zoom_small.jpg",
                alt = "Zoom H2n",
                title = "Zoom H2n",
                class = img_class,
            },
        },
        li(par [[
<b>microphone</b>:
<a href="https://zoomcorp.com/en/us/handheld-recorders/handheld-recorders/h2n-handy-recorder/">Zoom H2n</a>.
This is the star of my setup, my trusty H2n.  It is the single piece of
equipment I have used to record every video in here (OK, all the ones that sound
good, after I acquired it and stopped recording audio using just my phone).  It
sounds great, can work with only battery power and an SD card, can be taken
anywhere, and can record two stereo tracks (or up to four mono tracks) at once.
I also use it as my poor-man's sound interface: every electric instrument I
record goes through its line-in input to the computer.
]]),
        link { id = "pre-amp" },
        link {
            href = "/files/music/behringer.jpg",
            content = image {
                src = "/files/music/behringer_small.jpg",
                alt = "Behringer BDI21",
                title = "Behringer BDI21",
                class = img_class,
            },
        },
        li(par [[
<b>pre-amp</b>: <a href="https://www.behringer.com/product.html?modelCode=0709-AAL">Behringer BDI21</a>.
A relatively-recent addition; I for the longest time used just the
Zoom's pre-amplifier, but then realized I had this one laying around and could
put it to good use.  It has a nice signal boost and drive (the configuration you
see in the picture is pretty much what I use for everything) so, even though
it's a bass pedal, I now pass every (mono) instrument through it.
]]),
        link { id = "camera" },
        li(par [[
“<b>camera</b>”: videos are recorded using my Android (<a
href="https://lineageos.org">LineageOS</a>) phone, a cheap Motorola Moto G7.
The camera is passable when there is enough light, but not great, I need to get
me a real camera at some point.
]]),
    }),
    h2_link { "software", "software" },
    par [[
Everything audio- and video-related is done on my personal Linux computer, an
aging 2018 Lenovo Thinkpad T480s, running <a href="https://archlinux.org">Arch
Linux</a> (BTW).
]],
    h3_link { "audio", "audio" },
    par [[
I do all recording, mixing, and editing using <a
href="https://ardour.org">Ardour</a>, combined with some of the amplifier
simulators and effects from <a href="https://guitarix.org">Guitarix</a>.  That's
more than sufficient for my rather primitive mixing skills (which essentially
consists of the generous application of reverb, compression, tape emulation, and
occasionally some light overdrive/distortion).
]],
    link {
        href = "/files/music/ardour0.png",
        content = image {
            src = "/files/music/ardour0_small.png",
            title = "Ardour main interface",
            alt = "Ardour main interface",
            class = img_class,
        },
    },
    html "<br />",
    link {
        href = "/files/music/ardour1.png",
        content = image {
            src = "/files/music/ardour1_small.png",
            title = "Ardour mixer",
            alt = "Ardour mixer",
            class = img_class,
        },
    },
    par [[
<a href="https://www.audacityteam.org">Audacity</a> also deserves an honorable
mention: I sometimes use it for audio analysis and editing (it also gets the
prize for the greatest name for a piece of audio software).
]],
    link {
        href = "/files/music/audacity.png",
        content = image {
            src = "/files/music/audacity_small.png",
            title = "Audacity",
            alt = "Audacity",
            class = img_class,
        },
    },
    par [[
Buying an electronic kit and learning to play drums is on my list, but I do know
the theory behind it, so for my videos I use samples generated with <a
href="http://hydrogen-music.org">Hydrogen</a> that I program myself.  It has
very nice controls for the synthesis (including parameters such as attack
velocity, so you can create those lovely snare ghost notes) and, with a bit of
mixing, the result is surprisingly very decent.
]],
    link {
        href = "/files/music/hydrogen.png",
        content = image {
            src = "/files/music/hydrogen_small.png",
            title = "Hydrogen",
            alt = "Hydrogen",
            class = img_class,
        },
    },
    h3_link { "video", "video" },
    par [[
With the audio portion done, I then export it from Ardour and synchronize with
the video(s) and do some minor editing using <a
href="https://kdenlive.org">Kdenlive</a>.  For more heavy-weight operations on
video (and audio) files, I use the amazing <a
href="https://ffmpeg.org">ffmpeg</a> (directly, anyway, since it is also what
Kdenlive uses to render video).
]],
    link {
        href = "/files/music/kdenlive.png",
        content = image {
            src = "/files/music/kdenlive_small.png",
            title = "Kdenlive",
            alt = "Kdenlive",
            class = img_class,
        },
    },
}

return include "master.lua" {
    title = "music – about",
    css = {"/main.css", "music.css"},
    body_class = "w80 white-bg roman",
    nav_path = {{".", "music"}, {nil, "about"}},
    main = main(nil, content),
}
