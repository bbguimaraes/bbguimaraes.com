local description <const> = [[Now we have all the components we need to run our Raspberry Pi, we can start preparing them to actually work together.]]

local content <const> = {
    inline_tag("p", nil, link {
        href = "the-raspberry.html",
        content = "Part I - The raspberry",
    }),
    inline_tag("p", nil,
        "<b>Part II - An image is worth a thousand megabytes</b>"),
    inline_tag("p", nil, link {
        href = "a-post-mortem.html",
        content = "Part III - A post-mortem",
    }),
    par [[
Now we have all the components we need to run our Raspberry Pi, we can start
preparing them to actually work together.  The first thing we need to do is get
the boot record, partitions and operating system on the SD card, so our little
friend can boot and run a true system.  Thankfully, some nice folks have
already done the hard work, so we can jump many of the complex steps.
]],
    par [[
I'm going to use the Raspbian distribution, which is based on the famous Debian
(GNU/)Linux distribution, and includes many of the standard software packages
already prepared to run on the Pi.  If you haven't already, grab Raspbian's
image, which you can find on <a href="http://www.raspberrypi.org/downloads">
Raspberry Pi Foundation's downloads web page</a>.
]],
    code [[
$ wget http://downloads.raspberrypi.org/images/raspbian/2012-12-16-wheezy-raspbian/2012-12-16-wheezy-raspbian.zip
]],
    par [[
Note that this is the current version as I write this post.  Visit the page to
get the most recent version.  An optional but recommended step after you
download the image is to check its <a href="http://en.wikipedia.org/wiki/Sha1">
SHA-1 checksum</a>.  That will ensure nothing has been corrupted during the
download, which is always a good thing to know, specially when dealing with
sensitive data such as disk images.  To do that, you can use the <i>sha1sum</i>
program:
]],
    code [[
$ sha1sum 2012-12-16-wheezy-raspbian.zip
514974a5fcbbbea02151d79a715741c2159d4b0a  2012-12-16-wheezy-raspbian.zip
]],
    par [[
Compare the output with the hash on the SHA-1 section of the download page.
Or, if you have the SHA-1 stored in a file:
]],
    code [[
$ sha1sum -c 2012-12-16-wheezy-raspbian.zip.sha1
2012-12-16-wheezy-raspbian.zip: OK
]],
    par [[
If you don't get the appropriate result, just download the file again and check
it, until you get it right.  Now we are going to copy the image to the SD card.
Before you insert the SD card on your computer (you may need an external SD
card reader, depending on the ports available on your machine), execute the
command
]],
    code [[
$ ls /dev/sd*
/dev/sda   /dev/sda2  /dev/sda4  /dev/sda6  /dev/sda8
/dev/sda1  /dev/sda3  /dev/sda5  /dev/sda7
]],
    par [[
That will list all the disks available.  If you prefer a more friendly output,
you can use
]],
    code [[
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
    /dev/sda6        46G   30G   14G  69% /
    udev            2.9G  4.0K  2.9G   1% /dev
    tmpfs           1.2G  1.1M  1.2G   1% /run
    none            5.0M     0  5.0M   0% /run/lock
    none            2.9G   76K  2.9G   1% /run/shm
    /dev/sda4       107G   50G   53G  49% /mnt/data
]],
    par [[
This will list the devices used by the mounted file systems.  Now you can
insert the SD card and run the command again.  You will notice that new entries
will appear on the output.  It will usually be <i>/dev/sdb*</i> entries, if you
have only one disk.  That is the device file for the card.  If the card is
automatically mounted, you can see the size on <i>df</i>'s output, so you can
be sure that it is the right device.
]],
    par [[
<b>A really important note here</b>: you need to get the correct device name.
We are going to use a program that does raw block copying, which can destroy
your data if you target the wrong device.  The device mounted on root
(<i>/</i>) is probably not the device you want, for example.
]],
    par [[
Another important thing: if the card already has partitions, some extra device
files may appear, such as <i>/dev/sdb1</i>, <i>/dev/sdb2</i> and so on.  We
need the device, not any partition, so be sure to use the device file with no
number suffix.  When you have the device name, make sure the device is unmounted
so we can write data to it:
]],
    code [[
$ umount /dev/sdb*
]],
    par [[
Then use good old <i>dd</i> to copy the image:
]],
    code [[
$ dd if=./2012-12-16-wheezy-raspbian.zip of=/dev/sdb bs=4M
]],
    par [[
A couple things deserve mention.  It is always good to check (and re-check) the
parameters, to make sure the image is the <i>if</i> (input file) value and the
device is the <i>of</i> (output file) parameter.  The <i>bs</i> parameter
stands for block size, and is the size of each chunk of data copied at a time.
Larger values make the process faster.  Usually, 4mb is a reasonable Following
UNIX's philosophy, <i>dd</i> doesn't output anything while it is working.
Since it can take quite some time to finish, you may think it's froze.  But
don't worry, it hasn't.  If you want to be absolutely sure, send the program a
signal and it will output the progress:
]],
    code [[
$ ps aux | grep dd
  4821 pts/2    R+     0:33 dd if=./2012-12-16-wheezy-raspbian.zip of=/dev/sdb bs=4M
$ kill -USR1 4821
]],
    par [[
When it is done, run
]],
    code [[
$ sync
]],
    par [[
to make sure everything is properly written and remove the card.  Now insert
the card on the Raspberry, plug the power supply and, if everything worked, you
will get a nice show of lights as it boots.  You can plug the HDMI to a monitor
and see the boot messages.  Here's a (somewhat light-impaired) gallery:
]],
    image_link {
        src = "/files/blog/an_image0.png",
        alt = "raspberry pi lights",
    },
    image_link {
        src = "/files/blog/an_image1.png",
        alt = "raspberry pi lights",
    },
    image_link {
        src = "/files/blog/an_image2.png",
        alt = "raspberry pi starting",
    },
    par [[
I know I promised we'd get it to work!  Well, if you (unlike me) think this
isn't actual work, check the next posts, where we will put the Pi to good use.
]],
}

return {
    title = "An image is worth a thousand megabytes",
    date  = { "1360199460", "2013-02-07T01:11:00" },
    tags = {
        "df", "sha1sum", "raspbian", "linux", "dd", "wget", "raspberry pi",
    },
    description = description,
    content = content,
}
