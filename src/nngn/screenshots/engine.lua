return include "nngn/screenshots.lua" {
    title = "engine",
    images = {{
        id = "screenshot-map",
        src = "map.png",
        title = "map",
        caption = "Rendering a simple map with sprites and animations.",
    }, {
        id = "screenshot-debug-colliders-grid",
        src = "debug.png",
        title = "debug, colliders, grid",
        caption = "Debugging sprite, collision, grid visualizations.",
    }, {
        id = "screenshot-tile-sheet-map",
        src = "tilesheet.png",
        title = "tile sheet map",
        caption = "Tile sheet maps.",
    }, {
        id = "screenshot-scripting-text-box",
        src = "zelda.png",
        title = "scripting, text box",
        caption = "Lua scripting.",
    }, {
        id = "screenshot-more-scripting",
        src = "script.png",
        title = "more scripting",
        caption = "Efficient processing of thousands of entities per frame using Lua.",
    }, {
        id = "screenshot-perspective-camera",
        src = "camera.png",
        title = "perspective camera",
        caption = "Orthographic and perspective camera.",
    }, {
        id = "screenshot-ascii-graphics",
        src = "ascii_both.png",
        title = "ascii graphics",
        caption = '"Gray scale" and colored ASCII software rasterizer.',
    }},
    videos = {{
        id = "video-camera-server",
        src = "camera_server",
        caption = "Camera input from device orientation.",
    }, {
        id = "video-term",
        src = "term",
        caption = "ASCII software rasterizer.",
    }, {
        id = "video-pil",
        src = "pil",
        caption = '<i>A Taste of Functional Programming</i>, from <a href="https://www.lua.org/pil/"><i>Programming in Lua</i></a>, rendered by the ASCII rasterizer.',
    }},
}
