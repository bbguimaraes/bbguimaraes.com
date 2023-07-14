local description <const> = [[This is a short interlude in my series of posts.  The original post in the series <a href="https://bbguimaraes.com/blog/nngn.html#ubi">briefly mentioned</a> that one of my build targets is WebAssembly, and the <a href="https://bbguimaraes.com/blog/nngn-lua.html">last one</a> was all about how Lua is a fundamental piece of the architecture.  How that build process works did not seem particularly interesting, so I did not write about it.]]

local content <const> = {
    div({class = "img-group img-group2"}, lines {
        tag("a", {href = "https://www.lua.org"}, image {
            src = "/files/blog/lua.png",
            alt = "Lua logo",
        }),
        tag("a", {href = "https://webassembly.org"}, image {
            src = "/files/blog/wasm.png",
            alt = "WebAssembly logo",
            style = "width: 100px",
        }),
    }),
    [[
            <aside>
                <p>
This post is part of a series.  You should probably start
<a href="nngn.html">here</a>.
                </p>
            </aside>]],
    par [[
This is a short interlude in my series of posts.  The original post in the
series <a href="nngn.html#ubi">briefly mentioned</a> that one of my build
targets is WebAssembly, and the <a href="nngn-lua.html">last one</a> was all
about how Lua is a fundamental piece of the architecture.  How that build
process works did not seem particularly interesting, so I did not write about
it.
]],
    par [[
I have since been involved in discussions and seen enough interest in blog posts
&mdash; none of which I find satisfactory &mdash; that changed my mind, so here
is an overview.
]],
    h2_link { "demo", "demo" },
    par [[
You can see a basic demonstration on
<a href="https://bbguimaraes.com/nngn/nngn.html?argv=@demos/repl.lua">this page</a>.
A Lua script processes keyboard input (<em>very roughly</em>, I should add),
evaluates it as Lua code when <code>enter</code> is pressed, and updates the
text box with the result (I heard you like interpreters…).  It is similar in
function to the command-line <code>lua</code> interpreter that might be found in
your operating system.
]],
    src_ref {
        hash = "70e07d44a42c3810195c05cc90fc6fd692544f1d",
        href = "https://gitlab.bbguimaraes.com/bbguimaraes/nngn/-/blob/master/demos/repl.lua",
        name = "demos/repl.lua",
    },
    image {
        src = "/files/blog/lua_wasm_demo0.png",
        title = "Lua Wasm demo - write some lua code and press enter",
        alt = "Lua Wasm demo - write some lua code and press enter",
    },
    html "<hr />",
    image {
        src = "/files/blog/lua_wasm_demo1.png",
        title = ('Lua Wasm demo - "hello" .. ", " .. "lua"'):gsub('"', "&quot;"),
        alt = ('Lua Wasm demo - "hello" .. ", " .. "lua"'):gsub('"', "&quot;"),
    },
    html "<hr />",
    image {
        src = "/files/blog/lua_wasm_demo2.png",
        title = "Lua Wasm demo - hello, lua",
        alt = "Lua Wasm demo - hello, lua",
    },
    h2_link { "emscripten", "<code>emscripten</code>" },
    par [[
Unsurprisingly, the WebAssembly build is based on the
<a href="https://emscripten.org">emscripten</a> project.  Tutorials for C/++
applications surely exist, so I will focus on the details pertinent to this
post.  <code>emscripten</code> supports several heavily used libraries,
as described in their
<a href="https://emscripten.org/docs/compiling/Building-Projects.html#using-libraries">documentation</a>.
These include most of the libraries used in this code base, such as
<code>OpenGL</code>/<code>GLEW</code>, <code>GLFW</code>, <code>libpng</code>,
<code>freetype2</code>, etc., but Lua is not one of them.  This means it has to
be built from source, also using <code>emscripten</code>.
]],
    par [[
After it is built, the generated library can be included in the build process as
one would do for any other library.  As a bonus, a simple interface to the
embedded Lua interpreter is also exposed to Javascript code in the web page
which, combined with logging messages being displayed in the browser console,
gives a nice REPL interface to it.
]],
    par [[
The final step in the process is to embed the Lua libraries and scripts present
in the repository in the Javascript source, providing access to them by file
path in the same way as a regular desktop build.  This is a very simple process
also described in the
<a href="https://emscripten.org/docs/porting/files/packaging_files.html#packaging-files">documentation</a>.
]],
    h2_link { "building-lua", "building Lua" },
    par [[
Building a scripting language's interpreter from scratch may seem intimidating,
but two of the greatest appeals of Lua, as mentioned in the previous post, are
its simplicity and focus on being an extension language.  The
<a href="https://www.lua.org/docs.html#papers"><i>papers</i></a> section of the
documentation pages is an excellent resource describing how these have been
intentional and explicit goals of the language from its conception (prior to it,
in fact, as Lua's predecessors shared those goals).
]],
    par [[
The source code can be easily obtained from the
<a href="https://www.lua.org/download.html">download</a> page (also mirrored in
<a href="https://github.com/lua/lua.git">Github</a>), and it is very
straightforward and portable C99 code.  <code>emscripten</code> provides a
<code>make</code> wrapper that exports standard environment variables that point
to its tool chain, so the
<a href="https://github.com/lua/lua/blob/master/makefile"><code>Makefile</code></a>
in the repository can be used almost unmodified.
]],
    par [[
A script is used in my builds, which is executed once, before the final
<code>make</code> call.  Other than downloading and extracting the source code,
its only significant actions are:
]],
    src_ref {
        hash = "a079068db60c13c975173c7c8c4453534bcf8799",
        href = "https://gitlab.bbguimaraes.com/bbguimaraes/nngn/-/blob/master/scripts/emscripten/build.sh",
        name = "scripts/emscripten/build.sh",
    },
    code [[
patch -Np0 < <b>"$PATCHES_DIR/lua.patch"</b>
pushd src/
emmake make generic ALL=liblua.a
]],
    par [[
In order to be used with <code>emmake</code>, the original <code>Makefile</code>
needs some trivial
<a href="https://gitlab.bbguimaraes.com/bbguimaraes/nngn/-/blob/master/scripts/emscripten/patches/lua.patch">patches</a>,
all concerned with eliding or adjusting the environment variables that define
the compiler and library tools.  Further adjustments may be needed depending on
the project, but those few are sufficient to build Lua as a static library.
]],
    h2_link { "linking", "linking" },
    par [[
With the library built, all that is left is to include it in the linker calls.
You will notice that the build script used in the previous section also sets up
a few directories where Lua's headers and libraries are placed.  That simplifies
this step, which mainly consists of adding those directories to the build
system's inclusion directories.
]],
    par [[
<code>autotools</code> and <code>pkgconf</code> are my preferred tools, so I
include a set of files to be used with the <code>PKG_CONFIG_PATH</code> variable
(<a href="https://gitlab.bbguimaraes.com/bbguimaraes/nngn/-/blob/master/scripts/emscripten/pkgconfig/lua.pc">e.g.  for Lua</a>).
This also allows the <code>PKG_CHECK_MODULES</code> directives in
<code>configure.ac</code> to work without modification (there were plans to add
similar <code>pkgconf</code> files to the <code>emscripten</code> repository,
but I have not checked if that materialized in a while).  This process should be
analogous for any other build system.
]],
    par [[
Because of how <code>emscripten</code> builds work, this is also the step where
Lua libraries and scripts (all regular source code text files) are included:
]],
    src_ref {
        hash = "72a7757b61fcc5f4d81137de337ee769ad9bce7f",
        href = "https://gitlab.bbguimaraes.com/bbguimaraes/nngn/-/blob/master/Makefile.am",
        name = "Makefile.am",
    },
    code [[
<b>nngn_js_LDFLAGS</b> = \
	<b>$(nngn_js_CXXFLAGS)</b> -O3 --source-map-base / \
	--embed-file $(srcdir)/src/lua/@src/lua \
	--embed-file $(srcdir)/src/lson/@src/lson \
    <i># …</i>
]],
    h2_link { "bonus", "bonus: console REPL" },
    par [[
As a fun coda to this post, here is how access to the Lua interpreter is also
exposed to Javascript and, by extension, the browser console:
]],
    image {
        src = "/files/blog/lua_wasm_demo3.png",
        alt = "Lua Wasm demo - browser console",
        title = "Lua Wasm demo - browser console",
    },
    par [[
<code>emscripten</code> provides bidirectional
<a href="https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html">communication</a>
between Javascript and the application.  The simplest form is via
<code>ccall</code> and <code>cwrap</code>, which directly expose C functions.  A
simple C entry point is included in the program:
]],
    src_ref {
        hash = "eb9fcddd4fd6c1c73cd10384fb3f800e0ff6799a",
        href = "https://gitlab.bbguimaraes.com/bbguimaraes/nngn/-/blob/master/src/main.cpp",
        name = "src/main.cpp",
    },
    code [[
<b>#ifdef</b> NNGN_PLATFORM_EMSCRIPTEN
<b>extern</b> <b>"C"</b> {
<b>void</b> lua(<b>const</b> <b>char</b> *s) { NNGN_LOG_CONTEXT_F(); p_nngn->lua.dostring(s); }
}
<b>#endif</b>
]],
    [[
            <aside>
                <p>For completeness:</p>
                <ul>
                    <li>
<code>NNGN_PLATFORM_EMSCRIPTEN</code> is a simple preprocessor directive that is
used to only compile the function in <code>emscripten</code> builds.
                    </li>
                    <li>
<code>NNGN_LOG_CONTEXT_F</code> is a macro that declares a helper object used in
the stack-based logging module.
                    </li>
                    <li>
<code>p_nngn</code> is a global variable with internal linkage that points to
the main engine object, used exclusively for this purpose.  The <code>lua</code>
member is the object that wraps the <code>lua_State*</code>.
                    </li>
                </ul>
            </aside>]],
    par [[
This function is then exposed as described in the documentation linked above:
]],
    src_ref {
        hash = "72a7757b61fcc5f4d81137de337ee769ad9bce7f",
        href = "https://gitlab.bbguimaraes.com/bbguimaraes/nngn/-/blob/master/Makefile.am",
        name = "Makefile.am",
    },
    code [[
<b>nngn_js_CXXFLAGS</b> = \
    <b>$(AM_CXXFLAGS)</b> \
	… \
	-s EXPORTED_FUNCTIONS=<b>'["_main","_lua"]'</b> \
	-s EXTRA_EXPORTED_RUNTIME_METHODS=<b>'["ccall","cwrap"]'</b> \
	…
]],
    par [[
And that is it!  We now have an application compiled to WebAssembly that has a
full Lua virtual machine (or several, go wild) and that can communicate with the
web page and browser console.  I hope you enjoyed this small detour, see you in
the next post when we will be back to our regular (if that word can be used)
program.
]],
}

return {
    title = "nngn - lua &amp; wasm",
    date  = { "1616494225", "2021-03-23T10:10:25" },
    tags = { "c", "lua", "nngn", "programming", "wasm" },
    description = description,
    content = content,
}
