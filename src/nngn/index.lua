return include "master.lua" {
    title = "nngn",
    css = {"/main.css", "nngn.css"},
    body_class = "black-bg mono",
    nav_path = {{nil, "nngn"}},
    main = main(nil, lines {
        h1 "nngn",
        div({class = "main-video"}, lines {
            video {
                controls = true,
                loop = true,
                preload = "none",
                poster = "/files/nngn/fiona_poster.png",
                sources = {"/files/nngn/fiona.webm"},
            },
            video {
                controls = true,
                preload = "none",
                poster = "/files/nngn/screenshots/post_poster.png",
                sources = {"/files/nngn/screenshots/post.webm"},
            },
        }),
        par [[
<i>nngn</i> is a free and open source 2D/3D graphics/physics/audio/game engine.
]],
        ul {
            lines {
                link {
                    href = "https://gitlab.bbguimaraes.com/bbguimaraes/nngn.git",
                    content = "source",
                },
                html "(gitlab)",
            },
            lines {
                link {
                    href = "https://github.com/bbguimaraes/nngn.git",
                    content = "source",
                },
                html "(github)",
            },
            link {
                href = "docs/",
                content = "documentation",
            },
            link {
                href = "/blog/tags/nngn.html",
                content = "blog posts",
            },
            lines {
                html "screenshots/videos",
                ul {
                    link {
                        href = "screenshots/engine.html",
                        content = "engine",
                    },
                    link {
                        href = "screenshots/lighting.html",
                        content = "lighting",
                    },
                    link {
                        href = "screenshots/post.html",
                        content = "post-processing",
                    },
                    link {
                        href = "screenshots/compute.html",
                        content = "compute",
                    },
                    link {
                        href = "screenshots/tools.html",
                        content = "tools",
                    },
                },
            },
        },
        h2_link { "demos", "demos" },
        par [[
Try it without installing or compiling anything <a href="nngn.html">here</a>
(or <a href="nngn.html?argv=@demos/demo.lua">here</a> for a guided
demonstration).
]],
        par [[
<small>There might be issues that are not present in the native build.  The
console can be informative if things go wrong.  The page will also download
approximately 10MB of data.</small>
]],
        par [[
Watch an earlier version of the demo <a href="/files/nngn/demo.mkv">here</a> or
on <a href="https://youtube.com/watch?v=T9HBn05Tm4s">Youtube</a>.
]],
    }),
}
