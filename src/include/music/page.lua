local path <const> = require "lib.path"

local id <const> = var "id"
local title <const> = var "title"
local base_url <const> = var "base_url"
local url <const> = string.format("/music/%s.html", id)
local file_name <const> = var("file_name", false) or id:gsub("-", "_")
local poster_url <const> = string.format("/files/music/%s.png", file_name)
local video_url <const> = string.format("/files/music/%s.mp4", file_name)
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
                target = "_blank",
            },
            link {
                href = string.format("/files/music/%s.mscz", file_name),
                content = "src",
                target = "_blank",
            },
        },
    }
end

local links <const> = {
    link {
        href = string.format("/files/music/%s.mp4", file_name),
        content = "video",
        target = "_blank",
    },
}

var_and("youtube", function(youtube)
    table.insert(links, link {
        href =
        "https://www.youtube.com/watch?v="
        .. var "youtube",
        content = "youtube",
        target = "_blank",
    })
end)

return include "master.lua" {
    css = {"/main.css", "music.css"},
    head_extra = lines {
        var "head_extra",
        include "og.lua" {
            og_type = "music.song",
            og_title = title,
            og_image = path.join(base_url, poster_url),
            og_url = path.join(base_url, url),
            og_video = path.join(base_url, video_url),
        },
    },
    body_class = "w80 roman",
    nav_path = {{".", "music"}, {nil, title}},
    main = main({class = "video"}, lines {
        video {
            controls = true,
            poster = poster_url,
            sources = {video_url},
        },
        inline_tag("h1", nil, title),
        div({class = "info"}, ul {
            ul(var("info")),
            lines(links),
            table.unpack(src),
        }),
        var("content", false) or nil,
    }),
}
