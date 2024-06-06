local description <const> = [[While putting together the <a href="https://bbguimaraes.com/places/">page</a> from the last post this past week and going through my photograph archive, I was caught yet again by these ones and put it on my list to share them, since they are some of my favorites among all the pictures I've ever taken.]]

local content <const> = lines {
    par [[
While putting together the <a href="/places">page</a> from the last post and
going through my photograph archive, I was caught yet again by these ones and
put it on my list to share them, since they are some of my favorites among all
the pictures I've ever taken.
]],
    par [[
The background here is last year, by some (not-so-)“<a
href="https://www.youtube.com/watch?v=sGnhyoP_DSc">simple twist of fate</a>”, I
found myself going from Istanbul to my home town in the south of Brazil.  The
flight schedule (these were taken around mid-afternoon local time), path, and
the weather combined to offer a pretty spectacular bird's-eye view (though this
bird would have to be flying very high) of the Mediterranean sea, in particular
the Aegean and Ionian seas, and the areas surrounding it.
]],
    par [[
I hope Turkish Airlines enjoys the free publicity — it was a very good flight,
anyway.
]],
}

local citation <const> = lines {
    par [[
Soon thou wilt be ashes, or a skeleton, and a mere name or not even a name; but
name is sound and echo.  And the things which are much valued in life are empty
and rotten and insignificant, and like little dogs biting one another, and
little children quarrelling, laughing, and then straightway weeping.  But
fidelity and modesty and justice and truth are gone
]],
    blockquote(lines {
        par [[
Up to Olympus from the widespread earth.
]],
        par [[
— Hesiod, “Works”, etc., V, 197.
]],
    }),
    par [[
What then is there which still detains thee here?  If the objects of sense are
easily changed and unstable, and the organs of perception are dull and easily
receive false impressions; and the poor soul itself is an exhalation from blood.
But to have good repute amidst such a world as this is an empty thing.  What
then?  Wait in tranquility for thy end, whether it is extinction or removal to
another state.  And until that time comes, what is sufficient?  What else than
to venerate the gods and bless them, and to do good to men, and to practise
tolerance and self-restraint; but as to everything which is beyond the limits of
the poor flesh and breath, to remember that this is neither thine nor in thy
power.
]],
    par [[
— Marcus Aurelius, “Meditations”, V.33
]],
}

local images <const> = {{
    path = "mediterranean0.jpg",
    text = [[
القرين (Al-Qurayn), Tunisia.
]],
}, {
    path = "mediterranean1.jpg",
    text = [[
Κεραμωτή (Keramoti) and the islands of Θάσος (Thasos) and Θασοπούλα
(Thasopoula).
]],
}, {
    path = "mediterranean2.jpg",
    text = [[
Κόλπος Καβάλας (the gulf of Kavala).
]],
}, {
    path = "mediterranean3.jpg",
    text = [[
Ολυμπιάδα (Olympiada) and Σταυρός (Stavros).
]],
}, {
    path = "mediterranean4.jpg",
    text = [[
Θεσσαλονίκη (Thessaloniki).
]],
}, {
    path = "mediterranean5.jpg",
    text = [[
Ηγουμενίτσα (Igoumenitsa) and the island of Κέρκυρα (Kerkyra).
]],
}, {
    path = "mediterranean6.jpg",
    text = [[
Mount Etna visible over the clouds.
]],
}, {
    path = "mediterranean7.jpg",
    text = [[
Sicily and mount Etna.
]],
}, {
    path = "mediterranean8.jpg",
    text = [[
The island of Gozo in Malta.
]],
}, {
    path = "mediterranean9.jpg",
    text = [[
The island of Lampedusa.
]],
}, {
    path = "mediterranean10.jpg",
    text = [[
The island of شرقي (Chergui) in Tunisia.
]],
}, {
    path = "mediterranean11.jpg",
    text = [[
Somewhere close to the border between Tunisia and Algeria, by my calculation.
]],
}}

return {
    id = "mediterranean",
    title = "Mediterranean sea",
    timestamp = {"1698019200", "2023-10-23"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "node/305640275",
        mastodon = "112569966772318618",
        facebook = "pfbid02DLav1Q7tTeZUHkKTutFP8E2u6vKVYDZX7YMiqEPqYVGyD6ak73J6BeKhzDBXUh72l",
        instagram = "C74EOVmK12U",
    },
}
