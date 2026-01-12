local description <const> = [[A nice trick I learned a while ago that is worth sharing: calculating pi the unix way (you know, on the command line, with pipes, as god intended).]]

local content <const> = {
    par [[
A nice trick I learned a while ago that is worth sharing: calculating pi the
unix way (you know, on the command line, with pipes, as god intended).
]],
    par [[
I would like to give credit to the original source of this command, but I just
couldn't find it.  It was some of those "shell one-liners" you see on hacker
news five times a day, except I didn't know half of them.  The most interesting
was a semi-cryptic command line with a pretentious comment besides it:
]],
    code [[
# calculates pi the unix way
]],
    par [[
I remember as if it was today how puzzled I was by that line.  As I said, I
didn't know much of the incantations on that list, but this was by far the most
magical.  The line goes like this:
]],
    code [[
$ seq -f <b>'4/%g'</b> <b>1</b> <b>2</b> <b>9999</b> | paste -sd-+ | bc
-l
]],
    par [[
If you like a challenge (as I do), try to figure it out by yourself.  A shell
and the man pages are your best friends.
]],
    h2_link { "seq", "seq" },
    par [[
If shell (or python) wasn't your first programming language, you were probably
surprised by the way loops are done.  It usually goes like this:
]],
    code [[
$ <b>for</b> x <b>in</b> <b>1</b> <b>2</b> <b>3</b> <b>4</b> <b>5</b>; <b>do</b> <b>echo</b> <b>"$x"</b>; <b>done</b>
    1
    2
    3
    4
    5
]],
    par [[
If you have a little experience with shell, you probably learned there is a
more idiomatic way of doing this using the seq command and some shell voodoo:
]],
    code [[
$ <b>for</b> x <b>in</b> $(seq <b>1</b> <b>5</b>); <b>do</b> <b>echo</b> <b>"$x"</b>; <b>done</b>
]],
    par [[
And if you were truly initiated on the dark arts of bash programming, you
probably know this is functionally equivalent to this:
]],
    code [[
$ <b>for</b> x <b>in</b> {<b>1..5</b>}; <b>do</b> <b>echo</b> <b>"$x"</b>; <b>done</b>
]],
    par [[
I won't explain how shell command substitution works, suffice to say seq is a
nice utility to generate sequences (get it?) of numbers.  From the first lines
of the man page:
]],
    code [[
$ man seq | grep -A <b>3</b> SYNOPSIS
    SYNOPSIS
           seq [OPTION]... LAST
           seq [OPTION]... FIRST LAST
           seq [OPTION]... FIRST INCREMENT LAST
]],
    par [[
So the main part of the first command on the pipe is no magic: we are
generating numbers from 1 to 9999 with a step of 2:
]],
    code [[
$ <b>echo</b> $(seq <b>1</b> <b>2</b> <b>9999</b> | head -5)
1 3 5 7 9
]],
    par [[
There is a useful option to this command to control how the value is output:
]],
    code [[
$ seq -f <b>'%02g'</b> <b>1</b> <b>3</b> <b>10</b>
    01
    04
    07
    10
]],
    par [[
Programmers familiar with c will recognize the printf format string.  Moving
down the pipe...
]],
    h2_link { "paste", "paste" },
    par [[
There are some commands that do something so simple they seem almost useless:
]],
    code [[
$ whatis -l paste
    paste (1)            - merge lines of files
    paste (1p)           - merge corresponding or subsequent lines of files
]],
    par [[
Nothing really interesting here, right?
]],
    code [[
$ paste <(seq <b>1</b> <b>3</b>) <(seq <b>4</b> <b>6</b>)
    1       4
    2       5
    3       6
$ seq <b>1</b> <b>6</b> | paste - -
    1       2
    3       4
    5       6
]],
    par [[
Well, that is interesting.  What if we play with the other options?
]],
    code [[
$ paste -sd, <(seq <b>1</b> <b>3</b>) <(seq <b>4</b> <b>6</b>)
1,2,3
4,5,6
$ seq <b>1</b> <b>6</b> | paste -sd,
1,2,3,4,5,6
]],
    par [[
This simple command is starting to show complex behavior.  Maybe there is
something interesting in those old unix books after all...  Wait:
]],
    code [[
$ seq <b>1</b> <b>6</b> | paste -sd+
1+2+3+4+5+6
]],
    par [[
Nice, a mathematical expression. If only we had some way of interpreting it...
]],
    h2_link { "bc", "bc" },
    par [[
There are people who say: the python/ruby interpreter is my calculator.  To
that I say: screw that!
]],
    code [[
$ bc -ql
1 + 2 + 3
6
10 / 12
.83333333333333333333
scale = 80
10 / 12
.8333333333333333333333333333333333333333333333333333333333333333333\
3333333333333
]],
    par [[
Do you see that <i>\</i> character?  It's almost as if it was meant to be used
on a shell...
]],
    code [[
$ seq <b>1</b> <b>6</b> | paste -sd+ | bc -l
21
]],
    h2_link { "interlude-gregory-leibniz", "Interlude: Gregory-Leibniz" },
    par [[
There are many ways of calculating π.  You can find many of them on its
wikipedia page.  One of them is named after two mathematicians, James Gregory
and Gottfried Leibniz, goes like this (again from wikipedia):
]],
    image_link {
        src = "https://upload.wikimedia.org/math/9/e/8/9e804b8a1a11e442be93fed1d52205a9.png",
        alt = "Gregory-Leibniz sum",
        class = "white-bg",
    },
    par [[
This is an infinite series with a simple pattern, which I'm sure you can
identify (you weren't sleeping on those calculus classes, were you?).  Just in
case you can't (and because it is a pretty equation), here it is:
]],
    image_link {
        src = "https://upload.wikimedia.org/math/c/a/a/caafcd11bc553464dd4873a76ae4d9a7.png",
        alt = "Gregory-Leibniz formula",
        class = "white-bg",
    },
    h2_link { "back-in-unix-land", "Back in unix-land" },
    par [[
So here is the challenge: how can we generate and evaluate the terms of this
series?  Generating each term, without the sign, can be done easily with seq
and a format string:
]],
    code [[
$ seq -f <b>'1/%g'</b> <b>1</b> <b>2</b> <b>9</b>
1/1
1/3
1/5
1/7
1/9
]],
    par [[
Remember our useful-where-you-never-imagined friend paste?
]],
    code [[
$ seq -f <b>'1/%g'</b> <b>1</b> <b>2</b> <b>9</b> | paste -sd-+
1/1-1/3+1/5-1/7+1/9
]],
    par [[
This may take some time to understand, it's ok.  Read those man pages!  But
once you understand, the only thing left is to evaluate the expression:
]],
    code [[
$ seq -f <b>'1/%g'</b> <b>1</b> <b>2</b> <b>9</b> | paste -sd-+ | bc -l
.83492063492063492064
]],
    par [[
Hmm, not much π-like, is it?  Right, this is π/4.  Ok, we can rearrange the
terms a bit to fit our tools (that is the essential hacker skill).  Lets move
the denominator on the right side to the numerator on the left.
]],
    code [[
$ seq -f <b>'4/%g'</b> <b>1</b> <b>2</b> <b>9</b> | paste -sd-+ | bc -l
3.33968253968253968254
]],
    par [[
That's more like it!  As any infinite series approximation, we can increase the
number of terms to increase accuracy:
]],
    code [[
$ seq -f <b>'4/%g'</b> <b>1</b> <b>2</b> <b>9999</b> | paste -sd-+ | bc -l
3.14139265359179323814
]],
    par [[
Now just for the heck of it:
]],
    code [[
$ seq -f <b>'4/%g'</b> <b>1</b> <b>2</b> <b>999999</b> | paste -sd-+ | bc -l
3.14159065358979323855
]],
    par [[
And there you have it. Enjoy your unix π.
]],
}

return {
    title = "Calculating π the unix way",
    timestamp = { 1418338260, "2014-12-11T22:51:00" },
    tags = {
        "printf", "head", "python", "pi", "bash", "bc", "math", "grep",
        "whatis", "man", "pipe", "paste", "seq", "unix", "shell",
    },
    description = description,
    content = content,
}
