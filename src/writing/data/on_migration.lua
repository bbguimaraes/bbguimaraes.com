local convert <const> = require "lib.convert"
local path <const> = require "lib.path"

local file_path <const> = var "file_path"
local file_url <const> = var "file_url"
local DIR <const> = path.join("writing", "on_immigration")

local generator <const> = convert.deferred_generator:new {
    path_cache = path.set(file_path(DIR, "*.jpg")),
    profiles = {
        small = {size = "25%", suffix = "_small"},
    },
}

local figure_news <const> = figure {
    class = "figure",
    content = div(
        {class = "row"},
        lines {
            link {
                href = "https://www.bbc.com/news/videos/cnvnml1pen6o",
                content = image {
                    src = file_url(DIR, "bbc_ceuta.jpg"),
                    alt = "BBC — Tens of thousands of migrants enter Spain's Ceuta from Morocco",
                    title = "BBC — Tens of thousands of migrants enter Spain's Ceuta from Morocco",
                },
            },
            link {
                href = "https://nypost.com/2026/07/27/world-news/crazed-paris-terrorist-cuts-down-3-women-then-screams-allah-commanded-me/",
                content = image {
                    src = file_url(DIR, "ny_post_paris.jpg"),
                    alt = "New York Post — Crazed Paris terrorist cuts down 3 women, then screams, “Allah commanded me”",
                    title = "New York Post — Crazed Paris terrorist cuts down 3 women, then screams, “Allah commanded me”",
                },
            },
            link {
                href = "https://www.bbc.com/news/articles/c62eg899l99o",
                content = image {
                    src = file_url(DIR, "bbc_berlin.jpg"),
                    alt = "BBC — Berlin Pride attack suspect shot and killed during police operation",
                    title = "BBC — Berlin Pride attack suspect shot and killed during police operation",
                },
            },
            link {
                href = "https://www.today.it/politica/italia-chiude-frontiera-aerei-mare-spagna-schengen-sospeso-meloni-ultime-notizie.html",
                content = image {
                    src = file_url(DIR, "today.jpg"),
                    alt = "Today.it — L'Italia ha chiuso le frontiere marittime e aeree con la Spagna: Schengen è sospeso",
                    title = "Today.it — L'Italia ha chiuso le frontiere marittime e aeree con la Spagna: Schengen è sospeso",
                },
            },
        }),
}

local image_odysseus <const> = link {
    href = file_url(DIR, "odysseus_in_the_cave_of_polyphemus.jpg"),
    content = image {
        class = "image",
        alt = "Jacob Jordaens, Odysseus in the cave of Polyphemus",
        src = generator:generate_image(
            var, "small",
            path.join(DIR, "odysseus_in_the_cave_of_polyphemus.jpg"),
            {size = "50%"}),
    },
}

local image_achilles <const> = link {
    href = file_url(DIR, "the_wrath_of_achilles.jpg"),
    content = image {
        class = "image",
        alt = "Peter Paul Rubens, The wrath of Achilles",
        src = generator:generate_image(
            var, "small",
            path.join(DIR, "the_wrath_of_achilles.jpg")),
    },
}

local image_jacob <const> = link {
    href = file_url(DIR, "jacob_wrestling_with_the_angel.jpg"),
    content = image {
        class = "image",
        alt = "Gustave Doré, Jacob wrestling with the angel",
        src = generator:generate_image(
            var, "small",
            path.join(DIR, "jacob_wrestling_with_the_angel.jpg")),
    },
}

local citation <const> = centered_quote(blockquote(text_tag("p", {
        lang = "la",
        class = "center-text",
    }, [[
lacrimosa dies illa<br />
qua resurget ex favilla<br />
iudicandus homo reus<br />
huic ergo parce, Deus
]])))

local notes_en <const> = notes:new()
local notes_it <const> = notes:new()
local notes_pt <const> = notes:new()

local description <const> = [[<i>A specter is haunting Europe</i> once again.  For a time it hid behind yet another of its ever-changing disguises, festering and growing, but its devastating effects have become increasingly evident, and impossible to ignore.]]

