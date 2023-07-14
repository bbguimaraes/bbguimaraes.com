local id <const> = var "id"
local title <const> = var "title"
local file_name <const> = var("file_name", false) or id:gsub("-", "_")
local scores <const> = var("scores", false)

local src
if type(scores) == "table" then
    src = scores
elseif scores == false then
    src = {}
else
    src = {
        lines {
            link {
                href = string.format("/files/music/%s.pdf", file_name),
                content = "score",
            },
            link {
                href = string.format("/files/music/%s.mscz", file_name),
                content = "src",
            },
        },
    }
end

local links <const> = {
    link {
        href = string.format("/files/music/%s.mp4", file_name),
        content = "video",
    },
}

var_and("youtube", function(youtube)
    table.insert(links, link {
        href =
        "https://www.youtube.com/watch?v="
        .. var "youtube",
        content = "youtube",
    })
end)

return include "master.lua" {
    css = {"/main.css", "music.css"},
    body_class = "w80",
    nav_path = {{".", "music"}, {nil, title}},
    main = lines {
        div({class = "video"}, lines {
            video {
                controls = true,
                poster = string.format("/files/music/%s.png", file_name),
                sources = {string.format("/files/music/%s.mp4", file_name)},
            },
            inline_tag("h1", nil, title),
            div({class = "info"}, ul {
                ul(var("info")),
                lines(links),
                table.unpack(src),
            }),
            var("content", false) or nil,
        }),
    },
}
