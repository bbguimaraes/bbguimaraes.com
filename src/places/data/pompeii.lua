local description <const> = indented(format {
    [[If you are obsessed with Ancient Rome as I am (as I hope you are), you knew this was coming.  After the Palatine hill in Rome itself, the most famous Roman ruins which survive to this day are certainly the city of Pompeii.  As its neighbor %s, it was at the time at the seaside (built on top of a layer of lava from a previous eruption), it was buried under several meters of volcanic material expelled from %s in 79 AD, remained lost for more than a millennium and a half until it was accidentally rediscovered, and now provides an unbelievable view into what life was like in the Roman empire two thousand years ago.]],
    link {
        href = "https://bbguimaraes.com/places/herculaneum.html",
        content = "Herculaneum",
    },
    link {
        href = "https://bbguimaraes.com/places/vesuvius.html",
        content = "mount Vesuvius",
    },
})

local content <const> = lines {
    par(format {
        [[
If you are obsessed with Ancient Rome as I am (as I hope you are), you knew this
was coming.  After the Palatine hill in Rome itself, the most famous Roman ruins
which survive to this day are certainly the city of Pompeii.  As its neighbor
%s, it was at the time at the seaside
(built on top of a layer of lava from a previous eruption), it was buried under
several meters of volcanic material expelled from
%s in 79 AD, remained lost for more than
a millennium and a half until it was accidentally rediscovered, and now provides
an unbelievable view into what life was like in the Roman empire two thousand
years ago.
]],
        link {
            href = "herculaneum.html",
            content = "Herculaneum",
        },
        link {
            href = "vesuvius.html",
            content = "mount Vesuvius",
        },
    }),
    par [[
Unlike Herculaneum, which can comfortably be seen in its entirety in less than a
day, it was a much bigger city, with ten to twenty thousand inhabitants and an
excavated area of around 3.5km — although not as wealthy as the neighboring
seaside retreat, with its abundance of exuberant villae.  It has also been more
thoroughly explored by archaeologists: since the layer of material which covered
it was not as deep (4–6 m), it was discovered earlier, in 1592, and only ⅓ still
remains buried.  It was, however, much more directly hit by the destructive
force of the eruption, so much less of the original structures was preserved.
]],
    par [[
Here too the excavation process continues to this day, balanced with the need to
preserve the parts which have already been unearthed and suffer constant
degradation by the elements and the visitors.  E.g.: when I was there, a large
section called “<a href="https://www.openstreetmap.org/way/335245563">Regio
IX</a>” was closed, a few months later the excavation of a house with a large
dining hall covered in frescoes was <a
href="https://www.bbc.com/news/science-environment-68777741">announced</a>.  A
look at the <a href="https://www.bbc.com/news/topics/c5xwz7wg3rzt">news</a> from
the past few years demonstrates how these sites are a constant source of
discoveries from that period in history.
]],
    par [[
And, of course, the amphitheater was where the famous Pink Floyd <a
href="https://en.wikipedia.org/wiki/Pink_Floyd%3A_Live_at_Pompeii">concert</a>
was recorded in 1972.  I was pleasantly surprised to find an exhibition about it
in the galleries there — and reminded of my age when I saw many “youths” pass by
in absolute ignorance of what the exhibition was about.
]],
    par [[
I also could not pass the chance to visit once again the <a
href="pompei.html">cathedral of Pompei</a>, so here are a few bonus pictures.
]],
}

local citation <const> = lines {
    text_tag("p", {lang = "la"}, [[
Cum me amicis dedi non tamen mihi abduco, nec cum illis moror, quibus me tempus
aliquod congregavit aut causa ex officio nata civili, sed cum optimo quoque sum;
ad illos, in quocumque loco, in quocumque saeculo fuerunt, animum meum mitto.
]]),
    par [[
When I give myself to my friends, I do not withdraw from my own company, nor do
I linger with those who are associated with me through some special occasion or
some case which arises from my official position.  But I spend my time in the
company of all the best; no matter in what lands they may have lived, or in what
age, I let my thoughts fly to them.
]],
    quote_footer(
        "Lucius Annaeus Seneca",
        inline_tag("span", {lang = "la"}, "Ad Lucilium Epistulae Morales"),
        link {
            href = "https://www.perseus.tufts.edu/hopper/text?doc=Sen.+Ep.+62.2&amp;fromdoc=Perseus%3Atext%3A2007.01.0080",
            content = "62.2",
        }),
}

