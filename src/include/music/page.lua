local path <const> = require "lib.path"

local id <const> = var "id"
local title <const> = var "title"
local base_url <const> = var "base_url"
local url <const> = string.format("/music/%s.html", id)
local file_name <const> =
    var("file_name_url", false)
    or var("file_name", false)
    or id:gsub("-", "_")
local poster_url <const> = string.format("/files/music/%s.png", file_name)
local video_url <const> = string.format("/files/music/%s.mp4", file_name)
local audio_url <const> = string.format("/files/music/%s.ogg", file_name)
local scores <const> = var("scores", false)

local info <const> = {}
table.insert(info, inline_tag("i", nil, var("date")[2]))

var_and("info", function(x)
    table.move(x, 1, #x, #info + 1, info)
end)

if type(scores) == "table" then
    table.move(scores, 1, #scores, #info + 1, info)
elseif scores then
    table.insert(info, lines {
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
    })
end

var_and("links", function()
    for _, x in ipairs(include "link_list.lua" {}) do
        table.insert(info, x)
    end
end)

return include "master.lua" {
    css = {"/main.css", "music.css"},
    og = {
        type = "music.song",
        title = title,
        image = base_url .. poster_url,
        url = base_url .. url,
        video = base_url .. video_url,
    },
    body_class = "w80 roman",
    nav_path = {{".", "music"}, {nil, title}},
    main = main({class = "video"}, lines {
        video {
            preload = "metadata",
            controls = true,
            poster = poster_url,
            sources = {video_url},
        },
        audio {
            preload = "metadata",
            controls = true,
            src = audio_url,
        },
        inline_tag("h1", nil, title),
        div({class = "info"}, ul(info)),
        var("content", false) or nil,
    }),
}
