local description <const> = [[We've seen how perl can be used, but you may be wondering, so what? Fasten your seatbelt, for fun begins now.]]

local content <const> = {
    par [[
We've seen how perl can be used, but you may be wondering, so what?  Fasten
your seatbelt, for fun begins now.
]],
    h2_link { "interpreter-switches", "Interpreter switches" },
    par [[
The single most useful tool I'm going to show you.  The interpreter accepts
<a href="http://perldoc.perl.org/perlrun.html">many parameters</a>, which
alter the way it runs, but most importantly, they can alter the way the code is
executed.  First, though, I'll show you the <i>-e</i> switch, which will be
used on all the other examples.
]],
    code [[
$ perl -e <b>'print "hello\n";'</b>
]],
    par [[
The switch tells the interpreter that, instead reading from <i>stdin</i> or
from a file, the program will be contained inside the next argument.  Note
that,  by perl's definition, you don't need to use a semicolon after the last
(here also the only) command.  But I've included it to avoid confusion on the
quotes. With this switch, it will be easier to show you the others.
]],
    par [[
Let's start with -n, which will <em>surround</em> your code with the following
construct:
]],
    code [[
<b>while</b>(<b>&lt;&gt;</b>) {
    <i># your code</i>
}
]],
    par [[
Try running our previous example but adding this switch.  It will start
listening on stdin, and after every line it will print the string 'hello' (I
call it the nice program).  One thing to note is that the <i>-e</i> switch and
the program string must be contiguous. You can run the program like the first
three lines below, but the fourth will give you an error:
]],
    code [[
$ perl -ne 'print "hello\n"'
$ perl -n -e <b>'print "hello\n"'</b>
$ perl -e <b>'print "hello\n"'</b> -n
$ perl -e -n <b>'print "hello\n"'</b> <i># This is wrong!</i>
]],
    par [[
But what really happened when we ran that program?  If you remember
<a href="perl-is-beautiful.html">the last post</a>, <i>&lt;&gt;</i> is the input
operator.  So, <i>while(&lt;&gt;)</i> means "read lines from the input until it
ends".  And if you have really good memory (or are already tainted by the perl
way of thinking), you'll remember that the input read will go to the variable
<i>$_</i>.  We can test it with our reimplementation of <i>cat</i>:
]],
    code [[
$ perl -ne <b>'print'</b>
]],
    par [[
See what I did there?  I tested your memory again. <i>$_</i> is used as the
default argument to many functions in perl, including <i>print</i>.  This
allows you to say just <i>print</i> here, instead of <i>print $_</i>. And this
code is such a common occurrence that perl already has another switch to do
just that: <i>-p</i>.
]],
    code [[
$ perl -pe <b>''</b>
]],
    par [[
Running this, you can see that it is exactly the same as the previous. Just
like <i>-n</i>, it surrounds your code with more code, but it adds a little
something to what <i>-n</i> adds:
]],
    code [[
<b>while</b>(<b>&lt;&gt;</b>) {
    <i># your code</i>
    <b>print</b>
}
]],
    h2_link { "regular-expressions-revisited", "Regular expressions revisited" },
    par [[
Now, this is already fun.  We can make a program that does anything to each
line of input (like using <i>ssh -Y</i>, a list of swear words and
<i>notify-send</i> on your coworker's computer).  But the real power of what
I'm showing you comes from combining these techniques with perl's
<a href="http://en.wikipedia.org/wiki/MongoDB">humongous</a> power.  Check
this:
]],
    code [[
$ perl -ne <b>'print if m/=D/'</b>
]],
    par [[
This will print every happy line on a file.  Remember that the default
parameter for the <i>m//</i> operator is also <i>$_</i> (isn't it beautiful?).
If you followed me all the way here, you can now start applying it, just by
remembering this simple command line.  Quick example I use every day: find all
python functions on a file.
]],
    code [[
$ perl -ne <b>'print if m/^\s*def /'</b>
]],
     par [[
From here, you can go anywhere.  The nice thing is now you have the power of a
real programming language, and can do all the bizarre things perl can do (and
it can do some really bizarre things).  One thing that took me a little time to
get used to was the "boilerplate" part of the command line.  But after I used
it a few times, it's now natural, I don't even have to think about it.  And it
took only a couple of seconds to google "perl command line" anyway (at some
point, I only had to type "perl" on Firefox's address bar and it would show me
the page right away).
]],
    par [[
Coming next: on the last post on this (unexpectedly long) topic, I'll show you
some (kind of) advanced perl and regexp techniques.
]],
}

return {
    title = "perl is beautiful - part 2",
    date  = { "1350557580", "2012-10-18T10:53:00" },
    tags = { "programming", "perl" },
    description = description,
    content = content,
}
