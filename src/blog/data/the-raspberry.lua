local description <const> = [[My late Christmas gift (from me to myself) arrived on Monday, and it is a little Raspberry Pi.]]

local content <const> = {
    html "<p><b>Part I - The raspberry</b></p>",
    inline_tag("p", nil, link {
        href = "an-image-is-worth-thousand-megabytes.html",
        content = "Part II - An image is worth a thousand megabytes",
    }),
    inline_tag("p", nil, link {
        href = "a-post-mortem.html",
        content = "Part III - A post-mortem",
    }),
    par [[
My late Christmas gift (from me to myself) arrived on Monday, and it is a
little Raspberry Pi.  If you're not familiar with it (and you should be), it's
a tiny board which contains everything a computer needs to run (or, as I
explained to my perplexed mother, "it has everything a computer needs to be a
computer").
]],
    par [[
I won't go over the process of acquiring one, which is not as simple as it may
seem, if you live in Brazil.  I'll skip to the part just after you console
yourself for paying the rough equivalent of 85 dollars, or 242% the original
price (of course this includes shipping, but it still is absurd).
]],
    par [[
So, if you survive that step, you'll get this pretty box:
]],
    image_link {
        src = "/files/blog/the_raspberry0.png",
        alt = "raspberry pi box",
    },
    par [[
And inside it...
]],
    image_link {
        src = "/files/blog/the_raspberry1.png",
        alt = "raspberry pi",
    },
    h2_link { "prelude", "Prelude" },
    par [[
If you're reading this before actually buying it, or before it arrives (and
that is a smart thing to do), you'll probably want to get everything prepared
so you can start working as soon as you get your hands on it.  Here are the
things you absolutely need to get started.
]],
    h3_link { "sd-card", "SD card" },
    image_link {
        src = "/files/blog/the_raspberry2.png",
        alt = "SD card",
    },
    par [[
This is where all the files are stored.  If you'll be using
<a href="http://www.raspbian.org/">Raspbian</a> (and if you don't know what
that is, it probably is what you'll be using), the card must be at least 2GB
large.  The size really depends on what you plan to do with it, but 8 GB and 16
GB suit most of the needs.  If you don't want to buy it right away, you can use
any SD card you have laying around, like those used in cameras.
]],
    h3_link { "power-supply", "Power supply" },
    image_link {
        src = "/files/blog/the_raspberry3.png",
        alt = "power supply",
    },
    image_link {
        src = "/files/blog/the_raspberry4.png",
        alt = "power supply",
    },
    par [[
This is the most delicate component.  If you look at the
<a href="http://www.raspberrypi.org/wp-content/uploads/2012/12/quick-start-guide-v1.1.pdf">
Quick Start Guide</a>, the Pi requires a "[...] good quality, micro USB power
supply that can provide at least 700mA at 5V.".  Depending on where you live,
this may be easier or harder to find (apparently, I live in the hardest place
on Earth).  Remember to get the voltage right, but what's important is that
700mA is the minimum required for the Raspberry.  If you want to plug other
devices that need power supply to it, you're probably going to need more power.
I was really lucky that my Motorola cell phone charger meets almost exactly the
requirements (check the picture on the right).
]],
    h3_link { "hdmi-or-rca-cable", "HDMI (or RCA) cable" },
    image_link {
        src = "/files/blog/the_raspberry5.png",
        alt = "HDMI cable",
    },
    image_link {
        src = "/files/blog/the_raspberry6.png",
        alt = "HDMI cable",
    },
    par [[
In order to plug it to a monitor or TV, you'll need an HDMI cable.  These can
be found on any decent electronics store.  Alternatively, you can use the RCA
port to connect to older devices.
]],
    h3_link { "usb-keyboard", "USB keyboard" },
    image_link {
        src = "/files/blog/the_raspberry7.png",
        alt = "keyboard",
    },
    image_link {
        src = "/files/blog/the_raspberry8.png",
        alt = "keyboard",
    },
    par [[
Any keyboard with a USB cable will do.  A mouse is not strictly necessary, but
if you like, you can use any one with a USB cable.
]],
        par [[
So now we have all the components, we need to prepare our SD card.  Check the
next post for instructions on that, but meanwhile you can go ahead and download
<a href="http://www.raspberrypi.org/downloads/">the Raspbian image from the
Raspberry Pi foundation</a>, which is the OS we'll use.
]],
}

return {
    title = "The raspberry",
    date  = { "1358983740", "2013-01-23T23:29:00" },
    tags = { "raspbian", "linux", "raspberry pi" },
    description = description,
    content = content,
}
