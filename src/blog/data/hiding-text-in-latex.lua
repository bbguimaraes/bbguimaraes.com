local description <const> = [[When writing my dissertation, I like to leave some text that I won't use at that particular moment but know I will need in the (near) future.]]

local content <const> = {
    par [[
When writing my dissertation, I like to leave some text that I won't use at
that particular moment but know I will need in the (near) future.  To remember
to correct it later, I surrounded it with the (pseudo-randomly chosen)
<i>\ldots</i> command, like this:
]],
    code [[
This is the actual text.

<b>\dots</b>

This is some text I'll need later.

<b>\ldots</b>

This is more of the actual text.
]],
    par [[
That solved my problem, I could just grep the files and find the parts that
needed refactoring.  The problem is they ended up on the PDF, which is not the
end of the world, but it disrupted the reading and didn't look so good.  I
finally decided to google the problem, and found a nice solution, using the if
command:
]],
    code [[
This is the actual text

<b>\iffalse</b>

This is some text I'll need latex.

<b>\fi</b>

This is more of the actual text.
]],
    par [[
Now I can still grep for <i>\iffalse</i>, and it doesn't pollute the PDF.  And
it even advertises my blog.  Yay!
]],
}

return {
    title = "Hiding text in LaTeX",
    date  = { "1352067840", "2012-11-04T22:24:00" },
    tags = { "dissertation", "latex" },
    description = description,
    content = content,
}
