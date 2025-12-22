local file_url <const> = var "file_url"

local description <const> = [[I met Dostoevsky, so to speak, a little more than a year ago. I won't go into how I got to <i>Crime and Punishment</i>, but reading it (in the span of a single weekend) was the principal — though not singular or initial — cause of the most profound transformation I have ever suffered: at the same time a reorientation of my life and the consummation of my personality, a reconciliation of every internal doubt I had about me and my choices (if one may call them that) in life.]]

local content <const> = lines {
    par [[
I met Dostoevsky, so to speak, a little more than a year ago.  I won't go into
how I got to <i>Crime and Punishment</i>, but reading it (in the span of a
single weekend) was the principal — though not singular or initial — cause of
the most profound transformation I have ever suffered: at the same time a
reorientation of my life and the consummation of my personality, a
reconciliation of every internal doubt I had about me and my choices (if one may
call them that) in life.
]],
    par [[
At the same time, I found again and revived one of my greatest passions:
reading.  As I used to when growing up, I read furiously once again, only now
not <i>wearing to escape into that glorious world</i>, but with that rare
pleasure in life: that of finding true connections with sympathetic souls.  And
so it was that, among many incredible finds, I ended the year with the book
pictured here, which accompanied me across three continents on a journey to and
a sojourn in my old home.
]],
    image {
        class = "hor-center float-right",
        alt = "Fyodor Dostoevsky",
        src = file_url("writing", "dostoevsky.jpg"),
    },
    par [[
I am now a completely different man in no small part because of this man's
writing.  He is the greatest author there ever was, and <i>The Brothers
Karamazov</i> is the greatest work of literature of all (<i>Crime and
Punishment</i> previously held that title, to call these merely “books” or
“novels” feels blasphemous).  In the dark periods since, I found solace in what
I learned from him and the innumerable <i>other mysterious worlds</i> I touched.
In finding light and always keeping it even <i lang="la">in medio umbrae
mortis</i> (<i lang="grc">τὸ φέρειν αὐτὸ γενναίως εὐτύχημα</i>).
]],
    blockquote(par [[
There is nothing more seductive for man than the freedom of his conscience, but
there is nothing more tormenting either.
]]),
    text_tag("p", {lang = "ru"}, [[
Кланяюсь вам, Фёдор Михайлович Достоевский.
]]),
}

local img_text <const> = [[This is precisely what has tormented me all my life, that I thirsted for nobility, that I was, so to speak, a sufferer for nobility, seeking it with a lantern, Diogenes' lantern]]

return {
    timestamp = { 1704067200, "2024-01-01" },
    title = "Dostoevsky",
    image = {
        alt = img_text,
        title = img_text,
        src = "dostoevsky_nobility.jpg",
    },
    description = description,
    content = content,
}
