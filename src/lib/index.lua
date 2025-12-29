local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local citations_left <const> = {
    blockquote(lines {
        par "But I don't want comfort.\n",
        par [[
I want God,<br />
I want poetry,<br />
I want real danger,<br />
I want freedom,<br />
I want goodness.<br />
]],
        par "I want sin.\n",
        par "[…]",
        par [[
I'm claiming the right to be unhappy.
]],
        par "[…]",
        par [[
I claim them all.
]],
    }),
    blockquote_par [[
I’m wearying to escape into that glorious world, and to be always there: not
seeing it dimly through tears, and yearning for it through the walls of an
aching heart: but really with it, and in it.
]],
    blockquote_par [[
I shall never alter my ways, not even if I have to die many times.
]],
    blockquote_par [[
What then is that which is able to conduct a man? One thing and only one,
philosophy.
]],
    blockquote_par [[
Whatever our souls are made out of, his and mine are the same.
]],
    blockquote_par [[
What are men to rocks and mountains?
]],
    blockquote_par [[
Nothing is either bad or good which can happen equally to the bad man and the
good.
]],
    blockquote_par [[
Say rather, beloved Agathon, that you cannot refute the truth; for Socrates is
easily refuted.
]],
    blockquote_par [[
Remember too on every occasion which leads thee to vexation to apply this
principle: not that this is a misfortune, but that to bear it nobly is good
fortune.
]],
    blockquote_par [[
Do you reflect that all those words will be branded in my memory, and eating
deeper eternally after you have left me?  You know you lie to say I have killed
you: and, Catherine, you know that I could as soon forget you as my existence!
Is it not sufficient for your infernal selfishness, that while you are at peace
I shall writhe in the torments of hell?
]],
    blockquote_par [[
But disguise of every sort is my abhorrence. Nor am I ashamed of the feelings I
related. They were natural and just.
]],
    blockquote_par [[
A man who is good for anything ought only to consider whether in doing anything
he is doing right or wrong[&hellip;]; he should not think of death or anything
but of disgrace.
]],
    blockquote_par [[
You said I killed you &mdash; haunt me, then!  The murdered do haunt their
murderers, I believe &mdash; I know that ghosts have wandered the earth.  Be
with me always &mdash; take any form &mdash; drive me mad! only do not leave me
in this abyss, where I cannot find you!  Oh, God! it is unutterable!  I cannot
live without my life!  I cannot live without my soul!
]],
    blockquote_par [[
tecum habita: noris, quam sit tibi curta supellex<br /><br />
live with yourself: you will know how lacking your possessions are
]],
    blockquote_par [[
But the truth is, O men of Athens, that God only is wise;
]],
}

local citations_right <const> = {
    blockquote(par [[
The unexamined life is not worth living.
]]),
    blockquote_par [[
I seek the truth by which no man has ever injured.  But he is injured who abides
in his error and ignorance.
]],
    blockquote_par [[
I would rather die having spoken after my manner, than speak in your manner and
live.
]],
    blockquote_par [[
Cast away opinion: thou art saved. Who then hinders thee from casting it away?
]],
    blockquote_par [[
You shall not defend her, though it is Charlotte Lucas.  You shall not, for the
sake of one individual, change the meaning of principle and integrity, nor
endeavour to persuade yourself or me, that selfishness is prudence, and
insensibility of danger security for happiness.
]],
    blockquote_par [[
Old longings nomadic leap,<br />
Chafing at custom’s chain;<br />
Again from its brumal sleep<br />
Wakens the ferine strain.
]],
    blockquote_par [[
For nowhere either with more quiet or more freedom from trouble does a man
retire than into his own soul
]],
    blockquote_par [[
By you, I was properly humbled.  [&hellip;] You showed me how insufficient were
all my pretensions to please a woman worthy of being pleased.
]],
    blockquote_par [[
And now I depart hence condemned by you to suffer the penalty of death &mdash;
they too go their ways condemned by the truth to suffer the penalty of villainy
and wrong
]],
    blockquote_par [[
Only the deepest love will persuade me into matrimony, which is why I will end
up an old maid.
]],
    blockquote_par [[
Let thy principles be brief and fundamental, which, as soon as thou shalt recur
to them, will be sufficient to cleanse the soul completely, and to send thee
back free from all discontent with the things to which thou returnest.
]],
    blockquote_par [[
Your pride cannot blind God!
]],
    blockquote_par [[
Then I knew that not by wisdom do poets write poetry, but by a sort of genius
and inspiration; they are like diviners or soothsayers who also say many fine
things, but do not understand the meaning of them.
]],
    blockquote_par [[
One word from you will silence me on this subject for ever.
]],
    blockquote_par [[
I have not broken your heart &mdash; you have broken it; and in breaking it, you
have broken mine.
]],
    blockquote_par [[
There are few people whom I really love, and still fewer of whom I think well.
]],
    blockquote_par [[
The hour of departure has arrived, and we go our ways &mdash; I to die, and you
to live. Which is better God only knows.
]],
}

