local description <const> = [[You knew this had to be the first one.]]

local content <const> = lines {
    par [[
You knew this had to be the first one.
]],
}

return {
    id = "godfather",
    title = "The godfather",
    author = "Nino Rota",
    timestamp = { 1739694078, "2025-02-16T08:21:18" },
    duration = "0:46",
    poster = "0:10",
    scores = {
        link {
            href = "/files/music/godfather.pdf",
            content = "score",
            target = "_blank",
        },
        link {
            href = "/files/music/godfather.mscz",
            content = "source",
            target = "_blank",
        },
    },
    tags = {"mandolin", "piano", "short"},
    links = {
        youtube = "Xk7tTGdts_E",
        mastodon = "114012678262351830",
        facebook = "reel/1202961127827273",
        instagram = "DGIJ2vBonUX",
    },
    description = description,
    content = content,
}
