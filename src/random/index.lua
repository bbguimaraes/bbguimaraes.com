return include "master.lua" {
    title = "/dev/random",
    body_class = "w80",
    nav_path = {{nil, "random"}},
    main = lines {
        ul {
            tag("h2", nil, link {
                href = "the_jack/",
                content = "The Jack (music blog)",
            }),
        },
    },
}