local function load_book(_, filename)
    filename = path.join("src", "lib", "data", filename)
    return assert(loadfile(filename, nil, _ENV))()
end

local function toc_link(_, x)
    local title = x.title
    if x.languages then
        title = title.en
    end
    return link { href = "#" .. x.id, content = title }
end

local function render_book(_, t)
    return include(path.join("..", "include", "lib", "book.lua"))(t)
end

local function books(t)
    return div({class = "books"}, lines(t))
end

local function honorable(href, title_fmt, title, id, cover, author)
    return {
        id = id,
        title = title,
        content = div(
            {id = id, class = "book"},
            tag("a", {href = href}, lines {
                image {
                    src = "/files/lib/" .. cover,
                    alt = "cover",
                    class = "image book-cover",
                },
                inline_tag("h3", nil, title_fmt),
                inline_tag("span", nil, author),
            })),
    }
end

local function generate_book_page(_, t)
    if not t.intro then
        return
    end
    local tt <const> = {}
    for _, lang in ipairs(t.languages or {"en"}) do
        local file_name = path.join("bbguimaraes.com", "lib", t.id)
        if lang == "en" then
            file_name = file_name .. ".html"
        else
            file_name = string.format("%s-%s.html", file_name, lang)
        end
        local f <close> = assert(io.open(file_name, "w"))
        tt.lang = lang
        generate.generate(f, "src/include/lib/page.lua", t, tt)
    end
end

local publications <const> = util.imap(load_book, {
    "areopagitica.lua",
    "missale.lua",
})
local general <const> = util.imap(load_book, {
    "crime-and-punishment.lua",
    "meditations.lua",
    "brave-new-world.lua",
    "apologia.lua",
    "pride-and-prejudice.lua",
    "the-power-of-the-powerless.lua",
})
local technical <const> = util.imap(load_book, {
    "refactoring.lua",
    "the-design-of-the-unix-operating-system.lua",
    "structure-and-interpretation-of-computer-programs.lua",
    "test-driven-development-for-embedded-c.lua",
    "effective-modern-c++.lua",
    "programming-in-lua.lua",
    "the-linux-programming-interface.lua",
    "heterogeneous-computing-with-opencl.lua",
})
local toc_publications <const> = util.imap(toc_link, publications)
local toc_general <const> = util.imap(toc_link, general)
local toc_technical <const> = util.imap(toc_link, technical)

