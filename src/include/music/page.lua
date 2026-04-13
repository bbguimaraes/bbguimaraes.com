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

local function generate_default_scores()
    return  {
        link {
            href = file_url(file_name .. ".pdf"),
            content = "score",
            target = "_blank",
        },
        link {
            href = file_url(file_name .. ".mscz"),
            content = "source",
            target = "_blank",
        },
    }
end

local function generate_scores(dst, t)
    local ret <const> = {}
    local n_scores, n_sources = 0, 0
    for _, x in ipairs(scores) do
        local ext <const> = path.ext(x)
        if not x:match("://") then
            x = file_url(DIR, x)
        end
        if ext == "mscz" then
            table.insert(ret, link {
                href = x,
                content = string.format("source%d", n_scores),
            })
            n_sources = n_sources + 1
        else
            table.insert(ret, link {
                href = x,
                content = string.format("score%d", n_scores),
            })
            n_scores = n_scores + 1
        end
    end
    return ret
end

var_and("info", function(x)
    table.move(x, 1, #x, #info + 1, info)
end)

if type(scores) == "table" then
    local t <const> = generate_scores(info, scores)
    table.move(t, 1, #t, #info + 1, info)
elseif scores then
    table.insert(info, lines(generate_default_scores()))
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
    body_class_extra = "w80",
    nav_path = {{".", "music"}, {nil, title}},
    main = main({class = "video"}, lines {
        video {
            preload = "metadata",
            controls = true,
            poster = generator:generate_image(var, "small", video_file_name, {
                time = var("poster", false),
            }),
            sources = {video_url},
        },
        audio {
            preload = "metadata",
            controls = true,
            src = generator:generate_audio(var, video_file_name),
        },
        h1(title),
        div({class = "info"}, ul(info)),
        var("content", false) or nil,
    }),
}
