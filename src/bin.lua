local sections <const> = {{
    items = {
        concat {
            link {
                href = "impero/",
                content = "impero",
            },
            ": graphical command executor.",
        },
        concat {
            link {
                href = "machinatrix/",
                content = "machinatrix",
            },
            ": a very silly ",
            link {
                href = "https://matrix.org",
                content = "Matrix",
            },
            " bot.",
        },
        concat {
            link {
                href = "nngn/",
                content = "nngn",
            },
            ": graphics/physics/audio/game engine.",
        },
    },
}}

return include "list_simple.lua" {
    title = "bin",
    list_title = "bin",
    nav_path = {{nil, "bin"}},
    sections = sections,
}
