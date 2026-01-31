return include "master.lua" {
    title = "/dev/random",
    body_class_extra = "w80",
    nav_path = {{nil, "random"}},
    main = lines {
        ul {
            h2(link {
                href = "the_jack/",
                content = "The Jack (music blog)",
            }),
        },
    },
}
