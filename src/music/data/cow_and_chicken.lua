local description <const> = format {
    [[First and only take.  From ear.  From memory.  Bad recording.  Bad angle.  Bad sound quality.  But I couldn't resist the urge to record it after seeing %s.]],
    link {
        href = "https://pbs.twimg.com/profile_images/419767343309660160/SbtebImM.jpeg",
        content = "this",
    },
}

local content <const> = par(format {
    [[
First and only take.  From ear.  From memory.  Bad recording.  Bad angle.  Bad
sound quality.  But I couldn't resist the urge to record it after seeing
%s.
]],
    link {
        href = "https://pbs.twimg.com/profile_images/419767343309660160/SbtebImM.jpeg",
        content = "this",
    },
})

return {
    title = "Cow and chicken",
    timestamp = { 1403481600, "2014-06-23T00:00:00" },
    duration = "0:40",
    poster = "0:16",
    tags = {"piano", "short"},
    links = {
        youtube = "87v6T-FPsPs",
    },
    description = description,
    content = content,
}
