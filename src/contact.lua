local sections <const> = {{
    items = {
        link {
            href = "mailto:bbguimaraes@bbguimaraes.com",
            content = "bbguimaraes​@​bbguimaraes​.​com",
        },
        link {
            href = "https://matrix.to/#/@bbguimaraes:matrix.bbguimaraes.com",
            content = "@bbguimaraes:matrix.bbguimaraes.com",
        },
        link {
            href = "https://mastodon.bbguimaraes.com/@bbguimaraes",
            content = "mastodon",
        },
        link {
            href = "/files/cv.pdf",
            title = "CV",
            content = "curriculum vitae",
        }
    },
}, {
    title = html "etc",
    items = {
        link {
            href = "https://www.reddit.com/u/bbguimaraes",
            content = "/u/bbguimaraes",
        },
        link {
            href = "https://www.youtube.com/user/bbgstb",
            content = "youtube",
        },
        link {
            href = "https://facebook.com/bruno.barcarolguimaraes",
            content = "facebook",
        },
        link {
            href = "https://www.instagram.com/bruno.barcarolguimaraes/",
            content = "instagram",
        },
        link {
            href = "https://www.linkedin.com/in/bruno-barcarol-guimar%C3%A3es-15037551",
            content = "linkedin",
        },
    },
}}

return include "list_simple.lua" {
    title = "contact",
    list_title = "Contact",
    nav_path = {{nil, "contact"}},
    sections = sections,
}
