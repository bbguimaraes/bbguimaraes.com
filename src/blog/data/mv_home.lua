local description <const> = [[&lt;p&gt;Both from personal experience and from having read all sorts of blogs, I learned that the secret to not having to give excuses for updating a blog in a very infrequent and irregular fashion is to completely ignore the fact that it has been more than a year since the last post (I would say this is an autological self-reference, but that would be paradoxically contradictory).&lt;/p&gt;&lt;p&gt;The big news this time is that from now on, the new home for this blog is:&lt;/p&gt;&lt;blockquote&gt;&lt;a href="https://bbguimaraes.com/blog"&gt;https://bbguimaraes.com/blog&lt;/a&gt;&lt;/blockquote&gt;]]

local content <const> = {
    par [[
Both from personal experience and from having read all sorts of blogs, I
learned that the secret to not having to give excuses for updating a blog in a
very infrequent and irregular fashion is to completely ignore the fact that it
has been more than a year since the last post (I would say this is an
autological self-reference, but that would be paradoxically contradictory).
]],
    par [[
The big news this time is that from now on, the new home for this blog is:
]],
    blockquote(link {
        href = "https://bbguimaraes.com/blog",
        content = "https://bbguimaraes.com/blog",
    }),
    par [[
Posts will be published there exclusively, although the old website will remain
where it is (until Google decides to kill Blogspot; given its record, that
should be any day now).  If you follow it using RSS, please update your client
to use the <a href="https://bbguimaraes.com/blog/rss.xml">new URL</a>.
]],
    par [[
There you will find all previous posts, converted from an XML export after a
day of furious text editing (made exponentially easier by <a
href="https://www.vim.org"> the best text editor in the world</a>).  I resisted
as much as I could the urge to edit the posts and instead made only minimal
spelling corrections.
]],
    par [[
You will also find <a href="https://bbguimaraes.com">there</a> all of my other
insane endeavours.  For example: last year, I added <a
href="https://bbguimaraes.com/random/the_jack">another blog</a> I used to have
where my teenage self reviewed — and shared in a not-quite-legal manner — music
albums.  I wasted the chance to make my yearly blog post, so consider this also
an announcement for it.
]],
    par [[
And did you know all source code is available under a free software license?
Yes!  Run and
<a href="https://gitlab.bbguimaraes.com/bbguimaraes/bbguimaraes.com.git">get it</a>
before more people find out about it.
]],
    h2_link { "a-dark-interlude", "A dark interlude" },
    h3_link {
        "1984-was-not-supposed-to-be-a-user-manual",
        "1984 was not supposed to be a user manual",
    },
    par [[
So why did I decide to make this change?
]],
    par [[
It is no secret that I have, for a long time now, tried to stay away as much as
possible from the so-called <i>technological
<a href="https://en.wikipedia.org/wiki/Goliath">giants</a></i>.  The reasons
were always difficult to explain to people outside of the IT industry, for whom
concepts such as free (i.e. <i>libre</i>) software, or even <i>software</i> in
any but the most superficial levels, are difficult to grasp.
]],
    par [[
Thankfully, over the past years, Google, Facebook, and friends have made that
much easier.  Ever since the Snowden leaks, we have been shown time and time
again how our dystopian fears were, if anything, an underestimation.  And
things have taken a darker turn recently with these companies taking
increasingly political and aggressive actions in our time of political and
moral confusion.
]],
    h2_link { "fighting-back", "Fighting back" },
    par [[
To counteract that, I have always opted to use open and free technologies.
Some examples:
]],
    [[
            <ul>
                <li>
<a href="https://www.kernel.org">Linux</a> as the operating system in all my
computers.
                <li>
<a href="https://lineageos.org">LineageOS</a> on my mobile devices.
                </li>
                <li>
<a href="https://mozilla.org">Firefox</a> as my web browser.
                </li>
                <li>
<a href="https://matrix.org">Matrix</a> for instant messaging and video calls.
                </li>
                <li>
<a href="https://gitlab.com">Gitlab</a> for source code hosting.
                </li>
                <li>
<a href="https://nextcloud.org">Nextcloud</a> for calendar, contacts, file
sharing, etc.
                </li>
            </ul>]],
    par [[
I choose to use free or open-source software first and resort to closed-source
only if it cannot in way be avoided (and, in my experience, it can in virtually
all cases).
]],
    par [[
And this brings us back to my blog now being under my personal website and not
hosted in a service owned by Google anymore.  It is now just a bunch of static
HTML files served by my webserver.  Youtube embedded videos have also been
converted to simple links.
]],
    h2_link { "future", "Future" },
    par [[
Having finally moved away from Blogspot, there are now only two more items on
my list of SaaS(S)es to get rid of.
]],
    par [[
The first is Gmail, which I have used almost since I started using e-mail.
Hosting one's own e-mail server is not easy, so I do not expect this to change
anytime soon.  And, with the unfortunate demise of e-mail after social media
started dominating the internet, giving Google access to my e-mail bothers me
less and less.
]],
    par [[
The final one is the more complicated and the more mysterious: Youtube.  From
talks to musical or otherwise instructional videos to podcasts, I consume
videos at an almost fanatical and certainly unhealthy rate, and a big portion
of them are on Google's platform.  I don't see it loosing its dominance in the
near future (although <a href="https://joinpeertube.org">PeerTube</a> in on my
list of things to try), but hopefully its recent censorship scandals will
accelerate that.
]],
    par [[
And finally: are you really a blogger if you don't say "I want to start posting
here more frequently"?  It is in no way an excuse, but the fact that this blog
was hosted on Blogspot did have an effect on my willingness to write.  That
meant I missed opportunities to talk about some of the interesting things I
have been working on, and I want to correct that.
]],
    par [[
As always, thanks for reading.
]],
}

return {
    title = "mv ~",
    timestamp = { 1563744373, "2019-07-21T21:26:13" },
    tags = { "facebook", "google", "meta" },
    description = description,
    content = content,
}
