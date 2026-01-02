local description <const> = [[(a bit unexpected to post again, but Italy is just a fantastic place)]]

local content <const> = lines {
    par [[
(a bit unexpected to post again, but Italy is just a fantastic place)
]],
}

local citation <const> = par [[
Entre nós reviva Atenas para assombro dos tiranos
Sejamos gregos na glória e na virtude, romanos
]]

local images <const> = {{
    path = "torino/0.jpg",
}, {
    path = "torino/1.jpg",
}, {
    path = "torino/2.jpg",
    text = [[
Porta Palatina, the most well-preserved Roman ruins I have ever seen.  It is
incredible that it has stood here for two thousand years.
]],
}, {
    path = "torino/3.jpg",
    text = [[
Augusta Taurinorum
]],
}, {
    path = "torino/4.jpg",
    text = [[
Next to it, across the street, il Duomo di Torino, the resting place of the Holy
Shroud.
]],
}, {
    path = "torino/5.jpg",
}, {
    path = "torino/6.jpg",
    text = [[
How to make me extremely happy.  (I got these back in the university of Padova,
but they fit the theme)
]],
}, {
    path = "torino/7.jpg",
}}

return {
    id = "torino",
    title = "Torino",
    timestamp = {"1697500800", "2023-10-17"},
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/43992",
        mastodon = "111466976296767860",
        facebook = "bruno.barcarolguimaraes/posts/pfbid0oxJdWuZvzoRgNyQG19eY7TGMZuQ5jB22Kmpv9hz63cG6Jd8goQdWoudt65XsEtxAl",
        instagram = "C0CgXOIpxv2",
    },
}
