local example <const> = code [[
(gdb) lua type lua_type(L, 1)
lightuserdata
(gdb) lua type lua_type(L, 2)
number</code></pre>
                <pre><code>(gdb) lua stack
1: 0x555555559910 nil nil
2: 0x555555559920 boolean 0
3: 0x555555559930 boolean 1
4: 0x555555559940 lightuserdata &lt;c_obj&gt;
5: 0x555555559950 number 42
6: 0x555555559960 number 3.1415901184082031
7: 0x555555559970 string "abc"</code></pre>
                <pre><code>(gdb) lua bt
#0  cclosure 0x555555555303 &lt;c_cl&gt; at bt.c:27 (nupvalues: 1)
#1  cfunction 0x5555555552b9 &lt;c_fn&gt; at bt.c:21
#2  lclosure 0x555555561d50 bt.lua:17
(... tail calls ...)
#3  lclosure 0x55555555ff70 bt.lua:3
]]

return include "master.lua" {
    title = "gdb_lua",
    css = {"/main.css", "/description.css"},
    body_class = "black-bg mono w80",
    nav_path = {{nil, "gdb_lua"}},
    main = main(nil, lines {
        h1 "gdb_lua",
        par [[
A set of custom GDB commands that are useful when working with Lua programs.
]],
        div({class = "description"}, ul {
            lines {
                link {
                    href = "https://gitlab.bbguimaraes.com/bbguimaraes/gdb_lua.git",
                    content = "source",
                },
                html "(gitlab)",
            },
            lines {
                link {
                    href = "https://github.com/bbguimaraes/gdb_lua.git",
                    content = "source",
                },
                html "(github)",
            },
            link {
                href = "https://gitlab.bbguimaraes.com/bbguimaraes/gdb_lua/-/tree/master/test",
                content = "documentation",
            },
        }),
        div({class = "example"}, example),
    }),
}
