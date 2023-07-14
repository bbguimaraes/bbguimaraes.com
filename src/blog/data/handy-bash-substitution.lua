local description <const> = [[Working on the command line is awesome. But there are times where all the typing gets unwieldy. No one likes to type a long file name a lot of times. Sure, using the up arrow and tab keys can make things faster sometimes, but I'll show you some tricks to make your life easier.]]

local content <const> = {
    par [[
Working on the command line is awesome.  But there are times where  all the
typing gets unwieldy.  No one likes to type a long file name a  lot of times.
Sure, using the up arrow and tab keys can make things  faster sometimes, but
I'll show you some tricks to make your life easier.
]],
    par [[
Let's start with a really common operation.  You download a tarball, extract,
<i>cd</i> and have fun.  Usually, you'd do this:
]],
    code [[
$ wget http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.7.9.tar.bz2
$ tar -xjf linux-3.7.9.tar.bz2
$ cd linux-3.7.9
$ <i># bob's your uncle</i>
]],
    par [[
Using the <i>Tab</i> key, you can save a lot of typing:
]],
    code [[
$ wget http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.7.9.tar.bz2
$ tar -xjf l<i>&lt;TAB&gt;</i>
$ cd l<i>&lt;TAB&gt;</i>
$ <i># bob's your uncle</i>
]],
    par [[
However, this is highly dependent on the contents of your directory, names in
your path and auto-complete configurations.
]],
    par [[
I'm not being picky here.  While testing these commands, I had to press
<i>Tab</i> twice.  First, I had a directory called <i>libs</i>, so it stopped
at <i>li</i>.  Second, I had an episode of the
<a href="http://www.jupiterbroadcasting.com/show/linuxactionshow/">
Linux Action Show</a> in a file called linuxactionshowep248.mp4, so it stopped
at <i>linux</i>.  And, after you decompress the file, it stops at
<i>linux-3.7.9</i>.
]],
    par [[
Also, if your auto-completion isn't smart enough to filter
names that aren't files or directories when you type <i>Tab</i> after <i>cd</i>
and <i>tar</i>, you could have many more conflicts.
]],
    par [[
I don't mean to bash (ha!) on auto-completion, just point you to more efficient
alternatives: bash (get it?) has a nice feature called substitutions.  You may
have come across it before if you ever tried to add an unescaped exclamation
mark (henceforth mentioned using the niftier name "bang"):
]],
    code [[
$ <b>echo</b> <b>"Bang!"</b>
bash: !": event not found
]],
    par [[
Or got surprised by it:
]],
    code [[
$ echo <b>"balrog:!you shall not pass:/nonexistent:/bin/false"</b> &gt;&gt; /etc/passwd
<b>echo</b> "balrog:youtube-dl http://www.youtube.com/watch?v=pLgJ7pk0X-s shall not pass:/nonexistent:/bin/false" &gt;&gt; /tmp/test
$ sleep 3d; grep balrog /etc/passwd
balrog:youtube-dl http://www.youtube.com/watch?v=pLgJ7pk0X-s shall not pass:/nonexistent:/bin/false
]],
    par [[
That is because the bang is used to reference previous commands.  The simplest
is substitution of the last command:
]],
    code [[
$ <b>echo</b> billy
billy
$ !!
echo billy
billy
]],
    par [[
One thing I should mention: to avoid chaos and destruction (or at least inform
you that chaos and destruction have happened) the command with all
substitutions made is printed before its output.  That is the fourth line in
the example, showing that <i>!!</i> was substituted by <i>echo billy</i>.
]],
    par [[
This substitution is simple and needs no explanation, but it raises a question:
what is it useful for?  Have you ever typed a (possibly long) command, just to
get the following message after running it?
]],
    code [[
$ cat /sys/module/fglrx/sections/.gnu.linkonce.t._ZN20OS_COMMON_INTERFACES22cailMicroEngineControlEPv14_MICRO_ENGINE_21_MICRO_ENGINE_ACTION_P28_MICRO_ENGINE_CONTROL_INPUT_P29_MICRO_ENGINE_CONTROL_OUTPUT_
cat: /sys/module/fglrx/sections/.gnu.linkonce.t._ZN20OS_COMMON_INTERFACES22cailMicroEngineControlEPv14_MICRO_ENGINE_21_MICRO_ENGINE_ACTION_P28_MICRO_ENGINE_CONTROL_INPUT_P29_MICRO_ENGINE_CONTROL_OUTPUT_:
Permission denied
]],
    par [[
You can solve this by typing <i>&lt;UP&gt;&lt;HOME&gt;sudo&lt;SPACE&gt;</i> (if
you type <i>&lt;UP&gt;&lt;LEFT&gt;{201}sudo&lt;SPACE&gt;</i>, I will personally
punch you in the face).  But you can save a lot of typing just using
]],
    code [[
$ sudo !!
sudo cat /sys/module/fglrx/sections/.gnu.linkonce.t._ZN20OS_COMMON_INTERFACES22cailMicroEngineControlEPv14_MICRO_ENGINE_21_MICRO_ENGINE_ACTION_P28_MICRO_ENGINE_CONTROL_INPUT_P29_MICRO_ENGINE_CONTROL_OUTPUT_
[sudo] password for billy:
]],
    par [[
Here, <i>!!</i> got substituted by the last command, as you can see on the
echo.  Some other uses I found (which you may not understand if you're not on
the path to <del>enlightenment</del> becoming a bash enthusiast) were:
]],
    code [[
$ cat my_files
file1
file2
file3
$ cat $(!!)
cat $(cat my_files)
contents_of_file1
contents_of_file2
contents_of_file3
$ perl -e <b>'bang your head on the keyboard'</b>
# god only knows
$ <b>echo</b> <b>"!!"</b> &gt; file_to_save_command
$ <i># This could be done by clever use of Ctrl-x Ctrl-e, but</i>
$ <i># sometimes you're in a hurry. That's alright, as long as</i>
$ <i># you <a href="http://tldp.org/LDP/abs/html/escapingsection.html">do it carefully</a>.</i>
]],
    par [[
When <i>!</i> is followed by a number <i>n</i>, it executes the <i>n</i>th
command in the history (which you can check with the <i>history</i> command).
More useful, though, is that, if <i>n</i> is negative, it will execute the last
<i>n</i>th command:
]],
    code [[
$ <b>echo</b> some
some
$ <b>echo</b> thing
thing
$ !-2
echo some
some
$ !-3 other thing
echo some other thing
some other thing
]],
    par [[
Without thinking much, you can discover that <i>!!</i> is just an easier way to
spell <i>!-1</i>.
]],
    par [[
Now, these are useful techniques, but we are just getting started!  Usually,
you don't need the whole command, but just one or a few arguments.  Common
scenario:
]],
    code [[
$ ls ef
son daughter dog
$ <i># oh my, ef is a directory</i>
$ <b>cd</b> ef
]],
    par [[
or how about:
]],
    code [[
$ mv some_directory a_different_name_for_some_directory
$ <b>cd</b> a_different_name_for_some_directory
]],
    par [[
It is very common to address the same file on multiple, successive commands.
You can, again, save some typing:
]],
    code [[
$ ls ef
son daughter dog
$ <i># oh my, ef is a directory</i>
$ <b>cd</b> !$
cd ef
$ mv some_directory a_different_name_for_some_directory
$ <b>cd</b> !$
cd some_directory a_different_name_for_some_directory
]],
    par [[
As you can see, <i>!$</i> is substituted by the last argument of the last
command. If you know your regular expressions, you can make a link with the
"end of line" symbol. But there's more. This is just a nice shortcut to the
more general form <i>!n:m</i>. This means: from the <i>n</i>th, get the
<i>m</i>th argument.
]],
    code [[
$ tar -f my_tar -cz file1 file2 file3
$ du -sh !:2
4.0K    my_tar
$ du -sh !-2:4-6
4.0K    file1
4.0K    file2
4.0K    file3
]],
    par [[
What goes before the colon can be any of the previous substitutions: <i>!!</i>,
<i>!n</i> or <i>!-n</i>.  Note that you can specify a range using <i>:n-m</i>,
which will get substituted by the parameters <i>n</i> to <i>m</i>.  If you need
them in a different order, or some non-contiguous arguments, just use more than
one substitution:
]],
    code [[
$ diff ours theirs
$ <i># gah</i>
$ diff !:2 !:1
diff theirs ours
]],
    par [[
Alright, I guess this is enough information for a single post.  Have fun
playing with The Bash and see you soon for more advanced uses of history
substitution.
]],
    par [[
P.S.: I couldn't leave without some closing notes.
]],
    [[
            <ol>
                <li>
                    <p>
I learned everything shown here from scattered information on the internet.  I
decided to compile them because I never found a document which explained them
in detail AND without burying them on other bash-related commands.
                    </p>
                    <p>
That said, a good reference (not so good for self-learning, but, if you read
the text, you should be okay) is bash's man page.  Search for "Event
Designators" or <i>\!\!</i> (escaping is mandatory):
                    </p>
                    <pre><code>$ man bash
/Event Designators&lt;CR&gt;</code></pre>
                </li>
                <li>
                    <p>
While all this may seem hard to use practically, I recommend you just keep it
in a dark corner of your mind.  I promise you'll start to find places where you
can apply it.  They can be used to write commands quickly, especially several
one-shot commands in a row.  Just don't try forcing the use when it's not
necessary.  After all, they were created to save time.
                    </p>
                </li>
                <li>
                    <p>
If you ever got stabbed by not knowing how the bang works (like the examples I
showed in the beginning), you can avoid getting stabbed again by escaping the
bangs, either with a backslash or single quotes:
                    </p>
                    <pre><code>$ <b>echo</b> Bang\!
Bang!
$ <b>echo</b> <b>'balrog:!you shall not pass:/nonexistent:/bin/false'</b> &gt;&gt; /etc/passwd</code></pre>
                </li>
                <li>
                    <p>
More of a side note, but to get that humongous file name, I discovered a new
(string of) command(s) to get the longest line from a text.
                    </p>
                    <pre><code>$ find /sys/ | awk <b>'{print length, $0;}'</b> | sort -nr | head -n 1</code></pre>
                    <p>
You can probably do the same thing (although it might be a little slower) using
a while loop and another bash trick: while <i>$variable</i> (or
<i>${variable}</i>) will give you the contents of a variable,
<i>${#variable}</i> will give you the length of that content.
                    </p>
                    <pre><code>$ find /sys/ | <b>while</b> <b>read</b> i; <b>do</b> <b>echo</b> <b>"${#i} $i"</b>; <b>done</b> | sort -nr | head -n 1</code></pre>
                    <p>
Apparently, Jethro Tull's Too Old to Rock 'n' Roll, Too Old to Die generates
pretty long file names (the title song is the second only to a really long
cache file name on my file system).
                    </p>
                </li>
            </ol>]],
}

return {
    title = "Handy bash substitution",
    date  = { "1361678760", "2013-02-24T04:06:00" },
    tags = {
        "tar", "awk", "jethro tull", "perl", "wget", "find",
        "bash substitution", "bash expansion", "shell", "programming", "linux",
        "du",
    },
    description = description,
    content = content,
}
