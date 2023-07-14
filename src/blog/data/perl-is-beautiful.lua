local description <const> = [[Writing the first post on a blog about programming is fairly easy. Now, the second one needed a little thought to come up with. I decided to show a trick I use almost daily, be it at work or on personal projects.]]

local content <const> = {
    par [[
Writing the first post on a blog about programming is fairly easy.  Now, the
second one needed a little thought to come up with.  I decided to show a trick
I use almost daily, be it at work or on personal projects.  And that is
<a href="http://en.wikipedia.org/wiki/Perl">perl</a>. Yes, the ancient language
from 1987.
]],
    par [[
If you're familiar with grep (and if you're not, stop reading this right now
and get familiarized), you already know the enormous power of a general purpose
stream filter.  What I want to show you in this post is how you can augment
that power using simple (aren't them all?) features from perl, both the
language and the homonymous interpreter.
]],
    h2_link { "the-interpreter", "The interpreter" },
    par [[
I'll start with the interpreter just to get you started on how to run simple
programs.  No perl experience is required, since the constructs used here are
really simple.  So, let's start:
]],
    code [[
$ perl -v
This is perl 5, version 14, subversion 2 (v5.14.2) built for x86_64-linux-gnu-thread-multi
(with 53 registered patches, see perl -V for more detail)

Copyright 1987-2011, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl".  If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.
]],
    par [[
If everything is setup right, you get a nice message along with the version
number.  If you get something like
]],
    code [[
perl: command not found
]],
    par [[
you probably need to install the perl interpreter or set your PATH right.
Installing it may be as simple as
]],
    code [[
$ sudo apt-get install perl
]],
    par [[
depending on your system.  But your platform's documentation is probably a much
better resource on how to install programs.  Once we have the interpreter, we
can start fiddling with it:
]],
    code [[
$ perl
print "Hello world!\n";
]],
    par [[
Press <i>Ctrl-D</i> and you should get the (in)famous message on your screen.
For longer scripts, you can save it to a file and pass the file name as an
argument to the interpreter.  But my personal favorite is the -e switch.  It
means that the string following the switch is actually the program to be run.
]],
    code [[
$ perl -e <b>'print "Hello world!\n"'</b>
]],
    par [[
You won't have this problem here, but take care when mixing the quotes used
inside the program from the quotes used to pass the command to the shell.  You
may need to escape some of them.
]],
    h2_link { "perl", "perl" },
    par [[
Let's start building some more interesting examples, exploring one of the
strongest side of perl: its support for
<a href="http://en.wikipedia.org/wiki/Regular_expression">regular expressions</a>.
We create a file to contain our script:
]],
    code [[
<i>#!/usr/bin/perl</i>

<b>use</b> <b>strict</b>;
<b>use</b> <b>warnings</b>;

<b>my</b> <b>$str</b> = &lt;&gt;;
<b>print</b> <b>$str</b> <b>if</b> <b>$str</b> =~ <b>m/g w/</b>;
]],
    par [[
I'll explain what each line does.
<a href="http://en.wikipedia.org/wiki/Shebang_%28Unix%29">You should know what line 1 does</a>.
Line 3 and 4 turn on useful warnings (if you don't set warnings to the  highest
level possible on your compiler/interpreter, shame on you).  On line 6, we
create a variable called <i>str</i> (the <i>$</i> character is used to indicate
simple variables, while the keyword <i>my</i> defines it as a local variable),
and initialize it using the
<a href="http://www.stat.berkeley.edu/~spector/extension/perl/notes/node46.html">diamond operator</a>.
Long story short, this operator reads from the standard input (as long as you
don't pass any parameters when executing the program, more on this later).
]],
    par [[
Line 7 deserves a special paragraph.  Here I'm using the inverted <i>if</i>
syntax (which is a great feature that most languages lack), but don't get
fooled by it.  It could be written as
]],
    code [[
<b>if</b>(<b>$str</b> =~ <b>m/g w/</b>) {
    <b>print</b> <b>$str</b>;
}
]],
    par [[
but I find the inverted syntax much clearer and easier to read.  The =~
operator is used to apply regular expressions.  It is a binary operator, where
the left-hand side is a string or a variable containing a string, and the
right-hand side is a regex operator (in this case, the <i>m//</i> operator).
The syntax to match a string against a regular expression is
]],
    code [[
string =~ <b>m/regex/</b>;
]],
    par [[
Using some of
<a href="http://www.perlmonks.org/?node_id=431511">perl's magic</a>, we could
rewrite our example as
]],
    code [[
<b>$_</b> = <b>&lt;&gt;</b>;
<b>print</b> <b>if</b> <b>m/g w/</b>;
]],
    par [[
Now things start to get interesting!  I decided to go light and present the
omnipotent <i>$_</i> variable explicitly.  <i>$_</i> is a special (a.k.a.
magic) variable in perl, which is used as the default value of many functions.
Two examples here are print and the match operator.
]],
    par [[
One last thing before I delegate the rest of this topic to the next post: the
diamond operator can be used with a loop to read all the lines from the input:
]],
    code [[
<b>while</b>(&lt;&gt;) {
    <b>print</b>;
}
]],
    par [[
Here, <i>&lt;&gt;</i> causes one line from the input to be read and stored on
<i>$_</i>.  Then, inside the body of the loop, print is called without
arguments, causing it to use our old friend <i>$_</i>.  Input, when using the
diamond operator, can be one of two things.  If the program is called with no
arguments, input is <i>stdin</i>.  If file names are passed as arguments, the
input is the content of these files, read sequentially from first to last.  The
loop keeps reading until the input ends, which means reading until an
<i>EOF</i> character on <i>stdin</i> or reading all the files.
Congratulations!  You have just implemented <i>cat</i>.
]],
    par [[
Coming next: <em>actually</em> increasing productivity.
]],
}

return {
    title = "perl is beautiful",
    date  = { "1349144280", "2012-10-02T02:18:00" },
    tags = { "programming", "perl" },
    description = description,
    content = content,
}
