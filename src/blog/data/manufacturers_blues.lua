local description <const> = [[The state of technology sometimes gives me the blues.]]

local content <const> = {
    par [[
The state of technology sometimes gives me the blues.  In 2014, I found myself
installing a package called `dosfstools` to format my pendrive.  That's because
the car's radio wouldn't accept any device with a file system that's not fat32:
]],
    image_link {
        src = "/files/blog/radio_fat32.png",
        alt = "not a device",
    },
    par [[
Of course possessing a file system of another kind makes the device "not a
device".  After a few seconds on the command line the problem went away:
]],
    code [[
$ sudo pacman -S dosfstools
$ sudo mkfs.vfat -n BILLY /dev/sdb1
]],
    par [[
but the sadness remained.  At l(e)ast I can listen to some
<a href="http://www.badvoltage.org/">badvoltage</a> while driving.
]],
    par [[
Oh yes, did I mention it doesn't accept any format <em>except</em> mp3?  And
how does it signal it?  By not showing the files at all, of course.
]],
}

return {
    title = "Manufacturer's blues",
    timestamp = { 1399047180, "2014-05-02T16:13:00" },
    tags = {
        "mp3", "badvoltage", "dos", "arch", "pacman", "shell", "linux", "billy",
        "filesystem", "mkfs", "fat", "unix",
    },
    description = description,
    content = content,
}
