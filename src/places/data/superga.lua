local description <const> = [[The legendary Carthaginian general Hannibal made, in 218 B. C., his famous crossing of the Alps, moving from the Iberian to the Italic peninsula.  When the Punic army descended the mountains on its way to Rome they found the city of the Taurini (the “men of the mountains”) on the margins of the river Po.  After all offers of cooperation were rejected, Hannibal's army razed the city to the ground in just three days, and the few survivors fled to the hills on the eastern side of the river.]]

local notes <const> = notes:new()

local content <const> = lines {
    par(format {
        [[
The legendary Carthaginian general Hannibal made, in 218 B. C., his famous
crossing of the Alps, in a surprising incursion into the Italic peninsula not
via the Mediterranean, but the conquered territories in the Iberian peninsula.
When the Punic army descended the mountains on its way to Rome they found the
city of the Taurini (the “men of the mountains”) on the margins of the river Po.
After all offers of cooperation were rejected, Hannibal's army razed the city to
the ground in just three days%s, and the few survivors fled to the hills on the
eastern side of the river.
]],
        notes:add(par [[
The army consisted of 26,000 men and, even more famously, 21 elephants, against
which the small urban center of the Celtic tribe stood no chance.
]]),
    }),
    par [[
Two centuries later the Romans, having won the Punic Wars and established
themselves as the dominant Mediterranean power, refounded that city under
emperor Augustus, naming it <span lang="la">Iulia Augusta Taurinorum</span> and
turning it into one of their main fortified centers in the northern end of the
peninsula, at that time still the liminal zone of the growing empire.
]],
    h2_link {
        "assedio-di-torino",
        [[<span lang="it">assedio di Torino</span>]],
    },
    par [[
In 1706 that same city, which by then was known as Torino and had become the
capital of the <span lang="it">Ducato di Savoia</span>, lay again under siege.
The duke (and future king of Sicily and Sardinia) <span lang="it">Vittorio
Amedeo II di Savoia</span>, worried by the continual territorial expansion of
Louis XIV (the Sun King), which had already extended from France to large
regions of Spain and Italy, had decided to join the opposing coalition, the
Grand Alliance.  In retaliation, an army of more than 44,000 men marched over
and conquered city after city in <span lang="it">Piemonte</span>, leaving the
capital as the only remaining hope for the <span lang="it">Savoia</span>.
]],
    par [[
About 10,500 soldiers stood inside the citadel, behind the defensive walls whose
foundations had been laid by the Romans.  After almost four months of siege, the
duke received his cousin <span lang="it">Eugenio di Savoia</span>, count of
Soissons, and his miraculous reinforcement of 20,000 men.  Looking for a high
point to survey the armies on the plain, the two ascended the same hills to
which the Taurini had escaped two millennia earlier.  There, while visiting a
small chapel in the wilderness dedicated to the <span lang="it">Madonna delle
Grazie</span>, <span lang="it">Vittorio Amedeo</span> made a promise to build a
large basilica in that same place if peace returned to the city.
]],
    par(format {
        [[
And return it did: on 7 September%s,
after 117 days and a battle that is considered one of the greatest victories in
Italy's history, the siege came to an end and the city was liberated.  This was
a turning point for the war, which ended seven years later and made <span
lang="it">Vittorio Amedeo</span> the king of Sicily, the first of his house to
acquire the regal title, beginning the dynastic succession that a century and a
half later would become the Kingdom of Italy.
]],
        notes:add(par [[
Curiously, the second important date, other than the 20th of the same month,
which Torino shares with my home state.
]]),
    }),
    h2_link { "juvarra", "Juvarra" },
    par(format {
        [[
While in Sicily for his coronation, the king met Filippo Juvarra, an ordained
priest from Messina and an accomplished engraver, goldsmith, architect, and
scenographer.  The two rapidly developed a relationship of mutual admiration,
and the newly-crowned king personally chose Juvarra to transform Torino into a
capital fit for a kingdom.  He soon became chief court architect and left his
mark on several architectural masterpieces in the
region%s.
]],
        notes:add(lines {
            par [[
To cite a few, which is not much different from listing the most famous places
in the region:
]],
            ul {
                str [[
<span lang="it">Villa della Regina</span>, the <span lang="it">Armeria</span>
and <span lang="it">Scala delle Forbici</span> in <span lang="it">Palazzo
Reale</span>, <span lang="it">Palazzina di Caccia di Stupinigi</span>, and parts
of <span lang="it">Reggia di Venaria Reale</span>]],
                str [[
the facade of <span lang="it">Palazzo Madama</span> and <span lang="it">Chiesa
di Santa Cristina</span>]],
                str [[
the churches of <span lang="it">Signora del Carmine</span>, <span lang="it">San
Filippo Neri</span>, <span lang="it">Santa Croce</span>, and <span
lang="it">Basilica della Natività</span>]],
            },
        }),
    }),
    par(format {
        [[
His first assigned project was the awesome construction of the basilica on top
of the <span lang="it">collina torinese</span>.  It began in 1716 with the
lowering of the hill by 41m to create a level surface large enough to serve as
the foundation%s, an operation which took only a
year, despite being performed using only shovels, pickaxes, and wheelbarrows,
with materials carried on the back of donkeys over a road that was little more
than a mountain trail.  The building was completed in 1731, an architectural
masterpiece, with its mixture of baroque and neoclassical styles.  It still
conserves the XVI century wooden statue to which <span lang="it">Vittorio
Amedeo</span> made his promise, in a chapel next to the main altar,
%s.
]],
        notes:add(par [[
The district of <span lang="it">Sassi</span> (“stones” in Italian) at the foot
of the hill is named after the deposits resulting from this excavation.
]]),
        link {
            href = "https://www.basilicadisuperga.org/spiritualita/la-cappella-del-voto-della-basilica-di-superga.html",
            lang = "it",
            content = "Capella del Voto",
        },
    }),
    par(format {
        [[
At the ground level, four structures surround the round walls of the main body
of the church.  Three sets of stairs at the front lead to the large neoclassical
portico with eight Corinthian marble columns.  A pair of twin, symmetric bell
towers rise on each side.  At the back, hidden behind the monumental facade, a
monastery with a cloister was built to house the <span lang="it">Ordine dei
Servi di Maria</span>, later becoming an ecclesiastical
academy%s.
]],
        notes:add(par [[
One of its directors was Antonio Martini, who wrote the first Italian
translation of the Vulgata, the Latin Bible.
]]),
    }),
    par [[
Crowning the construction is the monumental cupola which, no doubt due to the
formative years Juvarra spent studying architecture in Rome, incorporates many
aspects of Michelangelo's dome of <span lang="it">Basilica di San Pietro</span>.
Sitting above the 34x51m structure of the first floor, it rises to a height of
75m which, combined with the 670m of the hill, makes it visible from the entire
plain (some 500m below).
]],
    h2_link { "significance", "significance" },
    par(format {
        [[
There are many not-so-subtle references to the event the basilica was built to
celebrate.  It does not face west, as is usual for Christian churches, but is
instead aligned with a wide and incredibly long
street%s, conspicuously named <i lang="it">corso
Francia</i>, and both face directly the country which the <span
lang="it">Savioa</span> had so fiercely fought against and defeated.
]],
        notes:add(par [[
In fact, its 11.75km of extension make it the longest straight street in Europe.
]]),
    }),
    par [[
So much so that this almost resulted in its destruction when Napoleon brought a
new period of French occupation to the region, and all the horrors of the French
revolution.  Only through great courage and resolution was the basilica — all at
once a symbol of faithful devotion, monarchical power and achievement, and
opposition to France, all despised by the revolutionaries — saved from being yet
another victim.
]],
    par(format {
        [[
Because of all its history, Superga became a spiritual center for the <span
lang="it">Savoia</span>.  By the request of <span lang="it">Vittorio Amedeo
II</span>, a crypt was excavated under the altar to serve as the burial place
for the members of the house%s, who ever since
the move to Torino had not had a place dedicated to the memory and veneration of
their ancestors.  From then on, all members of the house were buried there —
until the unification, when those who were kings and queens of Italy started
being buried in the Pantheon in Rome.
]],
        notes:add(par(format {
            [[
%s,
which can be visited.  You <em>have</em> to do it: unfortunately, I cannot show
how spectacular the it is since, as is usual for such somber places, photographs
are not allowed.  The amazing guides there will tell you much more than I can do
in this space about the history of Superga.
]],
            link {
                href = "https://www.basilicadisuperga.org/arte/le-tombe-reali-della-basilica-di-superga.html",
                lang = "it",
                content = "Tombe Reali",
            },
        })),
    }),
    par [[
After king <span lang="it">Umberto I</span>, <i lang="it">il re buono</i>, was
assassinated in Monza in 1900, Superga was chosen as the place to build a
monument in his honor, which can be found right across the street in front of
the basilica.  In it, a Celtic warrior, symbolizing the people of Piemonte,
points his hand to the sky and his sword to a shield with the emblem of the
<span lang="it">Savoia</span> family, standing next to an eagle being shot by an
arrow on top of a Corinthian column, the king who was killed while in service of
his people.
]],
    par [[
Another event which completely unexpectedly became part of its history was the
tragical accident which in 1949 killed the entire football team of <span
lang="it">Grande Torino</span>, known as <span lang="it">“gli
Invincibili”</span> for their unparalleled achievements.  As a result of the
extremely bad weather (a common occurrence in the region) and possibly equipment
failure, the aeroplane which carried the team back from Lisbon hit the back wall
of the monastery while flying at 180km/h, leaving no survivors.  A funerary
monument marks the exact spot where the collision occurred.
]],
    h2_link { "today", "today" },
    par [[
Ever since it was built, the basilica has turned Superga into an attraction for
locals and tourists alike.  Other than to see the church itself, visitors to
this day come for the same reason the duke did three hundred years ago: the
spectacular view of the Alpine arc and the valley below, extending from Monviso
to the south to the Gran Paradiso to the north.
]],
    par [[
A winding staircase of 131 steps leads from the ground floor to the base of the
cupola, with an almost 360° unimpeded view of the surroundings — although you do
have to be fortunate with the weather: because of the infamous constant presence
of fog and urban pollution in the valley, it took me three visits to be able to
see anything at all (which is why, for those who have a good eye, there is such
variable weather and lighting conditions in the pictures below).
]],
    par [[
Just the path up to the basilica is an attraction in itself: departing from
<span lang="it">Sassi</span>, the main road is about 5km long, ascending almost
500m.  Those who are not interested in the (quite intense) physical challenge
have an excellent alternative: a funicular railway, inaugurated in 1884 (when it
was powered by a steam engine), provides a scenic trip up and down the hill.
]],
    par [[
Conversely, those wanting an even greater challenge can loose themselves in the
many trails which cross the area, a natural park, a few kilometers from the city
center, extending over an area of around 400.000m², full of wild animals, dense
woods, and streams running down the slopes.
]],
    h2_link { "notes", "notes" },
    notes,
}

local citation <const> = lines {
    par [[
A poet, a painter, a musician, an architect: the man or woman who is not one of
these is not a Christian.
]],
    quote_footer("William Blake", "Laocoön"),
}

local images <const> = {{
    path = "superga/IMG_20251228_124259.jpg",
    text = [[
The city center of Torino between the hill of Superga, the river Po, and the
Alpine arc, seen from the cupola of the basilica.
]],
}, {
    path = "superga/IMG_20251011_092003.jpg",
    text = [[
The hill is visible from most of the plain — here, from the margin of the Po, on
a cloudy morning.
]],
}, {
    path = "superga/IMG_20251230_125631.jpg",
    text = [[
From elsewhere on the hill.
]],
}, {
    path = "superga/IMG_20251011_092454.jpg",
    text = [[
Lungo Po on the way to Sassi, on a day when autumn was in its full polychromatic
splendor.
]],
}, {
    path = "superga/IMG_20251011_092500.jpg",
}, {
    path = "superga/IMG_20251011_115003.jpg",
}, {
    path = "superga/IMG_20251228_150651.jpg",
}, {
    path = "superga/IMG_20251228_151054.jpg",
}, {
    path = "superga/IMG_20251011_115425.jpg",
    text = [[
Corinthian marble colonnade.
]],
}, {
    path = "superga/IMG_20251228_140643.jpg",
    text = [[
Winding stairs to the cupola.
]],
}, {
    path = "superga/IMG_20251011_150940.jpg",
    text = [[
Northern bell tower.
]],
}, {
    path = "superga/IMG_20251228_135951.jpg",
    text = [[
Southern bell tower.
]],
}, {
    path = "superga/IMG_20251228_140318.jpg",
}, {
    path = "superga/IMG_20251228_151040.jpg",
}, {
    path = "superga/IMG_20251228_135720.jpg",
    small_size = "x400>",
    text = [[
Panoramic view of the valley from the front of the cupola.
]],
}, {
    path = "superga/IMG_20251228_135748.jpg",
}, {
    path = "superga/IMG_20251228_124139.jpg",
    text = [[
Corso Francia.
]],
}, {
    path = "superga/IMG_20251228_124346.jpg",
    text = [[
Monviso.
]],
}, {
    path = "superga/IMG_20251228_125335.jpg",
}, {
    path = "superga/IMG_20251228_125643.jpg",
}, {
    path = "superga/IMG_20251228_135637.jpg",
    text = [[
San Mauro and Settimo Torinese.
]],
}, {
    path = "superga/IMG_20251228_134548.jpg",
}, {
    path = "superga/IMG_20251011_132515.jpg",
}, {
    path = "superga/IMG_20251228_140827.jpg",
}, {
    path = "superga/IMG_20251011_153018.jpg",
    text = [[
Stele behind the altar.
]],
}, {
    path = "superga/IMG_20251011_131506.jpg",
}, {
    path = "superga/IMG_20251011_131540.jpg",
}, {
    path = "superga/IMG_20251228_133917.jpg",
    text = [[
Visible through the door below the choir is part of <span lang="it">Capella del
Voto</span> and the votive statue.
]],
}, {
    path = "superga/IMG_20251011_131621.jpg",
}, {
    path = "superga/IMG_20251228_133644.jpg",
}, {
    path = "superga/IMG_20251228_134341.jpg",
    text = [[
<i>To the Virgin Mother Victorius Amedeus, king of Sardinia, promised during the
French war and, expelled the enemies, made and dedicated</i>.
]],
}, {
    path = "superga/IMG_20251011_131321.jpg",
    text = [[
Inscription commemorating the laying of the foundation stone (1717).
]],
}, {
    path = "superga/IMG_20251011_131830.jpg",
    text = [[
Northern stele: the Annunciation.
]],
}, {
    path = "superga/IMG_20251011_131157.jpg",
    text = [[
Southern stele: birth of the Virgin Mary.
]],
}, {
    path = "superga/IMG_20251228_134418.jpg",
}, {
    path = "superga/IMG_20251011_142106.jpg",
    text = [[
Cloister of the monastery.
]],
}, {
    path = "superga/IMG_20251228_135540.jpg",
}, {
    path = "superga/IMG_20251228_140111.jpg",
}, {
    path = "superga/IMG_20251011_143450.jpg",
    text = [[
Statue of <span lang="it">San Michele</span> at the entrance of <span
lang="it">Tombe Reali</span>.
]],
}, {
    path = "superga/IMG_20251228_132953.jpg",
}, {
    path = "superga/IMG_20251228_141321.jpg",
}, {
    path = "superga/IMG_20251228_141421.jpg",
}, {
    path = "superga/IMG_20251228_141700.jpg",
    text = [[
Gran Torino memorial, on the exact place where the plane hit the back wall of
the monastery.
]],
}, {
    path = "superga/IMG_20251228_142421.jpg",
}, {
    path = "superga/IMG_20251228_150311.jpg",
}, {
    path = "superga/IMG_20251228_150340.jpg",
}, {
    path = "superga/IMG_20251228_150543.jpg",
}, {
    path = "superga/IMG_20251228_151640.jpg",
    text = [[
Stele commemorating the killing of king Umberto I in 1900.
]],
}, {
    path = "superga/IMG_20251228_151724.jpg",
}, {
    path = "superga/IMG_20251011_160736.jpg",
    text = [[
The way down to Sassi via <span lang="it">sentiero</span>
<a href="https://www.basilicadisuperga.org/natura/percorsi-collina-di-torino/sentiero-29.html">29</a>/60.
]],
}, {
    path = "superga/IMG_20251011_165005.jpg",
}, {
    path = "superga/IMG_20251011_165850.jpg",
}, {
    path = "superga/IMG_20251011_172907.jpg",
    text = [[
<span lang="it">Cimitero di Sassi</span>.
]],
}, {
    path = "superga/IMG_20251011_173656.jpg",
    text = [[
From via Friedrich Nietzsche.
]],
}}

return {
    title = "Superga",
    timestamp = { 1766880000, "2025-12-28" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        {"website", "https://www.basilicadisuperga.org"},
        map = "relation/13136043",
        mastodon = "115996946549323092",
        facebook = "bruno.barcarolguimaraes/posts/pfbid029MHsjQzdoffgBu6QsFLHE1Bphxnp4sCH2wVxuu27QTfK5KEZyXjKuHJw2pJabSail",
        instagram = "DUOjyBHDMky",

    },
}
