local function list(item, t)
    return lines { item, ul(t) }
end

local function item(t)
    t.content = inline_tag("span", nil, t.content)
    local short <const> = t.short
    t.short = nil
    if short then
        t.content = concat { t.content, " ", inline_tag("span", nil, short) }
    end
    return link(t)
end

local root <const> = item {
    href = "https://bbguimaraes.com",
    title = "https://bbguimaraes.com",
    short = "root",
    content = "/",
}

local bin <const> = item {
    href = "bin.html",
    short = "programs",
    content = "bin",
}

local impero <const> = item {
    href = "impero/",
    title = "graphical command executor",
    short = "graphical executor",
    content = "impero"
}

local machinatrix <const> = item {
    href = "machinatrix/",
    title = "matrix chat robot",
    short = "chat robot",
    content = "machinatrix",
}

local nngn <const> = item {
    href = "nngn/",
    title = "2D/3D graphics/physics/audio/game engine",
    short = "graphics engine",
    content = "nngn",
}

local random <const> = item {
    href = "random/",
    title = "random",
    short = "random",
    content = "random",
}

local snd <const> = item {
    href = "music/",
    title = "music",
    short = "music",
    content = "snd",
}

local stdin <const> = item {
    href = "contact.html",
    title = "contact",
    short = "contact",
    content = "stdin",
}

local stdout <const> = item {
    href = "talks/",
    title = "talks",
    short = "talks",
    content = "stdout",
}

local pub_asc <const> = item {
    href = "/files/pub.asc",
    title = "PGP",
    short = "PGP",
    content = "pub.asc",
}

local lib <const> = item {
    href = "lib",
    title = "books",
    short = "books",
    content = "lib",
}

local codex <const> = item {
    href = "codex/",
    title = "code experiments",
    short = "code experiments",
    content = "codex",
}

local gdb_lua <const> = item {
    href = "gdb_lua/",
    title = "gdb_lua",
    short = "GDB module",
    content = "gdb_lua",
}

local proc <const> = item {
    href = "/files/cv.pdf",
    title = "CV",
    short = "CV",
    content = "self",
}

local github <const> = item {
    href = "https://github.com/bbguimaraes",
    title = "github",
    short = "source",
    content = "github",
}

local gitlab <const> = item {
    href = "https://gitlab.bbguimaraes.com",
    title = "gitlab",
    short = "code",
    content = "gitlab",
}

local loc <const> = item {
    href = "places/",
    title = "places",
    short = "places",
    content = "local",
}

local log <const> = item {
    href = "blog/",
    title = "blog",
    short = "blog",
    content = "log",
}

return include "master.lua" {
    body_class = "w80",
    title = "bbguimaraes.com",
    main = concat {
        div({id = "home"}, lines {
            image {
                id = "logo",
                alt = "logo",
                src = "triangle.png",
            },
            tag("nav", nil, ul {
                list(root, {
                    list(bin, {impero, machinatrix, nngn}),
                    list(html "dev", {random, snd, stdin, stdout}),
                    list(html "etc", {pub_asc}),
                    list(lib, {codex, gdb_lua}),
                    list(html "proc", {proc}),
                    list(html "src", {github, gitlab}),
                    list(html "var", {log, loc}),
                }),
            }),
        }),
    },
    "\n",
}