local honorable <const> = {
    honorable(
        "https://global.oup.com/academic/product/the-nicomachean-ethics-9780199213610",
        '<span lang="grc">Ἠθικὰ Νικομάχεια</span>'
            .. "<br />(The Nicomachean<br />Ethics)",
        '<span lang="grc">Ἠθικὰ Νικομάχεια</span> (The Nicomachean Ethics)',
        "the-nicomachean-ethics",
        "the_nicomachean_ethics.jpg",
        "Aristotle"),
    honorable(
        "https://www.harpercollins.com/products/wuthering-heights-collins-classics-emily-bronte",
        "Wuthering heights",
        "Wuthering heights",
        "wuthering-heights",
        "wuthering_heights.jpg",
        "Emily Brontë"),
    honorable(
        "https://www.penguinrandomhouse.com/books/241840/the-brothers-karamazov-by-fyodor-dostoevsky-translated-by-richard-pevear-and-larissa-volokhonsky-introduction-by-malcolm-jones/",
        "The brothers Karamazov",
        "The brothers Karamazov",
        "the-brothers-karamazov",
        "the_brothers_karamazov.jpg",
        "Fyodor Dostoevsky"),
    honorable(
        "https://www.penguin.co.uk/books/57587/siddhartha-by-hermann-hesse-intro--paulo-coelho/9780141189574",
        "Siddhartha",
        "Siddhartha",
        "siddhartha",
        "siddhartha.png",
        "Hermann Hesse"),
    honorable(
        "https://www.williamcollinsbooks.co.uk/products/the-screwtape-letters-letters-from-a-senior-to-a-junior-devil-c-s-lewis-signature-classic-c-s-lewis-9780007461240/",
        "The Screwtape<br />letters",
        "The Screwtape letters",
        "the-screwtape-letters",
        "the_screwtape_letters.jpg",
        "C. S. Lewis"),
    honorable(
        "https://www.harpercollins.com/products/the-call-of-the-wild-collins-classics-jack-london",
        "The call<br />of the wild",
        "The call of the wild",
        "the-call-of-the-wild",
        "the_call_of_the_wild.jpg",
        "Jack London"),
    honorable(
        "https://www.harpercollins.com/products/white-fang-collins-classics-jack-london",
        "White fang",
        "White fang",
        "white-fang",
        "white_fang.jpg",
        "Jack London"),
    honorable(
        "https://www.penguin.co.uk/books/57033/animal-farm-by-orwell-george/9780241453865",
        "Animal farm",
        "Animal farm",
        "animal-farm",
        "animal_farm.jpg",
        "George Orwell"),
    honorable(
        "https://www.jordanbpeterson.com/12-rules-for-life/",
        "12 rules for life",
        "12 rules for life",
        "12-rules-for-life",
        "12_rules_for_life.jpg",
        "Jordan B. Peterson"),
    honorable(
        "https://www.jordanbpeterson.com/beyond-order/",
        "Beyond order",
        "Beyond order",
        "beyond-order",
        "beyond_order.jpg",
        "Jordan B. Peterson"),
    honorable(
        "https://www.gutenberg.org/ebooks/1600",
        '<span lang="grc">Συμπόσιον</span><br />(The Symposium)',
        '<span lang="grc">Συμπόσιον</span> (The Symposium)',
        "the-symposium",
        "symposium.jpg",
        "Plato"),
    honorable(
        "https://global.oup.com/academic/product/the-merchant-of-venice-the-oxford-shakespeare-9780199535859",
        "The merchant<br />of Venice",
        'The merchant of Venice',
        "the-merchant-of-venice",
        "the_merchant_of_venice.jpg",
        "William Shakespeare"),
    honorable(
        "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.01.0208",
        '<span lang="grc">Ἀπομνημονεύματα</span><br />(Memorabilia)',
        '<span lang="grc">Ἀπομνημονεύματα</span> (Memorabilia)',
        "memorabilia",
        "memorabilia.jpg",
        "Xenophon"),
}
local toc_honorable <const> = util.imap(toc_link, honorable)

util.ieach(generate_book_page, general)

return include "master.lua" {
    title = "books",
    css = {"/main.css", "lib.css"},
    body_class = "no-margin white-bg roman",
    main = lines {
        div({class = "w80"}, include "nav.lua" {
            nav_path = {{nil, "lib"}},
        }),
        image_link {
            class = "image",
            id = "header-img",
            src = "/files/lib/header.jpg",
            alt = "lib",
            title = "lib",
        },
        main(nil, lines {
            div({id = "background"}, lines {
                div(
                    {id = "background-left"},
                    lines(citations_left)),
                div(
                    {id = "background-right", class = "background"},
                    lines(citations_right)),
            }),
            div({class = "w80"}, lines {
                tag("h1", {style = "text-align: center"}, lines {
                    inline_tag("span", {lang = "grc"}, "γνῶθι σεαυτόν"),
                    "&middot; gnosce teipsum",
                }),
                ul {
                    lines {
                        link {
                            href = "#publications",
                            content = "publications",
                        },
                        ul(toc_publications),
                    },
                    lines {
                        link {
                            href = "#reading-list",
                            content = "reading list",
                        },
                        ul {
                            lines {
                                link {
                                    href = "#general",
                                    content = "general",
                                },
                                ul(toc_general),
                            },
                            lines {
                                link {
                                    href = "#honorable",
                                    content = "honorable mentions",
                                },
                                ul(toc_honorable),
                            },
                            lines {
                                link {
                                    href = "#technical",
                                    content = "technical",
                                },
                                ul(toc_technical),
                            },
                        },
                    },
                },
                h1_link { "publications", "publications" },
                books {
                    par [[
My own arrangements/formattings of classic books.  See original and LaTeX
sources linked in each entry.
]],
                    table.unpack(util.imap(render_book, publications)),
                },
                h1_link { "reading-list", "reading list" },
                par [[
Book reviews also sometimes appear in my
<a href="/blog/tags/books.html">blog</a>.
]],
                h2_link { "general", "general" },
                books(util.imap(render_book, general)),
                h2_link { "honorable", "honorable mentions" },
                div(
                    {class = "books honorable-mentions"},
                    lines(util.map(function(_, x)
                        return x.content
                    end, honorable))),
                h2_link { "technical", "technical" },
                par [[
Code/exercises based on some of these books can be found
<a href="https://gitlab.bbguimaraes.com/bbguimaraes/books">here</a>.
]],
                books(util.imap(render_book, technical)),
            }),
        }),
    },
}
