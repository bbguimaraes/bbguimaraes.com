local description <const> = [[A long time ago, when I was in college, I got involved in two research projects.]]

local content <const> = {
    par [[
A long time ago, when I was in college, I got involved in two research
projects.
]],
    par [[
One of them involved integrating a home-(or, I should say, college-)grown spam
filter based on artificial intelligence concepts with the traditional
<i>postfix</i> mail delivery system.  That was a lot of fun and would later
pave the way for my bachelor thesis, which you can find more about
<a href="https://github.com/bbguimaraes/tcc.git">here</a>.
]],
    par [[
The other one, which is the topic of this post, was a computer graphics
research project.  The ultimate goal of this project was to develop an
organ-surgery simulation system.  The team used a haptic feedback device (very
much like this one:
]],
    image_link {
        src = "/files/blog/phantom.png",
        alt = "phantom",
    },
    par [[
to simulate liver surgery.  A computer model of the organ was displayed and
could be interacted with in 3-D using the device.
]],
    par [[
My first task when I joined the project was to develop a small part to be later
incorporated into the system: the suture string.  This would interact with the
organ model and simulate stitching as in a real-life surgery.
]],
    par [[
To make a long story short, my involvement with the project was terminated
earlier than it should (because of external reasons, nothing serious) and the
code for the simulation hung around in my hard drive for years.  I always
wanted to do something with it, because even at the rough stages it was in, it
was already very cool (in my opinion =).
]],
    par [[
I recently revived it and finally got it to a stage where I feel comfortable
sharing it with the world.  To be completely honest, I'm publishing it because
I have wasted too much time playing with it.  It's really addictive.  Anyway,
the entire code base is under a copy-left license (GPLv2), so you can take a
look, experiment, do whatever you want with it:
]],
    tag("p", nil,
        tag("a",
            {href = "https://gitlab.bbguimaraes.com/bbguimaraes/college/-/tree/master/sms"},
            "https://gitlab.bbguimaraes.com/bbguimaraes/college/-/tree/master/sms")),
    par [[
Finally, here is a short demo:
]],
    tag("p", nil,
        tag("a",
            {href = "https://www.youtube.com/watch?v=WB3s7ypA7WQ"},
            "https://www.youtube.com/watch?v=WB3s7ypA7WQ")),
}

return {
    title = "College research projects",
    timestamp = { 1471736820, "2016-08-20T23:47:00" },
    tags = { "dissertation", "programming", "linux", "math" },
    description = description,
    content = content,
}
