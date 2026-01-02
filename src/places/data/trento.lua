local description <const> = [[Magnifica Trento, sotto le Alpi. With a few bonus photographs from Padova and Bologna.]]

local content <const> = par [[
Magnifica Trento, sotto le Alpi. With a few bonus photographs from Padova and
Bologna.
]]

local citation <const> = lines {
    "Del cerro vengo bajando, camino y piedra<br />",
    "Traigo enredada en el alma, viday, una tristeza<br />",
    "A veces soy como el río, llego cantando<br />",
    "Y sin que nadie lo sepa, viday, me voy llorando<br />",
    "Es mi destino, piedra y camino<br />",
    "De un sueño lejano y bello, viday, soy peregrino<br />",
    "<br />",
    quote_footer("Atahualpa Yupanqui", "Piedra y Camino"),
}

local images <const> = {{
    path = "trento/0.jpg",
}, {
    path = "trento/1.jpg",
}, {
    path = "trento/2.jpg",
}, {
    path = "trento/3.jpg",
}, {
    path = "trento/4.jpg",
}, {
    path = "trento/5.jpg",
    text = par(lines {
        link {
            href = "https://upload.wikimedia.org/wikipedia/commons/5/5d/Elia_naurizio%2C_congregazione_generale_del_concilio_di_trento_in_s.m._maggiore%2C_1633%2C_01.jpg",
            content = "Santa Maria Maggiore",
        },
        [[
: the location of the Council of Trent, which ratified, among other things, the
Vulgate of Saint Jerome and the Tridentine Mass.
]],
    }),
}, {
    path = "trento/6.jpg",
    text = [[
La Specola, Padova.
]],
}, {
    path = "trento/7.jpg",
    text = [[
Bologna from Santuario della Madonna di San Luca.
]],
}, {
    path = "trento/8.jpg",
    text = [[
La ninfa e il cavallo marino.
]],
}, {
    path = "trento/9.jpg",
}, {
    path = "trento/10.jpg",
    text = lines {
        par [[
The most <a href="https://en.wikipedia.org/wiki/Know_thyself">enlightened and
erudite</a> graffiti in the world.  I believe this is what the kids mean when
they say "a classic!".
]],
    },
}}

return {
    id = "trento",
    title = "Trento, Padova, Bologna",
    timestamp = {"1697414400", "2023-10-16"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/46663",
        mastodon = "111466885977291495",
        facebook = "bruno.barcarolguimaraes/posts/pfbid06NWTfC14t83p6THPZ6issJ92P4aoZo7ymPhznBJ1YnMokRnH7Vr9JCXRfXYaoUDzl",
        instagram = "C0CfF6sJW6P",
    },
}
