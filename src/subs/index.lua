return include "master.lua" {
    title = "subs",
    css = {"/main.css", "/description.css"},
    body_class = "black-bg mono",
    main = lines {
        div({class = "w80"}, include "nav.lua" {
            nav_path = {{nil, "subs"}},
        }),
        main(nil, lines {
            div({class = "w80"}, lines {
                html "<h1>subs</h1>",
                par [[
Subscription manager.
]],
                par [[
A fast and uniform way of following accounts on video platforms without an
account, and without going through the platform's interface and notification
system (especially useful to avoid YouTube's web interface and conspicuously
forgetful notifications).  Currently handles:
]],
                ul {
                    concat {
                        link {
                            href = "https://lbry.com",
                            content = "LBRY",
                        },
                        ", using the JSON API of a local ",
                        link {
                            href = "https://github.com/lbryio/lbry-sdk.git",
                            content = "<code>lbrynet</code>",
                        },
                        " server",
                    },
                    concat {
                        link {
                            href = "https://youtube.com",
                            content = "YouTube",
                        },
                        ", using ",
                        link {
                            href = "https://github.com/yt-dlp/yt-dlp.git",
                            content = "<code>yt-dlp</code>",
                        },
                    },
                },
                par [[
Video history is kept in a local <a href="https://www.sqlite.org">SQlite</a>
database and presented via either a CLI or a <code>curses</code> TUI interface.
The application is programmable and extendable using <a
href="https://www.lua.org">Lua</a>.
]],
                ul {
                    lines {
                        link {
                            href = "https://gitlab.bbguimaraes.com/bbguimaraes/subs.git",
                            content = "source",
                        },
                        html "(gitlab)",
                    },
                    lines {
                        link {
                            href = "https://github.com/bbguimaraes/subs.git",
                            content = "source",
                        },
                        html "(github)",
                    },
                },
            }),
        }),
        video {
            controls = true,
            preload = "none",
            class = "demo",
            poster = "/files/subs/subs_poster.png",
            sources = {
                "/files/subs/subs.webm",
            },
        },
    },
}
