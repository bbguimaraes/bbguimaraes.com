return include "master.lua" {
    title = "impero",
    css = {"/main.css", "/description.css"},
    main = lines {
        div({class = "w80"}, include "nav.lua" {
            nav_path = {{nil, "impero"}},
        }),
        main(nil, lines {
            div({class = "w80"}, lines {
                html "<h1>impero</h1>",
                par [[
A graphical command executor, intended to be used via a keyboard shortcut.
]],
                ul {
                    lines {
                        link {
                            href = "https://gitlab.bbguimaraes.com/bbguimaraes/impero.git",
                            content = "source",
                        },
                        html "(gitlab)",
                    },
                    lines {
                        link {
                            href = "https://github.com/bbguimaraes/impero.git",
                            content = "source",
                        },
                        html "(github)",
                    },
                    link {
                        href = "https://gitlab.bbguimaraes.com/bbguimaraes/impero/-/releases",
                        content = "releases",
                    },
                    link {
                        href = "docs/",
                        content = "documentation",
                    },
                },
            }),
            video {
                controls = true,
                preload = "none",
                class = "demo",
                poster = "/files/impero/impero_poster.png",
                sources = {
                    "/files/impero/impero.webm",
                },
            },
        }),
    },
}
