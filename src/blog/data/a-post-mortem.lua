local description <const> = [[&lt;a href="https://bbguimaraes.com/blog/that-moment-you-realize-something-really-wrong-is-going-on.html" target="_blank"&gt;A lot&lt;/a&gt; has happened since &lt;a href="https://bbguimaraes.com/blog/the-raspberry.html" target="_blank"&gt;my first rπ post&lt;/a&gt;.]]

local content <const> = {
    inline_tag("p", nil, link {
        href = "the-raspberry.html",
        content = "Part I - The raspberry",
    }),
    inline_tag("p", nil, link {
        href = "an-image-is-worth-thousand-megabytes.html",
        content = "Part II - An image is worth a thousand megabytes",
    }),
    h2_link { "part-iii-a-post-morten", "Part III - A post-morten" },
    par [[
<em><a href="that-moment-you-realize-something.html">A lot</a></em> has
happened since <a href="the-raspberry.html">my first rπ post</a>.  I've used
that little thing to death (quite literally), as a ssh box, firewall, general
server, web server, web browser, movie box and a whole lot more.  Then, I've
had the SD card die on me.  For me, it was a perfect little linux computer that
could stay on all the time, consuming little-to-no power, making absolutely no
noise, occupying minimal space.  In a few words: really, really awesome.  And
all that for 35 dollars!
]],
    par [[
As promised, I'll post here the steps to get from a rπ on a closed box to a
little box of awesomeness.  I know there a ton of posts like these, but hey,
storage is free (for now) on blogger.  If you haven't read the first post, this
is a good time to do it. I will first make a few post-mortem (again, literally)
observations about my first assumptions.
]],
    h3_link { "sd-card", "SD card" },
    par [[
Let's start with the most important thing.  When I first went shopping for the
various attachments, I got the most inexpensive card I found.  The only
requisite was that it had at least a 4gb storage.  After it died, I decided to
spend a few extra bucks and get a decent one.  Man, I was surprised.  There
isn't any way of comparison between the π before and now.  Instead of moaning
the old days, I'll just say this: get a decent, class 10 SD card and you'll
have nothing to worry about.  And since these things get cheaper and cheaper,
get a 16gb one.
]],
    h3_link { "power-supply", "Power supply" },
    par [[
Again, when I started using the π, I just used my cell phone charger, which, by
extreme luck, was compatible and provided almost exactly the amount of power
needed.  Then I started using a wireless adapter sometimes.  Then I started
using hdmi output sometimes.  Then I tried to use both at the same time.  And
it died.  Not that it does any harm to the board, but any moderate load will
simply power-off the device.  So, if you want to use more than the π itself,
get an appropriate power supply.
<a href="http://uk.farnell.com/raspberry-pi-accessories#usbpowersupply">Those on the farnell website</a>
worked just fine for me.  And just for completeness sake, mine is 1000mA.
]],
    h3_link { "hdmi", "HDMI" },
    par [[
I did my first tests on my living room TV.  But after a while (as addiction got
worse), I felt the need to use it on my bedroom, where I have only an old
computer monitor with VGA input.  So I got a VGA-to-HDMI adapter and things
worked fine (well, almost, more on that later).
]],
    h3_link { "os", "OS" },
    par [[
The first distribution I installed was raspbian, mainly because I was used to
debian and, by the time I started playing, there weren't many alternatives.
Now we have pidora and even riscos.  But anyway, raspbian is a really good
distribution and I never had a problem with it.  But I am restless.  Since I
was going to reinstall the OS from /dev/zero, I decided to jump from the cliff
and install arch.  For no special reason, just to try something else. So, the
instructions from now on will be arch centered, although many will be usable on
other distributions.
]],
    par [[
Man, I write a lot.  Let's stop right here and I'll get to the first
installation steps later.
]],
}

return {
    title = "A post-mortem",
    date  = { "1373840040", "2013-07-14T22:14:00" },
    tags = { "programming", "raspbian", "linux", "arch", "raspberry pi" },
    description = description,
    content = content,
}
