return include "master.lua" {
    title = "places",
    css = {"/main.css", "places.css"},
    body_class = "no-margin white-bg roman",
    main = lines {
        div({class = "w80"}, include "nav.lua" {
            nav_path = {{nil, "places"}},
        }),
    },
}