local content_en <const> = lines {
    par [[
<i>A specter is haunting Europe</i> once again.  For a time it hid behind yet
another of its ever-changing disguises, festering and growing, but its
devastating effects have become increasingly evident, and impossible to ignore.
]],
    figure_news,
    tag("aside", nil, lines {
        par [[
For context, this article is based on a short post published on social media,
commenting on the invasion of Ceuta, where it received some positive responses
as well as requests for clarification, and where there is never enough space —
or appetite, which is all by design, and part of the problem described here —
for well-articulated exposition.  This is the original text:
]],
        blockquote(lines {
            par [[
At what point do we abandon the risibly absurd verbal trickery of pretending
this is a question of “migration” and call it what it is?
]],
            par [[
Say what you want about the current government (I disregard the common petty
bickering about political fealty), at least they recognize it for the barbaric
invasion and deliberate subversion of a once-great civilization [it is], and are
willing to resist (or even to acknowledge it <em>is</em> worth defending),
instead of rolling over and committing protracted suicide like the
pseudo-empathetic, spineless defectors most have become.
]],
        }),
    }),
    h2_link { "the-question", "the question" },
    par [[
First, some qualifications, since this is such a polarizing subject (we will
soon see why), often discussed in the most primitive and superficial manner
possible.
]],
    par(format {
        [[
This is not about racial superiority, obviously, but <i>cultural</i>
superiority, so to speak, and the distinction is
crucial%s.
Some cultures are better than others: not absolutely, but to the extent that
they adopt ideas — and ideals — which are better than others.  It is irrelevant,
a mere historical accident, that such cultural divisions sometimes overlap with
so-called “racial” divisions: nothing precludes a culture from recognizing and
adopting these universal truths and joining the great fellowship we call
<i>the West</i>%s.
It is this which distinguishes nations which flourish from those perpetually
mired in self-destructive corruption and conflict, and not, contrary to the
incessant proclamations of the modern age, the exploitation of one by the
other%s.
]],
        notes_en:add(par [[
One of the greatest and subtlest rhetorical sleights of hand in the modern era
is to conflate these two, in an intellectually dishonest attempt to stain the
latter with the unquestionable immorality of the former.
]]),
        notes_en:add(par [[
This is always the sense of term I use here.
]]),
        notes_en:add(lines {
            par [[
That is a human universal, from the dawn of time.  Every culture has at some
point been exploiter and exploited, but a select few, over the course of
centuries, have evolved a moral and civic code which breaks away from such
brutal systems.
]],
            par [[
Examples abound all over the world of nations whose momentary economic
prosperity was completely destroyed by the collapse or lack altogether of their
system of values.
]],
        }),
    }),
     figure {
        class = "figure",
        caption = "Jacob Jordaens, <i>Odysseus in the cave of Polyphemus</i>",
        content = image_odysseus,
    },
    par(format {
        [[
Also, none of this is about <em>legal</em>
immigration%s.
Reasonable people can argue about what kind of foreigners they want their
society to take in, and how many, and at what rate.  There is nothing immoral
about this: these stable and just societies are extremely difficult to develop
and maintain, as one quick glance at a history book will show; it might as well
be called a miracle.  This can only occur within a group (whatever its
composition) where all individuals share a moral code and abide by
it%s.
]],
        notes_en:add(lines {
            par [[
I am an immigrant — needless to say, a legal one.  I left my country a decade
ago and today I am a citizen of the great nation of Italy, where most of my
family originally comes from, themselves immigrants who left for the American
continent at the end of the XIX century.
]],
            par [[
There is an idea that migrants should support illegal immigration.  It is
absurd, and verges on the insulting.  The last thing someone who has gone
through the immigration process wants is for criminals, who completely disregard
the laws of his new homeland, to be accepted and welcomed, bringing with them
the very same terrible ideas he has worked so hard to escape from.
]],
        }),
        notes_en:add(par [[
I live very close to an infamous neighborhood that has a heavy concentration of
just this type of “immigrants” (many of them illegal, of course).  The news
reports are filled with, and I have witnessed several times, the horrors
routinely perpetrated by them: violence, robbery, drug trafficking, sexual
assault, rape, etc.  It is generally accepted that this is an area that women,
children, the elderly, and other disadvantaged groups must avoid.
]]),
    }),
    par(format {
        [[
And that is exactly what condoning illegal immigration
subverts%s.
A law that is not enforced might as well not exist, and worse: to not enforce it
is to tear the very fabric of civilized society, to spit in the face of
law-abiding citizens.  Not only is it unjust to them, but also to the criminals
themselves, who are left in their delinquent state, degrading the society they
ostensibly wish to be a part of.  An illegal immigrant offends that society with
its very act of entering it, which is a rejection of and an affront to its
rules.  The law is a teacher, and to leave these criminals unpunished is to deny
them the opportunity to truly become citizens in the proper sense of the
word%s.
]],
        notes_en:add(lines {
            par(format {
                [[
The claim that the situation in Ceuta was not caused by the policies of the
Spanish government is absurd.  A few months back Pedro Sánchez, its absolute
failure of a Prime Minister,
%s
a plan to legalize the status of 500,000 “undocumented migrants” (read:
criminals), hailing it “an act of justice” (<i>war is peace, freedom is
slavery</i>).  Then, in June, just a month before the invasion, its Supreme
Court
%s
that immediate expulsion should not be exacted on those invading via the sea,
rather than a land barrier.
]],
                link {
                    href = "https://www.bbc.com/news/articles/cy511nln2xvo",
                    content = "approved",
                },
                link {
                    href = "https://www.bbc.com/news/articles/cx2v91xn1z9o",
                    content = "ruled",
                },
            }),
            par [[
To pretend that these were not the direct cause, as the government has in its
attack against Italy and other countries trying to protect their citizens from
Spain's systematic failures, is to mock the intelligence of those they
spitefully accuse of not being allies.
]],
        }),
        notes_en:add(blockquote(lines {
            text_tag("p", {lang = "grc"}, [[
ὥσπερ γὰρ καὶ τελεωθὲν βέλτιστον τῶν ζῴων ὁ ἄνθρωπός ἐστιν, οὕτω καὶ χωρισθεὶς
νόμου καὶ δίκης χείριστον πάντων.
]]),
            par [[
For as man is the best of the animals when perfected, so he is the worst of all
when sundered from law and justice.
]],
            quote_footer(
                "Aristotle", "Politics",
                link {
                    href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.01.0058%3Abook%3D1%3Asection%3D1253a",
                    content = "1253a",
                }),
        })),
    }),
    h2_link { "the-fall-of-modern-man", "the fall of (modern) man" },
    par [[
Critical and ominous as all of this may be, it still does not get to the bottom
of the problem, to the reason why it is so concerning.  In truth these migration
waves are only a symptom, not the cause — though, once effected, they do inflict
severe damage to an already frail society.
]],
    par(format {
        [[
Even the Spanish government admits that one of the primary reasons for the large
demand for immigration is population decline.  Fertility in Spain is at the
abysmal rate, even for Western standards, of <em><b>1.1</b></em>, meaning each
woman has on average about one
child%s.
Take a moment to make sure you understand just how apocalyptic this number is:
it means effectively a <em>halving</em> of the population every generation,
absent other
factors%s.
]],
        notes_en:add(par [[
To give an idea of how precipitous that change is, the rate was 2.77 as recently
as 1976, already down from 3 in 1964.
]]),
        notes_en:add(par [[
The latest estimates from Ceuta are that the number of criminals who crossed the
border is almost the same as the number of inhabitants of the exclave: about
80,000.
]]),
    }),
    figure {
        class = "hor-center float-right",
        caption = "Peter Paul Rubens, <i>The wrath of Achilles</i>",
        content = image_achilles,
    },
    par(format {
        [[
This is no doubt in part fueled by the modern apocalyptic fervor, with its tired
alarmist claims of overpopulation that have gone unfulfilled for more than a
century.  But that is also only one more facet of the real problem: the
systematic, relentless attack on the core values and principles of the great
societies that built the Western world.  The problems discussed so far are just
the symptoms of a society that has given up on itself, given up on its history
and its ideals, decided that it is not worth preserving and should just sail
into the sunset and disappear%s.
]],
        notes_en:add(par(format {
            [[
If you think this is an exaggeration, go watch Cristopher Nolan's <i>Odyssey</i>
for the latest not-so-subtle presentation of this theme (as one masterful
interviewer %s,
“a bard for a civilization at dusk”), or simply pay close attention to just
about any modern work of art.
]],
            link {
                href = "https://www.youtube.com/watch?v=wa4I8Ch2TRo",
                content = "recently put it",
            },
        })),
    }),
    par [[
And there is no shortage of predators — some quite literally barbarians at the
gate — waiting for the opportunity to take over.  There is no need for grand
conspiracy theories about one single group (pick your favorite) coordinating in
the shadows to usurp power, the motivating spirit behind all of this is obvious
to students of history and the human character: a divided society is more easily
invaded and pillaged; ignorant and amoral people are more easily ruled and
controlled, by collectivist ideologies; unprincipled women are more easily
exploited; an undemanding, shallow existence is more easily subsisted; etc.
Idealism, struggle, virtue, are all difficult, the arduous product of great
civilizations.  It is much easier to dance with abandon on the streets — at
least until the flaming ruins come crashing down all around.
]],
    h2_link {
        "%CE%BD%CF%8C%CF%83%CF%84%CE%BF%CF%82",
        '<span lang="grc">νόστος</span>',
    },
    par [[
I will not lie (I am not a politician, or an “influencer”).  Humanity is so far
down this death spiral, it will take super-human effort to revert.  It may even
take saints.  It is certainly a titanic request for an age so self-centered and
selfish as ours.
]],
    figure {
        class = "hor-center float-right",
        content = image_jacob,
        caption = "Gustave Doré, <i>Jacob wrestling with the angel</i>",
    },
    par [[
All that said, here is how I suggest we begin to revert this extremely dire
situation.
]],
    ul {
        lines {
            par [[
Get off of social media as much as possible.  Stop using it as your primary
source of knowledge.  Stop basing your principles on what others say you should
think.
]],
            par [[
Forget politics, stop putting your faith in politicians or other low forms of
life to correct the world.
]],
        },
        lines {
            par [[
Get a real education.  This will be difficult.  It is the primary duty of
society, and it has failed us.  It has failed precisely because it conveniently
forgot and abdicated its primary duty.
]],
            par [[
But this cycle will go on, forever downward (and hell is a bottomless pit, there
is always down), unless we recognize that duty is now ours, and accept it.
]],
        },
        par [[
Read fervently, and think critically about what you read.  Read primary sources
as much as you can.  Read the classics. There is a reason the <i>liberal</i>
arts were so called: their very purpose is to instill those principles, to make
men <em>free</em> (contrary to what social media have inculcated in you, being
free is not doing whatever one wants, it is having the capacity to do what one
ought to).
]],
        par [[
Learn about your culture.  Learn what made it great, because it is great.  Learn
exactly what makes it better than others, in those aspects that it is.  Learn
what an immense privilege that is, learn to respect and to be grateful for it.
]],
        lines {
            par [[
Begin small and humbly, begin with <em>yourself</em>.  Ask the question
Solzhenitsyn asked in the depths of darkness in the Soviet gulag: how am
<em>I</em> responsible?  What moral deficiency of mine has contributed to this?
Get your life in order.  Then move on to your family, your group of friends,
your colleagues, your community.
]],
            par [[
Find a husband/wife, build a family, have children (preferably lots of them),
and transmit your culture to them.  Teach them why they are free and prosperous,
and teach them the duties which are inherent in that privilege.
]],
        },
    },
    par [[
Do all of this and then — God willing, with fear and trembling — we can start
our struggle up the hill to rebuild the city that was once the light of the
world.
]],
    citation,
    hr(),
    h2("notes"),
    notes_en,
}

