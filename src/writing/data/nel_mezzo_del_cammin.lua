local description <const> = [[Since I'm now, according to the <a href="https://dante.princeton.edu/cgi-bin/dante/campuscgi/mpb/GetCantoSection.pl?INP_POEM=Inf&amp;INP_SECT=1&amp;INP_START=1&amp;INP_LEN=2&amp;LANG=2">famous incipit</a>, <i lang="it">nel mezzo del cammin di nostra vita</i>, I thought I'd write to my younger self, something I'd have liked a Virgil to have taught me as I struggled to find my way out of the <i lang="it">selva oscura</i>.]]

local content <const> = lines {
    par [[
Since I'm now, according to the
<a href="https://dante.princeton.edu/cgi-bin/dante/campuscgi/mpb/GetCantoSection.pl?INP_POEM=Inf&amp;INP_SECT=1&amp;INP_START=1&amp;INP_LEN=2&amp;LANG=2">famous incipit</a>,
<i lang="it">nel mezzo del cammin di nostra vita</i>, I thought I'd write to my
younger self, something I'd have liked a Virgil to have taught me as I struggled
to find my way out of the <i lang="it">selva oscura</i>.  At some point, a man
finds himself like Xenophon's
<a href="https://www.perseus.tufts.edu/hopper/text?doc=Xen.+Mem.+2.1.21&amp;fromdoc=Perseus%3Atext%3A1999.01.0208"><i>Heracles at the crossroads</i></a>.
This was early adolescence for me, a period I passionately hated.  Somewhat less
idealistically than the Herculean myth, I cannot say I made a choice, since it
was long before I could articulate any of this to myself.  The alternative was
just so absolutely, viscerally repugnant, I just followed the dim light I could
see in the dark.
]],
    figure {
        class = "float-right",
        content = image_link {
            class = "hor-center",
            alt = "Pompeo Batoni, Hercules at the crossroads",
            src = "/files/writing/pompeo_batoni_hercules_at_the_crossroads.jpg",
            height = "375",
        },
        caption = "Pompeo Batoni, <i>Hercules at the crossroads</i>",
    },
    par [[
<a href="/files/writing/nel_mezzo_del_cammin.jpg">Above</a> is what I've read in
the last twelve months (24 books in total, but some are digital/not here, you
can go to <a href="/lib/list.html#2025">this page</a> for the full list).  The
Greeks were correct: a <i lang="la">mens sana</i> is built through strife and
education.  Virtue/excellence is a habit, and happiness is virtuous activity.
Aristotle engraved (the literal meaning of the word <i>character</i>, <span
lang="grc">χαρακτήρ</span>, from the verb <span lang="grc">χαράσσω</span>) in
the soul of man with these few words the principles of a happy life (<span
lang="grc">εὐδαιμονία</span>, not the fleeting feeling we now use that word
for).
]],
    par [[
This is the straight and narrow path: cultivate your soul, turn it to ever
greater things (<i lang="la">semper sursum</i>), to truth, goodness, beauty.
This is the path to becoming yourself — not who you want to be, who you were
meant to be.  To be perfect (the same <span lang="grc">τέλειός</span> of
Aristotle, both of which mean “to be thoroughly made”, “to have fulfilled one's
purpose”) as is the One in heaven.  You'll be unstoppable.  Your mind will seek
the correct goals, and you'll have both the means and the discipline to achieve
them. You will delight in it, seeing the struggle as pleasant.  This, finally,
is happiness.
]],
    par [[
Everything else is an illusion.
<a href="https://www.folger.edu/explore/shakespeares-works/macbeth/read/5/5/?q=sound%20and%20fury#line-5.5.27"><i>Sound and fury, signifying nothing</i></a>.
Ignore it.  Life is too short and precious and beautiful.  It will not be easy.
You should not pray for an easy life.  You'll also be lonely, most of the time
not even liked.  You'll learn to let go of people, of those who do not have the
same fire burning inside, who want to go on living like infants.  It will hurt.
But you'll get accustomed, and will begin to see it as a gift:
<a href="https://www.biblegateway.com/passage/?search=matthew+16%3A26&amp;version=KJV"><i>for
what is a man profited, if he shall gain the whole world, and lose his own
soul?</i></a>
]],
    par [[
<i>Happy is the man who strives to be in life as he desires to be found in
death</i>, wrote Thomas à Kempis.  And may I die (a prospect ever so near)
echoing these two words of Heraclitus, the Obscure, who wrote so brilliantly
precisely because he was the philosopher of tears:
]],
    centered_quote(blockquote(lines {
        text_tag("p", {lang = "grc"}, [[
ἐδιζησάμην ἐμεωυτόν
]]),
        par [[
I have searched myself
]],
    })),
}

return {
    timestamp = { 1764979200, "2025-12-06" },
    title = 'Nel mezzo del cammin di nostra vita',
    image = {
        alt = "a pile of books",
        src = "nel_mezzo_del_cammin.jpg",
    },
    description = description,
    content = content,
}
