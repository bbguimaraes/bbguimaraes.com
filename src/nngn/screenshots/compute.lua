return include "nngn/screenshots.lua" {
    title = "compute",
    videos_prefix = tag("p", nil, text_tag("small", nil, [[
<i>Note: image quality slightly reduced due to video compression.</i>
]])),
    videos = {{
        id = "video-particles",
        src = "particles",
        caption = "Particles.",
    }, {
        id = "video-doom-fire",
        src = "doom_fire",
        caption = "Doom fire effect.",
    }, {
        id = "video-img-proc",
        src = "img_proc",
        caption = "Image processing.",
    }},
}
