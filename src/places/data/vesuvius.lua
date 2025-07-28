local description <const> = [[Vesuvius rises 1281m on the coast of the gulf of Napoli.  In 79 AD it destroyed, in one of the most catastrophic eruptions in recorded history, many surrounding Roman cities.  Up to 1.5t of material were expelled per second, in clouds 33km high, releasing 100,000 times the energy of the 1945 atomic bombings.  The mountains surrounding the caldera are the remnants of the original, much higher (2km) Monte Somma, destroyed by that eruption.]]

local content <const> = lines {
    par [[
Vesuvius rises 1281m on the coast of the gulf of Napoli.  In 79 AD it destroyed,
in one of the most catastrophic eruptions in recorded history, many surrounding
Roman cities.  Up to 1.5t of material were expelled per second, in clouds 33km
high, releasing 100,000 times the energy of the 1945 atomic bombings.  The
mountains surrounding the caldera are the remnants of the original, much higher
(2km) Monte Somma, destroyed by that eruption.
]],
    par [[
Pyroclastic surges, extremely hot (300°C) clouds of gas and rocks moving at more
than 100m/s, annihilated buildings and victims in seconds.  Other cities were
buried, such as Herculaneum, covered by 23m of surge material.
]],
    par [[
Historian Tacitus relates an account by Pliny the Younger.  His uncle hears his
friends from Stabiae can only escape by sea and sails to their rescue.  When
asked, in the infernal destruction at the shore, if they should retreat, he
responds with the famous Latin proverb: “fortes fortuna iuvat: Pomponianum
pete”, fortune favors the brave, steer to Pomponianum.  He perished while
attempting the rescue.  It is not recorded if his friends did.  I highly
recommend these two letters.
]],
}

local citation <const> = lines {
    par [[
We had scarcely sat down when night came upon us, not such as we have when the
sky is cloudy, or when there is no moon, but that of a room when it is shut up,
and all the lights put out.  You might hear the shrieks of women, the screams of
children, and the shouts of men; some calling for their children, others for
their parents, others for their husbands, and seeking to recognize each other by
the voices that replied; one lamenting his own fate, another that of his family;
some wishing to die, from the very fear of dying; some lifting their hands to
the gods; but the greater part convinced that there were now no gods at all, and
that the final endless night of which we have heard had come upon the world.
]],
    quote_footer("Pliny the Younger", "Epistulae", "LXV: To Tacitus"),
}

local images <const> = {{
    path = "vesuvius0.jpg",
    text = [[
From the gulf.
]],
}, {
    path = "vesuvius1.jpg",
    text = [[
Remnants of Monte Somma.
]],
}, {
    path = "vesuvius2.jpg",
    text = [[
Napoli.
]],
}, {
    path = "vesuvius3.jpg",
    text = [[
The crater.
]],
}, {
    path = "vesuvius4.jpg",
    text = [[
Sobreviventes da subida, em clima sul-riograndense.
]],
}, {
    path = "vesuvius5.jpg",
    text = [[
Path to the caldera.
]],
}, {
    path = "vesuvius6.jpg",
    text = [[
From Castel Sant'Elmo.
]],
}, {
    path = "vesuvius7.jpg",
    text = [[
At sunset, with the Sorrento peninsula.
]],
}, {
    path = "vesuvius8.mp4",
    width = "640",
    text = [[
Sulphuric gas constantly coming out of the rock.
]],
}, {
    path = "vesuvius9.jpg",
    text = [[
John Martin, “The Destruction of Pompeii and Herculaneum” (1822).
]],
}}

return {
    id = "vesuvius",
    title = "Vesuvius",
    timestamp = {"1706832000", "2024-02-02"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "node/4693682411",
        mastodon = "111909907160185040",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0VPveFPMxnuZ6UT3M19bXikE6uHhHGZCizYZoE9pSuBAm4rniB28M4skseaAL3wCpl",
        instagram = "C3Lz35XqMv1",
    },
}
