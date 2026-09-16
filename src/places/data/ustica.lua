local description <const> = indented(format {
    [[Whenever my itinerary includes large cities — which are not my favorite places, you should know by now, I can only take so much of them at a time — I must %s intersperse escapes to remote places. As soon as I got to Sicily's capital and largest city, Palermo (one walk through %s at night, with the incessant chatter of the Italian evenings, was enough), I fled to the small volcanic island of %s, about 70km north towards the heart of the Tyrrhenian sea.]],
    inline_tag("i", {lang = "it"}, "per forza"),
    inline_tag("i", {lang = "it"}, "La Loggia"),
    inline_tag("i", {lang = "it"}, "Ustica"),
})

local content <const> = lines {
    par [[
Whenever my itinerary includes large cities — which are not my favorite places,
you should know by now, I can only take so much of them at a time — I must <i
lang="it">per forza</i> intersperse escapes to remote places.  As soon as I got
to Sicily's capital and largest city, Palermo (one walk through <i lang="it">La
Loggia</i> at night, with the incessant chatter of the Italian evenings, was
enough), I fled to the small volcanic island of <i lang="it">Ustica</i>, about
70km north towards the heart of the Tyrrhenian sea.
]],
    par [[
The island has only one inhabited center, a small town on the northeastern
coast, but is otherwise practically empty (this was in spring, so safely before
the unbearably hot and crowded season).  There I spent the day walking the
trails that cross the island, exploring ancient ruins, climbing volcanic rocks,
and refreshing in crystalline waters or under the shade of exotic vegetation
when the Sicilian heat got too intense (I still got badly sunburned), all the
while being by myself for nearly the entire day, with no one around as far as
    the eye could see.  A day in paradise.
]],
    hr(),
    par [[
According to some interpretations of the Homeric geographical descriptions, this
is the ancient Aeaea, the island of the goddess Circe, the beautiful sorceress
whose cunning turned incautious sailors into swine.  Odysseus, with the help of
the goddess of wisdom, Athena, is not affected by the enchantments, but becomes
her lover.  After he spends a year on the island, she teaches him the way to
Hades, the Greek underworld, the next step of the epic <span
lang="grc">νόστος</span>, his long journey home.
]],
    par [[
Settlements on the island started in the Paleolithic era (XIV–XIII century
B.C.), possibly from the neighboring Aeolian islands.  The Greeks called it
<span lang="grc">Οστεώδες</span> (<i>Osteódes</i>, “ossuary”), due to the
extensive presence of human remains found there.  Its current name is Roman,
derived from Latin <i lang="la">ustum</i> (“burned”), in reference to the dark
volcanic rock which can be seen all around the coast and forms the base of the
land: it was formed from magma originated from the depths of the Earth's mantle,
and the island is in fact the tip of a volcanic complex more than six times
larger, now mostly submerged.
]],
    hr(),
    par [[
I arrived early in the morning — the hydrofoil takes 90 minutes to arrive — and
walked around the center just long enough to visit <i lang="it">Chiesa di
Ferdinando Re</i> and buy some <i lang="it">nespole</i> from the local market,
departing right away to <i lang="it">Sentiero del Mezzogiorno</i>, one of the
several trails which cover the island's entire 12km circumference.  Starting in
the east, at the southern side of the city, it passes through some of the
island's most stunning spots on the way to <i lang="it">Faro di Punta
Cavazzi</i> on the opposite end.
]],
    par [[
As usual, it took way longer than it should have to get there, so there was only
time left to head straight back to the urban side via the opposite coast,
passing by the Bronze Age settlements in <i lang="it">Sentiero Archeologico</i>,
then visit <i lang="it">Rocca della Falconiera</i>, the visible tip of the
submerged volcano crater, with its paleo-Christian tombs and late-Roman
necropolis, before running down to the coast (after a short pause for a gelato,
naturally) to catch the boat back at the end of the day and lament the fact that
there wasn't enough time to stay for at least a few days.
]],
    par [[
It's easy to see the reason for the delay.  Ustica has a very rich aquatic
environment: it was Italy's first marine protected area, and practically its
entire coast is part of <i lang="it">Risierva naturale orientata Isola di
Ustica</i>.  No fishing is allowed, so the water is abundant in marine animals,
geological spectacles, and ancient archaeological remains from millennia of
shipwrecks. Here more than in any <a href="favignana.html">Sicilian island</a>
the spectacle of volcanic rock running straight into the Mediterranean waters is
on full display.  This combined with the contrasting colors of the typical
Sicily vegetation really does make it seem like it was the magic works of the
daughter of Helios and the sea nymph Perse that gave shape to the island.
]],
    par [[
One final note: if you go with the intention of swimming in one of the many
fantastic beaches around the island (and really, you should), make sure to bring
water shoes.  In my hubris, I thought they were the equivalent of gym gloves:
they're not. A cut in my feet from one of the rocky beaches taught me that.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "grc"}, [[
ὣς ἐφάμην, ἡ δ᾽ αὐτίκ᾽ ἀμείβετο δῖα θεάων:<br />
‘διογενὲς Λαερτιάδη, πολυμήχαν᾽ Ὀδυσσεῦ,<br />
μή τί τοι ἡγεμόνος γε ποθὴ παρὰ νηὶ μελέσθω,<br />
ἱστὸν δὲ στήσας, ἀνά θ᾽ ἱστία λευκὰ πετάσσας<br />
ἧσθαι: τὴν δέ κέ τοι πνοιὴ Βορέαο φέρῃσιν.<br />
ἀλλ᾽ ὁπότ᾽ ἂν δὴ νηὶ δι᾽ Ὠκεανοῖο περήσῃς,<br />
ἔνθ᾽ ἀκτή τε λάχεια καὶ ἄλσεα Περσεφονείης,<br />
μακραί τ᾽ αἴγειροι καὶ ἰτέαι ὠλεσίκαρποι,<br />
νῆα μὲν αὐτοῦ κέλσαι ἐπ᾽ Ὠκεανῷ βαθυδίνῃ,<br />
αὐτὸς δ᾽ εἰς Ἀίδεω ἰέναι δόμον εὐρώεντα.
]]),
    par [[
Then the beautiful goddess drew near me, and said:<br />
“Son of Laertes, sprung from Zeus, Odysseus of many devices,<br />
let there be in thy mind no concern for a pilot to guide thy ship,<br />
but set up thy mast, and spread the white sail,<br />
and sit thee down; and the breath of the North Wind will bear her onward.<br />
But when in thy ship thou hast now crossed the stream of Oceanus,<br />
where is a level shore and the groves of Persephone<br />
— tall poplars, and willows that shed their fruit —<br />
there do thou beach thy ship by the deep eddying Oceanus,<br />
but go thyself to the dank house of Hades.
]],
    quote_footer("Homer", "Odyssey", link {
        href = "https://www.perseus.tufts.edu/hopper/text?doc=Hom.+Od.+10&amp;fromdoc=Perseus%3Atext%3A1999.01.0136",
        content = "10.503",
    }),
}

