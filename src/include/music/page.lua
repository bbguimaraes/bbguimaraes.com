local path <const> = require "lib.path"

local file_url <const> = var "file_url"
local base_url <const> = var "base_url"

local DIR <const> = "music"

local generator <const> = var "generator"
local id <const> = var "id"
local title <const> = var "title"
local file_name <const> = path.join(
    DIR, var("file_name", false) or id:gsub("-", "_"))
local scores <const> = var("scores", false)

local video_file_name <const> = file_name .. ".mp4"
local video_url <const> = file_url(video_file_name)

local info <const> = {}
table.insert(info, inline_tag("i", nil, var("timestamp")[2]))

var_and("info", function(x)
    table.move(x, 1, #x, #info + 1, info)
end)

if type(scores) == "table" then
    table.move(scores, 1, #scores, #info + 1, info)
elseif scores then
    table.insert(info, lines {
        link {
            href = file_url(file_name .. ".pdf"),
            content = "score",
            target = "_blank",
        },
        link {
            href = file_url(file_name .. ".mscz"),
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
        url = path.join(base_url, DIR, id .. ".html"),
        image = base_url .. generator:file_url(var, "small", video_file_name),
        video = base_url .. video_url,
    },
    body_class = "w80 roman",
    nav_path = {{".", "music"}, {nil, title}},
    main = main({class = "video"}, lines {
        video {
            preload = "metadata",
            controls = true,
            poster = generator:generate_image(var, "small", video_file_name),
            sources = {video_url},
        },
        audio {
            preload = "metadata",
            controls = true,
            src = generator:generate_audio(var, video_file_name),
        },
        inline_tag("h1", nil, title),
        div({class = "info"}, ul(info)),
        var("content", false) or nil,
    }),
}
