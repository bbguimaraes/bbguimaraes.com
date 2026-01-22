local description <const> = format {
    [[A quick jam with a song from the Elysian Shadows team.  Check them out at %s.]],
    link {
        href = "http://elysianshadows.com",
        content = "elysianshadows.com",
    },
}

local content <const> = par(format {
    [[
A quick jam with a song from the Elysian Shadows team.  Check them out at
%s.
]],
    link {
        href = "http://elysianshadows.com",
        content = "http://elysianshadows.com",
    },
})

return {
    title = "Elysian Shadows",
    timestamp = { 1403568000, "2014-06-24T00:00:00" },
    duration = "1:55",
    poster = "0:15",
    tags = {"piano", "short"},
    links = {
        youtube = "nJDZkEGm9t8",
    },
    description = description,
    content = content,
}
