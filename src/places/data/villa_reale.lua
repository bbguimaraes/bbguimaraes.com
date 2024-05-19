local description <const> = [[How can you not love a place where you can walk into a public garden and find a temple to the Greek Fates and passages from Aeneas' journey through Hades from Virgil's Aeneid?]]

local content <const> = par [[
How can you not love a place where you can walk into a public garden and find a
temple to the Greek Fates and passages from Aeneas' journey through Hades from
Virgil's Aeneid?
]]

local citation <const> = lines {
    par [[
at laeva malorum<br />
exercet poenas, et ad impia Tartara mittit.
]],
    par [[
Parcarumque dies et vis inimica propinquat.
]],
    par [[
hac iter Elysium nobis
]],
    par [[
— Publius Vergilius Maro, “Aeneis”, VI.542 / XII.150 / X.542
]],
}

local images <const> = {{
    path = "villa_reale0.jpg",
}, {
    path = "villa_reale1.jpg",
    text = [[
but the left works punishment on the wicked<br />
and sends them to impious Tartarus
]],
}, {
    path = "villa_reale2.jpg",
    text = [[
a day of Fate<br />
and inimical force approaches<br />
this is our road to Elysium
]],
}}

return {
    id = "villa_reale",
    title = "Villa Reale, Milano",
    timestamp = {"1697760000", "2023-10-20"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        mastodon = "111466988361294013",
        facebook = "pfbid034SZYzz4WFEqTs8qHqazL3RMPxrNXWj1QnFSeK9dKnY35UyqhU1VckcPK2STCygMbl",
        instagram = "C0Cg05Fpsf6",
    },
}