local images <const> = {{
    path = "ustica/IMG_20250425_082516.jpg",
    text = [[
First view of Ustica: <i lang="it">Cala Santa Maria</i>, with the hydrofoil
still docked.
]],
}, {
    path = "ustica/IMG_20250425_083838.jpg",
    text = [[
<i lang="it">Piazza Umberto Primo</i>, the small town center.
]],
}, {
    path = "ustica/IMG_20250425_084721.jpg",
    text = [[
The many <i lang="it">sentieri</i> which cross the island.
]],
}, {
    path = "ustica/IMG_20250425_085130.jpg",
    text = [[
One look back at the port before departing to the trails.
]],
}, {
    path = "ustica/IMG_20250425_085418.jpg",
    text = [[
Starting on <i lang="it">Sentiero del Mezzogiorno</i>.
]],
}, {
    path = "ustica/IMG_20250425_085637.jpg",
    text = [[
The coastal region around <i lang="it">Grotta Azzurra</i>.
]],
}, {
    path = "ustica/IMG_20250425_090108.jpg",
    text = [[
Finally in paradise.
]],
}, {
    path = "ustica/IMG_20250425_091919.jpg",
    text = [[
First climb down to the sea, around <i lang="it">Grotta della Pastizza</i>.
]],
}, {
    path = "ustica/VID_20250425_092223.mp4",
}, {
    path = "ustica/IMG_20250425_092400.jpg",
}, {
    path = "ustica/IMG_20250425_092440.jpg",
}, {
    path = "ustica/IMG_20250425_095149.jpg",
    text = [[
Near <i lang="it">Grotta delle Barche</i>.
]],
}, {
    path = "ustica/IMG_20250425_100115.jpg",
}, {
    path = "ustica/IMG_20250425_103837.jpg",
    text = [[
<i lang="it">Punta Galera</i>.
]],
}, {
    path = "ustica/IMG_20250425_104748.jpg",
}, {
    path = "ustica/VID_20250425_104548.mp4",
}, {
    path = "ustica/IMG_20250425_112425.jpg",
    text = [[
<i lang="it">Punta dell'Arpa</i>.
]],
}, {
    path = "ustica/IMG_20250425_113919.jpg",
}, {
    path = "ustica/IMG_20250425_114531.jpg",
}, {
    path = "ustica/IMG_20250425_115527.jpg",
}, {
    path = "ustica/IMG_20250425_115623.jpg",
}, {
    path = "ustica/IMG_20250425_115914.jpg",
}, {
    path = "ustica/IMG_20250425_120037.jpg",
}, {
    path = "ustica/IMG_20250425_121301.jpg",
}, {
    path = "ustica/IMG_20250425_121315.jpg",
}, {
    path = "ustica/IMG_20250425_122640.jpg",
}, {
    path = "ustica/IMG_20250425_122646.jpg",
}, {
    path = "ustica/IMG_20250425_122757.jpg",
    text = [[
<i lang="it">Faro di Punta Cavazzi</i>.
]],
}, {
    path = "ustica/IMG_20250425_123034.jpg",
    text = [[
Natural swimming pool of <i lang="it">Punta Cavazzi</i>.
]],
}, {
    path = "ustica/IMG_20250425_123854.jpg",
}, {
    path = "ustica/IMG_20250425_123236.jpg",
}, {
    path = "ustica/IMG_20250425_135033.jpg",
}, {
    path = "ustica/IMG_20250425_135654.jpg",
    text = [[
<i lang="it">Cala Sidoti</i>.
]],
}, {
    path = "ustica/IMG_20250425_142337.jpg",
}, {
    path = "ustica/IMG_20250425_143702.jpg",
}, {
    path = "ustica/IMG_20250425_145757.jpg",
    text = [[
<i lang="it">Punta Gorgo Salato</i>.
]],
}, {
    path = "ustica/IMG_20250425_150438.jpg",
    text = [[
<i lang="it">Scoglio Colombara</i>, the <i lang="it">fariglioni</i> of Ustica.
]],
}, {
    path = "ustica/IMG_20250425_150707.jpg",
}, {
    path = "ustica/IMG_20250425_151450.jpg",
}, {
    path = "ustica/IMG_20250425_151613.jpg",
}, {
    path = "ustica/IMG_20250425_153451.jpg",
    text = [[
The road to <i lang="it">Rocca della Falconiera</i>.
]],
}, {
    path = "ustica/IMG_20250425_153317.jpg",
    text = [[
Paleo-Christian tombs under the <i lang="it">rocca</i>.
]],
}, {
    path = "ustica/IMG_20250425_154334.jpg",
    text = [[
Roman necropolis.
]],
}, {
    path = "ustica/IMG_20250425_154123.jpg",
    text = [[
<i lang="it">Punta Gorgo Salato</i> and the <i lang="it">fariglioni</i> seen
from the WWII <i lang="it">avamposto</i> at the northwest end.
]],
}, {
    path = "ustica/IMG_20250425_154937.jpg",
}, {
    path = "ustica/IMG_20250425_155634.jpg",
    text = [[
The port from above.
]],
}, {
    path = "ustica/IMG_20250425_155702.jpg",
    text = [[
<i lang="it">Punta Omo Morto</i>.
]],
}, {
    path = "ustica/IMG_20250425_160321.jpg",
}, {
    path = "ustica/IMG_20250425_160216.jpg",
}, {
    path = "ustica/IMG_20250425_160852.jpg",
}, {
    path = "ustica/IMG_20250425_161026.jpg",
    text = [[
View of the entire northern part of the island from <i lang="it">Castello
Saraceno</i>.
]],
}, {
    path = "ustica/IMG_20250425_161336.jpg",
}, {
    path = "ustica/IMG_20250425_162710.jpg",
}, {
    path = "ustica/IMG_20250425_162645.jpg",
}, {
    path = "ustica/IMG_20250425_162830.jpg",
}, {
    path = "ustica/IMG_20250425_170428.jpg",
    text = [[
A reluctant departure.
]],
}}

return {
    title = "Ustica",
    timestamp = { 1745539200, "2025-04-25" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/6410646",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02DRuXtcFyx3SBCScgUYcADjnWGN795vEk4qMJ315bL9VNQRUgufGAaC23raGoYVkkl",
        instagram = "DRHyP6ojNP-",
    },
}
