local example0 <const> = code [[
$ ./machinatrix_matrix \
    --server matrix.example.com \
    --user @machinatrix:matrix.example.com \
    --token /path/to/token_file
]]

local example1 <const> = code [[
$ ./machinatrix bard
Thy sin’s not accidental, but a trade.
-- Measure For Measure (Act 3, Scene 1)
$ ./machinatrix wikt robot | head -2 | fmt -w 40
English
  Borrowed from Czech robot,
  from robota (“drudgery,
  servitude”). Coined in the 1921
  science-fiction play R.U.R. (Rossum's
  Universal Robots) by Karel Čapek
  after having been suggested to him
  by his brother Josef, and taken into
  English without change.
]]

return include "master.lua" {
    title = "machinatrix",
    css = {"/main.css", "/description.css"},
    body_class = "w80",
    nav_path = {{nil, "machinatrix"}},
    main = main(nil, lines {
        html "<h1>machinatrix</h1>",
        div({class = "description"}, lines {
            tag("p", nil, html [[
A very silly <a href="https://matrix.org">Matrix</a> bot
written in C.]]),
            ul {
                lines {
                    link {
                        href = "https://gitlab.bbguimaraes.com/bbguimaraes/machinatrix.git",
                        content = "source",
                    },
                    html "(gitlab)",
                },
                lines {
                    link {
                        href = "https://github.com/bbguimaraes/machinatrix.git",
                        content = "source",
                    },
                    html "(github)",
                },
                link {
                    href = "docs/",
                    content = "documentation",
                },
            },
        }),
        div({class = "example"}, lines {
            example0,
            html "<br />",
            example1,
        }),
    }),
}