local content_it <const> = lines {
    par [[
<i>Uno spettro si aggira per l'Europa</i> ancora una volta.  Per un certo
periodo si è nascosto dietro un altro dei suoi mascheramenti in continuo
cambiamento, suppurando e crescendo, ma i suoi effetti devastanti sono diventati
sempre più evidenti, e impossibili da ignorare.
]],
    figure_news,
    tag("aside", nil, lines {
        par [[
Per contesto, questo articolo si basa su una breve pubblicazione sui media
sociali, commentando l'invasione di Ceuta, dove ha ricevuto risposte positive e
richieste di chiarimenti, e dove non c'è mai abbastanza spazio — o appetito,
tutto ciò progettato, e parte del problema descritto qui — per l'esposizione ben
articolata. Questo è il testo originale:
]],
        blockquote(lines {
            par [[
A che punto abbandoniamo l'imbroglio verbale risibilmente assurdo di fingere che
questa sia una questione di “migrazione” e lo chiamiamo quello che è?
]],
            par [[
Dite quello che volete sull'attuale governo (ignoro le liti meschine comuni
sulla fedeltà politica), almeno lo riconoscono per la barbara invasione e
deliberata sovversione di una civiltà un tempo grande [che è], e sono disposti a
resistere (o addirittura a riconoscere che vale la pena difendere), invece di
ribaltarsi e commettere un suicidio prolungato come gli disertori
pseudo-empatici senza spina dorsale che la maggior parte sono diventati.
]],
        }),
    }),
    h2_link { "la-questione", "la questione" },
    par [[
In primo luogo, alcune qualifiche, siccome si tratta di un argomento così
polarizzante (vedremo presto perché), spesso discusso nel modo più primitivo e
superficiale possibile.
]],
    par(format {
        [[
Non si tratta di superiorità razziale, ovviamente, ma di superiorità
<i>culturale</i>, per così dire, e la distinzione è cruciale%s.  Alcune culture
sono migliori di altre: non assolutamente, ma nella misura in cui adottano idee
– e ideali – che sono migliori di altre.  È irrilevante, un semplice accidente
storico, che tali divisioni culturali a volte si sovrappongano a cosiddette
divisioni “razziali”: nulla preclude a una cultura di riconoscere e adottare
queste verità universali e di unirsi al grande sodalizio che chiamiamo
<i>l'Occidente</i>%s.
È questo che distingue le nazioni che prosperano da quelle perennemente
intrappolati nella corruzione e nel conflitto autodistruttivi, e non,
contrariamente agli incessanti proclami dell'età moderna, lo sfruttamento
dell'una
dall'altra%s.
]],
        notes_it:add(par [[
Uno dei maggiori e più sottili giochi di prestigio retorici dell'età moderna è
confondere questi due, nel tentativo intellettualmente disonesto di macchiare
quest'ultimo con l'indiscutibile immoralità del primo.
]]),
        notes_it:add(par [[
Questo è sempre il senso che uso qui.
]]),
        notes_it:add(lines {
            par [[
Questo è un fatto umano universale, dall'inizio dei tempi.  Ogni cultura è stata
a un certo punto sfruttatrice e sfruttata, ma alcune poche elette, nel corso dei
secoli, hanno evoluto un codice morale e civico che si stacca da tali sistemi
brutali.
]],
            par [[
Esempi abbondano in tutto il mondo di nazioni la cui momentanea prosperità
economica è stata completamente distrutta dal collasso o dalla mancanza del
tutto del loro sistema di valori.
]],
        }),
    }),
     figure {
        class = "figure",
        caption = "Jacob Jordaens, <i>Ulisse nella grotta di Polifemo</i>",
        content = image_odysseus,
    },
    par(format {
        [[
Inoltre, niente di questo riguarda l'immigrazione
legale%s.
Persone ragionevoli possono discutere su quale tipo di stranieri vogliono che la
loro società accette, e quanti, e a quale ritmo.  Non c'è nulla di immorale in
questo: tali società stabili e giuste sono estremamente difficili da sviluppare
e mantenere, come mostrerà un rapido sguardo a un libro di storia; potrebbe
benissimo essere chiamato un miracolo.  Questo può avvenire solo in un gruppo
(qualunque sia la sua composizione) dove tutti condividono un codice morale e lo
rispettano%s.
]],
        notes_it:add(lines {
            par [[
Sono un immigrante — inutile dirlo, legale.  Ho lasciato il mio paese una decina
di anni fa e oggi sono un cittadino della grande nazione d'Italia, da dove
proviene la maggior parte della mia famiglia, essi stessi immigranti partiti per
il continente americano alla fine del XIX secolo.
]],
            par [[
C'è un'idea che i migranti dovrebbero sostenere l'immigrazione illegale.  È
assurda, quasi offensiva.  L'ultima cosa che qualcuno che ha completato il
processo di immigrazione vuole è che criminali, che ignorano completamente le
leggi della sua nuova patria, siano accettati e accolti, portando con sé le
stesse terribili idee da cui ha lavorato così duramente per fuggire.
]],
        }),
        notes_it:add(par [[
Vivo molto vicino a un quartiere infame che ha una grande concentrazione di
questo tipo di “immigrate” (molti dei quali illegali, ovviamente).  Le notizie
sono piene, e ho assistito più volte, agli orrori regolarmente perpetrati da
loro: violenza, rapina, traffico di droga, violenza sessuale, stupro, etc.  È
generalmente accettato che si tratta di un'area che le donne, i bambini, gli
anziani e altri gruppi svantaggiati devono evitare.
]]),
    }),
    par(format {
        [[
Ed è esattamente questo che condonare l'immigrazione illegale
sovverte%s.
Una legge che non viene applicata potrebbe anche non esistere, e peggio: non
farla rispettare è strappare il tessuto stesso della società civile, sputare in
faccia ai cittadini rispettosi della legge.  Non solo è ingiusto per loro, ma
anche per i criminali stessi, che rimangono nel loro stato delinquenziale,
degradando la società di cui ostensivamente desiderano far parte.  Un immigrante
illegale offende quella società con il suo stesso atto di entrarvi, che è un
rifiuto e un affronto alle sue regole.  La legge è una insegnante, e lasciare
questi criminali impuniti è negare loro l’opportunità di diventare veramente
cittadini nel senso proprio della
parola%s.
]],
        notes_it:add(lines {
            par(format {
                [[
L'affermazione che la situazione a Ceuta non è stata causata dalle politiche del
governo spagnolo è assurda.  Qualche mese fa Pedro Sánchez, il suo fallimento
assoluto di un Primo Ministro,
%s
un piano per legalizzare lo status di 500.000 “migranti senza documenti” (leggi:
criminali), salutandolo come un “un atto di giustizia” (<i>la guerra è pace, la
libertà è schiavitù</i>).  Poi, a giugno, appena un mese prima dell'invasione,
la sua Corte Suprema
%s
che l'espulsione immediata non dovrebbe essere applicata a coloro che invadono
attraverso il mare, piuttosto che per una barriera terrestre.
]],
                link {
                    href = "https://www.bbc.com/news/articles/cy511nln2xvo",
                    content = "ha approvato",
                },
                link {
                    href = "https://www.bbc.com/news/articles/cx2v91xn1z9o",
                    content = "ha stabilito",
                },
            }),
            par [[
Far finta che queste non fossero la causa diretta, come il governo ha fatto nel
suo attacco contro l'Italia e altri paesi che hanno cercato di proteggere i loro
cittadini dai fallimenti sistematici della Spagna, è prendere in giro
l'intelligenza di coloro che accusano dispettosamente di non essere alleati.
]],
        }),
        notes_it:add(blockquote(lines {
            text_tag("p", {lang = "grc"}, [[
ὥσπερ γὰρ καὶ τελεωθὲν βέλτιστον τῶν ζῴων ὁ ἄνθρωπός ἐστιν, οὕτω καὶ χωρισθεὶς
νόμου καὶ δίκης χείριστον πάντων.
]]),
            par [[
Perché come l’uomo è il migliore degli animali quando è perfezionato, così è il
peggiore di tutti quando è separato dalla legge e dalla giustizia.
]],
            quote_footer(
                "Aristotele", "Politica",
                link {
                    href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.01.0058%3Abook%3D1%3Asection%3D1253a",
                    content = "1253a",
                }),
        })),
    }),
    h2_link { "la-caduta-dell-uomo-moderno", "la caduta dell'uomo (moderno)" },
    par [[
Critico e minaccioso come tutto questo possa essere, non arriva ancora al fondo
del problema, al motivo per cui è così preoccupante.  In verità queste ondate
migratorie sono solo un sintomo, non la causa – anche se, una volta effettuate,
infliggono gravi danni a una società già fragile.
]],
    par(format {
        [[
Anche il governo spagnolo ammette che una delle ragioni principali della grande
domanda di immigrazione è il declino della popolazione.  La fertilità in Spagna
è al livello abissale, anche se si parla dell'occidente, di <em><b>1,1</b></em>,
il che significa che ogni donna ha in media circa un
bambino%s.
Prenditi un momento per assicurarti di capire quanto sia apocalittico questo
numero: significa effettivamente un <em>dimezzamento</em> della popolazione ogni
generazione, assenti altri
fattori%s.
]],
        notes_it:add(par [[
Per dare un'idea di quanto sia precipitoso quel cambiamento, il tasso era di
2,77 fino al 1976, già in calo rispetto ai 3 del 1964.
]]),
        notes_it:add(par [[
Le ultime stime di Ceuta sono che il numero di criminali che hanno attraversato
il confine è quasi lo stesso del numero di abitanti dell'exclave: circa 80.000.
]]),
    }),
    figure {
        class = "hor-center float-right",
        caption = "Peter Paul Rubens, <i>La furia di Achille</i>",
        content = image_achilles,
    },
    par(format {
        [[
Questo è senza dubbio in parte alimentato dal fervore apocalittico moderno, con
le sue trite affermazioni allarmistiche di sovrappopolazione che sono rimaste
inadempiute per più di un secolo.  Ma anche questo è solo un aspetto in più del
vero problema: l'attacco sistematico e implacabile ai valori fondamentali e ai
principi delle grandi società che hanno costruito il mondo occidentale.  I
problemi discussi finora sono solo i sintomi di una società che ha rinunciato a
se stessa, rinunciata alla sua storia e ai suoi ideali, ha deciso che non vale
la pena preservarsi e che dovrebbe semplicemente navigare verso il tramonto e
scomparire%s.
]],
        notes_it:add(par(format {
            [[
Se pensi che questa sia un'esagerazione, vai a guardare l'<i>Odissea</i> di
Cristopher Nolan per l'ultima presentazione non così sottile di questo tema
(come ha
%s
un'intervistatrice magistrale, “un bardo per una civiltà al tramonto”) o
semplicemente presta attenzione a qualsiasi opera d'arte moderna.
]],
            link {
                href = "https://www.youtube.com/watch?v=wa4I8Ch2TRo",
                content = "recentemente detto",
            },
        })),
    }),
    par [[
E non mancano predatori – alcuni letteralmente barbari alla porta – in attesa
dell'opportunità di assumere il controllo.  Non c'è bisogno di grandi teorie
cospirative su un singolo gruppo (scegli il tuo preferito) coordinandosi
nell'ombra per usurpare il potere, lo spirito motivante dietro tutto questo è
ovvio per gli studenti della storia e del carattere umano: una società divisa è
più facilmente invasa e saccheggiata; persone ignoranti e amorali sono più
facilmente governate e controllate, da ideologie collettiviste; donne senza
principi sono più facilmente sfruttate; un'esistenza con poche esigenze e
superficiale è più facilmente sussistita.  L'idealismo, lo sforzo, la virtù,
sono difficili, prodotti arduo delle grandi civiltà.  È molto più facile ballare
con abbandono per le strade — almeno fino a quando le rovine fiammeggianti non
crollano tutto intorno.
]],
    h2_link {
        "%CE%BD%CF%8C%CF%83%CF%84%CE%BF%CF%82",
        '<span lang="grc">νόστος</span>',
    },
    par [[
Non mentirò (non sono un politico, o un “influencer”).  L'umanità è così in
basso in questa spirale mortale che ci vorrà uno sforzo super-umano per tornare.
Potrebbero servire dei santi.  È certamente una richiesta titanica per un’età
così egocentrica ed egoista come la nostra.
]],
    figure {
        class = "hor-center float-right",
        content = image_jacob,
        caption = "Gustave Doré, <i>Giacobbe lotta con l'angelo</i>",
    },
    par [[
Tutto ciò detto, ecco come suggerisco di iniziare a invertire questa situazione
terribile.
]],
    ul {
        lines {
            par [[
Cerca di stare il più possibile lontano dai media sociali.  Smetti di usarle
come fonte primaria di conoscenza.  Smetti di basare i tuoi principi su ciò che
gli altri dicono che dovresti pensare.
]],
            par [[
Dimenticati della politica, smetti di riporre la tua fiducia nei politici o in
altre basse forme di vita per correggere il mondo.
]],
        },
        lines {
            par [[
Ottieni una vera educazione.  Questo sarà difficile.  È il dovere primario della
società, e ci ha deluso.  Ha fallito proprio perché ha convenientemente
dimenticato e abdicato il suo dovere primario.
]],
            par [[
Ma questo ciclo continuerà, per sempre verso il basso (e l'inferno è una fossa
senza fondo, c'è sempre giù), a meno che non riconosciamo che il dovere è ora
nostro, e lo accettiamo.
]],
        },
        par [[
Leggi con fervore e pensa in modo critico a ciò che leggi.  Leggi le fonti
primarie il più possibile.  Leggi i classici.  C'è una ragione per cui le arti
<i>liberali</i> sono chiamate così: il loro stesso scopo è quello di instillare
quei principi, di rendere <i>liberi</i> gli uomini (contrariamente a ciò che i
media sociali hanno inculcato in te, essere libero non è fare ciò che si vuole,
è avere la capacità di fare ciò che si deve).
]],
        par [[
Scopri di più sulla tua cultura.  Scopri cosa l'ha resa grande, perché è grande.
Scopri esattamente cosa la rende migliore dalle altre, in quegli aspetti che è.
Impara come questo sia un privilegio immenso, impara a rispettare e ad essere
grato per questo.
]],
        lines {
            par [[
Inizia con piccoli passi e umilmente, inizia da <em>te stesso</em>.  Fai la
domanda che Solzhenitsyn si ha fatto nel profondo delle tenebre del gulag
sovietico: come sono <em>io</em> responsabile?  Quale carenza morale mia ha
contribuito a questo?  Metti in ordine la tua vita.  Poi passa alla tua
famiglia, al tuo gruppo di amici, ai tuoi colleghi, alla tua comunità.
]],
            par [[
Trova un marito/moglie, costruisci una famiglia, fai figli (preferibilmente
tanti) e trasmetti loro la tua cultura.  Insegna loro perché sono liberi e
prosperi, e insegna i doveri che sono inerenti a questo privilegio.
]],
        },
    },
    par [[
Fai tutto questo e poi — Dio volendo, con paura e tremore — possiamo iniziare la
nostra lotta su per la collina per ricostruire la città che un tempo era la luce
del mondo.
]],
    citation,
    hr(),
    h2("notte"),
    notes_it,
}

local content_pt <const> = lines {
    par [[
<i>Um espectro assombra a Europa</i> mais uma vez.  Por um tempo se escondeu
atrás de mais um de seus disfarces em constante mudança, infestando e crescendo,
mas os seus efeitos devastadores têm se tornado crescentemente evidentes, e
impossíveis de ignorar.
]],
    figure_news,
    tag("aside", nil, lines {
        par [[
Como contexto, este artigo é baseado numa publicação curta nas redes sociais,
comentando a invasão de Ceuta, onde recebeu respostas positivas bem como pedidos
de esclarecimento, e onde nunca existe espaço suficiente — ou apetite, como
planejado, o que é parte do problema descrito aqui — para uma exposição bem
articulada.  Aqui está o texto original:
]],
        blockquote(lines {
            par [[
A que ponto abandonamos o artifício verbal risivelmente absurdo de fingir que isso é uma questão de “migração” e dizemos o que realmente é?
]],
            par [[
Diga o que quiser sobre o governo atual (eu desprezo a briga mesquinha comum
sobre fidelidade política), pelo menos reconhecem a invasão bárbara e subversão
deliberada de uma civilização outrora grande [que é], e estão dispostos a
resistir (ou mesmo a reconhecer que <em>vale</em> a pena defender), ao invés de
se deitar e cometer suicídio prolongado como os desertores pseudo-empáticos sem
espinha que a maioria se tornou.
]],
        }),
    }),
    h2_link { url_escape("a-questão"), "a questão" },
    par [[
Primeiro, algumas qualificações, já que este é um assunto tão polarizador (em
breve veremos por quê), frequentemente discutido da maneira mais primitiva e
superficial possível.
]],
    par(format {
        [[
Não se trata de superioridade racial, obviamente, mas de superioridade
<i>cultural</i>, por assim dizer, e a distinção é
crucial%s.
Algumas culturas são melhores que outras: não absolutamente, mas na medida em
que adotam ideias – e ideais – que são melhores que outras.  É irrelevante, um
mero acidente histórico, que tais divisões culturais às vezes se sobreponham a
divisões ditas “raciais”: nada preclude uma cultura de reconhecer e adotar essas
verdades universais e se juntar à grande comunidade que chamamos de
<i>Ocidente</i>%s.
É isso que distingue as nações que florescem daquelas perpetuamente emaranhadas
em corrupção e conflito autodestrutivos, e não, ao contrário das incessantes
proclamações da era moderna, a exploração de uma pela
outra%s.
]],
        notes_pt:add(par [[
Um dos maiores e mais sutis truques retóricos da era moderna é confundir esses
dois, numa tentativa intelectualmente desonesta de macular este último com a
inquestionável imoralidade do primeiro.
]]),
        notes_pt:add(par [[
Esse é sempre o sentido que uso aqui.
]]),
        notes_pt:add(lines {
            par [[
Isso é um fato humano universal, desde o início dos tempos.  Cada cultura, em
algum momento, foi exploradora e explorada, mas algumas poucas seletas, ao longo
de séculos, evoluíram um código moral e cívico que rompe com tais sistemas
brutais.
]],
            par [[
Exemplos são abundantes por todo o mundo de nações cuja momentânea prosperidade
econômica foi destruída completamente pelo colapso ou ausência total do seu sistema de valores.
]],
        }),
    }),
     figure {
        class = "figure",
        caption = "Jacob Jordaens, <i>Ulisses na caverna de Polifemo</i>",
        content = image_odysseus,
    },
    par(format {
        [[
Também, nada disso é sobre imigração
<em>legal</em>%s.
Pessoas razoáveis podem discutir sobre que tipo de estrangeiros querem que sua
sociedade aceite, e quantos, e com que ritmo.  Não há nada de imoral nisso:
sociedades estáveis e justas como essas são extremamente difíceis de desenvolver
e manter, como uma rápida olhada num livro de história mostra; pode muito bem
ser chamado de milagre.  Isso só ocorre dentro de um grupo (qualquer que seja a
sua composição) onde todos os indivíduos compartilham e seguem um código
moral%s.
]],
        notes_pt:add(lines {
            par [[
Eu sou um imigrante – desnecessário dizer, legal.  Deixei meu país há uma
década e hoje sou cidadão da grande nação da Itália, de onde vem originalmente a
maior parte da minha família, eles próprios imigrantes que partiram para o
continente americano no final do século XIX.
]],
            par [[
Há uma ideia de que os migrantes devem apoiar a imigração ilegal.  É absurda, e
beira o insulto.  A última coisa que alguém que passou pelo processo de
imigração quer é que criminosos, que desconsideram completamente as leis de sua
nova pátria, sejam aceitos e recebidos, trazendo consigo as mesmas ideias
terríveis que trabalhou tão duro para escapar.
]],
        }),
        notes_pt:add(par [[
Vivo muito perto de uma vizinhança infame que tem uma grande concentração desse
tipo de “imigrante” (muitos deles ilegais, é claro).  As notícias estão cheias
de, e eu testemunhei várias vezes, os horrores rotineiramente perpetrados por
eles: violência, roubo, tráfico de drogas, agressão sexual, estupro, etc.  É
geralmente aceito que esta é uma área que mulheres, crianças, idosos e outros
grupos desfavorecidos têm que evitar.
]]),
    }),
    par(format {
        [[
E é exatamente isso que tolerar a imigração ilegal
subverte%s.
Uma lei que não é aplicada poderia muito bem não existir, e pior: não cumpri-la
é rasgar o próprio tecido da sociedade civilizada, cuspir na cara dos cidadãos
que cumprem a lei.  Não só é injusto com eles, mas também com os próprios
criminosos, que são deixados em seu estado delinquente, degradando a sociedade
da qual eles ostensivamente desejam fazer parte.  Um imigrante ilegal ofende
essa sociedade com o próprio ato de ingresso nela, que é uma rejeição e uma
afronta às suas regras.  A lei é uma professora, e deixar esses criminosos
impunes é negar a oportunidade de realmente se tornarem cidadãos no sentido
próprio da palavra%s.
]],
        notes_pt:add(lines {
            par(format {
                [[
A alegação que a situação em Ceuta não foi causada pelas políticas do governo
espanhol é absurda.  Alguns meses atrás, Pedro Sánchez, o seu fracasso absoluto
de um primeiro-ministro,
%s
um plano para legalizar o status de 500.000 “migrantes não-documentados”
(leia-se: criminosos), saudando-o como “um ato de justiça” (<i>guerra é paz,
liberdade é escravidão</i>).  Então, em junho, apenas um mês antes da invasão,
sua Suprema Corte
%s
que a expulsão imediata não deveria ser aplicada àqueles que invadem pelo mar,
em vez de por uma barreira terrestre.
]],
                link {
                    href = "https://www.bbc.com/news/articles/cy511nln2xvo",
                    content = " aprovou",
                },
                link {
                    href = "https://www.bbc.com/news/articles/cx2v91xn1z9o",
                    content = " decidiu",
                },
            }),
            par [[
Fingir que esta não seja a causa direta, como o governo fez em seu ataque contra
a Itália e outros países tentando proteger seus cidadãos dos fracassos
sistemáticos da Espanha, é zombar da inteligência daqueles que eles acusam
rancorosamente de não serem aliados.
]],
        }),
        notes_pt:add(blockquote(lines {
            text_tag("p", {lang = "grc"}, [[
ὥσπερ γὰρ καὶ τελεωθὲν βέλτιστον τῶν ζῴων ὁ ἄνθρωπός ἐστιν, οὕτω καὶ χωρισθεὶς
νόμου καὶ δίκης χείριστον πάντων.
]]),
            par [[
Pois como o homem é o melhor dos animais quando aperfeiçoado, assim ele é o pior
de todos quando separado de lei e justiça.
]],
            quote_footer(
                "Aristóteles", "Política",
                link {
                    href = "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.01.0058%3Abook%3D1%3Asection%3D1253a",
                    content = "1253a",
                }),
        })),
    }),
    h2_link { "a-queda-do-homem-moderno", "a queda do homem (moderno)" },
    par [[
Crítico e sinistro como tudo isso possa ser, ainda não chega ao fundo do
problema, à razão pela qual é tão preocupante.  Na verdade essas ondas de
migração são apenas um sintoma, não a causa – embora, uma vez efetuadas,
inflijam danos graves a uma sociedade já frágil.
]],
    par(format {
        [[
Mesmo o governo espanhol admite que uma das principais razões para a grande
demanda pela imigração é o declínio populacional.  A fertilidade na Espanha está
no nível abismal, mesmo para os padrões ocidentais, de <em><b>1,1</b></em>, o
que significa que cada mulher tem em média cerca de um
filho%s.
Tire um momento para ter certeza de que entende o quão apocalíptico é esse
número: significa efetivamente uma redução à <em>metade</em> da população a cada
geração, ausentes outros
fatores%s.
]],
        notes_pt:add(par [[
Para dar uma ideia de quão precipitosa é essa mudança, a taxa era 2,77 tão
recentemente quanto 1976, já em queda dos 3 em 1964.
]]),
        notes_pt:add(par [[
As últimas estimativas de Ceuta são que o número de criminosos que cruzaram a
fronteira é quase o mesmo que o número de habitantes do exclave: cerca de
80.000.
]]),
    }),
    figure {
        class = "hor-center float-right",
        caption = "Peter Paul Rubens, <i>A fúria de Aquiles</i>",
        content = image_achilles,
    },
    par(format {
        [[
Isso é, em parte, alimentado pelo fervor apocalíptico moderno, com suas
alegações alarmistas enfadonhas de superpopulação que há mais de um século não
se realizam.  Mas essa também é apenas mais uma faceta do problema real: o
ataque sistemático e implacável aos valores e princípios fundamentais das
grandes sociedades que construíram o mundo ocidental.  Os problemas discutidos
até agora são apenas os sintomas de uma sociedade que desistiu de si mesma,
desistiu de sua história e de seus ideais, decidiu que não vale a pena ser
preservada e que deve navegar rumo ao pôr do sol e
desaparecer%s.
]],
        notes_pt:add(par(format {
            [[
Se acha isso um exagero, vá assistir à <i>Odisseia</i> de Cristopher Nolan para
a mais recente apresentação não tão sutil deste tema (como uma entrevistadora
magistral
%s,
“um bardo para uma civilização ao anoitecer”), ou simplesmente preste atenção a
qualquer obra de arte moderna.
]],
            link {
                href = "https://www.youtube.com/watch?v=wa4I8Ch2TRo",
                content = "disse recentemente",
            },
        })),
    }),
    par [[
E não há escassez de predadores – alguns literalmente bárbaros ao portão –
esperando a oportunidade de tomar o controle.  Não há necessidade de grandes
teorias da conspiração sobre um único grupo (escolha seu preferido) coordenando
nas sombras para usurpar o poder, o espírito motivador por trás de tudo isso é
óbvio para os estudantes de história e do caráter humano: uma sociedade dividida
é mais facilmente invadida e pilhada; pessoas ignorantes e amorais são mais
facilmente governadas e controladas, por ideologias coletivistas; mulheres sem
princípios são mais facilmente exploradas; uma existência pouco exigente e
superficial é mais facilmente subsistida.  Idealismo, esforço, virtude, são
difíceis, o árduo produto de grandes civilizações.  É muito mais fácil se
abandonar à dança pelas ruas – pelo menos até que as ruínas flamejantes tombem
por toda parte.
]],
    h2_link {
        "%CE%BD%CF%8C%CF%83%CF%84%CE%BF%CF%82",
        '<span lang="grc">νόστος</span>',
    },
    par [[
Não vou mentir (não sou um político, ou um “influenciador”).  A humanidade está
tão fundo nessa espiral mortal que será necessário um esforço super-humano para
reverter.  Poderão até ser necessários santos.  É certamente uma requisição
titânica para uma idade tão egocêntrica e egoísta como a nossa.
]],
    figure {
        class = "hor-center float-right",
        content = image_jacob,
        caption = "Gustave Doré, <i>Jacó luta com o anjo</i>",
    },
    par [[
Dito tudo isso, essa é minha sugestão para que comecemos a reverter esta
situação terrível.
]],
    ul {
        lines {
            par [[
Afaste-se das redes sociais o máximo possível.  Pare de usá-las como principal
fonte de conhecimento.  Pare de basear seus princípios no que os outros dizem
que deve pensar.
]],
            par [[
Esqueça a política, pare de colocar a fé em políticos ou outras ínfimas formas
de vida para corrigir o mundo.
]],
        },
        lines {
            par [[
Obtenha uma verdadeira educação.  Será difícil.  É o dever primário da
sociedade, e falhou.  Falhou precisamente porque convenientemente esqueceu e
abdicou seu dever primário.
]],
            par [[
Mas esse ciclo vai continuar, sempre para baixo (e o inferno é um poço sem
fundo, há sempre um abaixo), a menos que reconheçamos que o dever é agora nosso,
e o aceitemos.
]],
        },
        par [[
Leia fervorosamente e pense criticamente sobre o que lê.  Leia fontes primárias
o máximo que puder.  Leia os clássicos.  Há uma razão pela qual as artes
<i>liberais</i> são chamadas assim: o seu próprio propósito é incutir esses
princípios, tornar os homens <i>livres</i> (ao contrário do que as redes sociais
inculcaram, ser livre não é fazer o que se quer, é ser capaz de fazer o que se
deve).
]],
        par [[
Aprenda sobre sua cultura.  Aprenda o que a fez grande, porque é grande.
Aprenda exatamente o que a fez melhor que as outras, naqueles aspectos que é.
Aprenda que privilégio imenso é esse, aprenda a respeitar e a ser grato por ele.
]],
        lines {
            par [[
Comece pequeno e humilde, comece por <i>si próprio</i>.  Faça a pergunta que
Solzhenitsyn fez nas profundezas da escuridão do gulag soviético: como
<em>eu</em> sou responsável?  Que deficiência moral minha contribuiu para isso?
Coloque sua vida em ordem.  Em seguida, passe para sua família, seu grupo de
amigos, seus colegas, sua comunidade.
]],
            par [[
Encontre um marido/esposa, construa uma família, tenha filhos (de preferência
vários) e transmita sua cultura para eles.  Ensine por que são livres e
prósperos, e ensine os deveres que são inerentes a esse privilégio.
]],
        },
    },
    par [[
Faça tudo isso e então — se Deus quiser, com medo e tremor — podemos começar
nossa luta morro acima para reconstruir a cidade que foi uma vez a luz do mundo.
]],
    citation,
    hr(),
    h2("notas"),
    notes_pt,
}

return {
    timestamp = { 1785710219, "2026-08-02" },
    title = {
        en = "On immigration",
        it = "Sull'immigrazione",
        pt = "Sobre a imigração",
    },
    image = {
        caption = "Federico Barocci, <i>Fuga di Enea da Troia</i>",
        alt = "Federico Barocci — Fuga di Enea da Troia",
        title = "Federico Barocci — Fuga di Enea da Troia",
        src = path.join(DIR, "fuga_di_enea_da_troia.jpg"),
    },
    languages = { "en", "it", "pt" },
    description = description,
    content = {
        en = content_en,
        it = content_it,
        pt = content_pt,
    },
}