local images <const> = {{
    path = "pompeii/0.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/395802069">Forum</a>, with Vesuvius
in the background and <i>Centauro</i>, a modern statue in classical style by
Polish sculptor Igor Mitoraj.
]],
}, {
    path = "pompeii/1.jpg",
    text = [[
<a href="https://www.openstreetmap.org/relation/57304">Amphitheater</a>.
]],
}, {
    path = "pompeii/2.jpg",
}, {
    path = "pompeii/3.jpg",
    text = [[
Pink Floyd exhibition in the amphitheater galleries.
]],
}, {
    path = "pompeii/4.jpg",
}, {
    path = "pompeii/5.jpg",
}, {
    path = "pompeii/6.jpg",
    text = [[
<a href="https://www.openstreetmap.org/node/738804679">Porta Nocera</a>, the
exit to the necropolis on the southern side.
]],
}, {
    path = "pompeii/7.jpg",
    text = [[
A view of Vesuvius behind <a href="https://www.openstreetmap.org/way/28929572"
lang="it">Orto dei Fuggiaschi</a> (the “garden of the fugitives”), where some of
the famous plaster casts made from the holes left in the calcified layers of by
the bodies of the victims of the eruption can be seen, in their original
location.
]],
}, {
    path = "pompeii/8.jpg",
    text = [[
<span lang="it">“Negli anni 1594–1600 l'architetto Domenico Fontana scavò questo
canale per portare le acque del fiume Sarno alle fabbriche d'armi di Torre
Annunziata.  Durante la sua costruzione apparvero, per la prima volta, le rovine
de Pompei.”</span>
]],
}, {
    path = "pompeii/9.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/28930585">Giardino di Octavius
Quartio</a>.
]],
}, {
    path = "pompeii/10.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/356648459">Praedia di Giulia
Felice</a>.
]],
}, {
    path = "pompeii/11.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/28929970">Palestra grande</a>.
]],
}, {
    path = "pompeii/12.jpg",
}, {
    path = "pompeii/13.jpg",
    text = [[
<a href="https://www.openstreetmap.org/node/3672508577">Casa di Paquius
Proculus</a>.
]],
}, {
    path = "pompeii/14.jpg",
    text = [[
<a href="https://www.openstreetmap.org/node/2033057307">Casa di Casca
Longus</a>.
]],
}, {
    path = "pompeii/15.jpg",
    text = [[
<a href="https://www.openstreetmap.org/relation/14673806">Teatro grande</a>.
]],
}, {
    path = "pompeii/16.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/28904348">Teatro piccolo /
Odeion</a>.
]],
}, {
    path = "pompeii/17.jpg",
    text = [[
<a href="https://www.openstreetmap.org/node/5842363687">Statue of
<i>Daedalus</i></a>, mythical Greek sculptor, by Igor Mitoraj, overlooking the
modern city of Pompei and the monti Lattari.
]],
}, {
    path = "pompeii/18.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/240573968">Tempio di Apollo</a>.
]],
}, {
    path = "pompeii/19.jpg",
}, {
    path = "pompeii/20.jpg",
    text = [[
The gulf and the Sorrento peninsula from <a
href="https://www.openstreetmap.org/way/193055552">Torre di Mercurio</a>.
]],
}, {
    path = "pompeii/21.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/192721909">Via di Mercurio</a>.
    ]],
}, {
    path = "pompeii/22.jpg",
    text = [[
For the <a href="https://lingualatina.dk/wp">Hans Ørberg</a> fans: <i
lang="la">cave canem</i>.
]],
}, {
    path = "pompeii/23.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/240715554">Casa del Fauno</a>.
]],
}, {
    path = "pompeii/24.jpg",
    text = [[
<a href="https://www.openstreetmap.org/node/319406677">Casa della Caccia
Antica</a>.
]],
}, {
    path = "pompeii/25.jpg",
    text = [[
<a href="https://www.openstreetmap.org/node/5010108075">Casa degli Epidii</a>.
]],
}, {
    path = "pompeii/26.jpg",
    text = [[
<a href="https://www.openstreetmap.org/node/9955240776">Thermopolium</a> (a
Roman restaurant) next to <a
href="https://www.openstreetmap.org/way/501856034">Casa e Thermopolium di
Vetutius Placidus</a>.
]],
}, {
    path = "pompeii/27.jpg",
    text = [[
Chancel and dome of the cathedral.
]],
}, {
    path = "pompeii/28.jpg",
    text = [[
<span lang="la">“In me gratia omnis viae et veritatis:<br />
in me omnis spes vitae et virtutis”<br />
— Ecclesiasticus 24:25</span>
]],
}, {
    path = "pompeii/29.jpg",
    text = [[
<i>Morte di San Giuseppe</i>,<br />
Ponziano Loverini, 1890.
]],
}, {
    path = "pompeii/30.jpg",
}, {
    path = "pompeii/31.jpg",
    text = [[
<a href="https://www.openstreetmap.org/way/23732990">Via Lepanto</a> in the city
of Pompei.
]],
}, {
    path = "pompeii/32.jpg",
}}

return {
    title = "Pompeii",
    timestamp = { 1708905600, "2024-02-26" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        {"website", "https://pompeiisites.org"},
        map = "way/26707240",
        mastodon = "112823742579554325",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0sJa6quxoCxBkeyMa4WpCANcQJ6owY6MtD51xkQxiEtyb8Mf47KhMQCDw3k85dmwl",
        instagram = "C9rd9nhqohB",
    },
}
