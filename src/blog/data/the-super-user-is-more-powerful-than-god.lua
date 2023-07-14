local content <const> = {
    code [[
$ useradd god
$ mkdir a
$ chmod 000 a
$ su god -c ls a
ls: cannot open directory a: Permission denied
$ sudo ls a
$
]],
    par [[
And it can even tell god what to do:
]],
    code [[
$ sudo su god -c <b>"sed -i 's/\(-DWINDOWS\|-DLINUX\)//' Makefile; make -B world"</b>
]],
    par [[
Happy winter solstice.
]],
}

return {
    title = "The super user is more powerful than god",
    date  = { "1356086880", "2012-12-21T10:48:00" },
    tags = { "shell", "linux" },
    content = content,
}
