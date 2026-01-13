local description <const> = [[One of the greatest advantages of using a Unix system is its openness and intelligibility: it rewards users who invest time into knowing and exploring its design.  Just going about daily life using your computer offers the opportunity to learn about technical concepts that are elegant and (you could say) beautiful, not to mention extremely useful and applicable in many situations, personal as well as professional — though sadly this type of knowledge is not as common as it should be.  Well, that is why this blog exists.]]

local toc <const> = toc:new()

local content <const> = {
    tag("aside", {class = "toc"}, lines {
        html "<i>Contents</i>",
        toc,
    }),
    par [[
One of the greatest advantages of using a Unix system is its openness and
intelligibility: it rewards users who invest time into knowing and exploring its
design.  Just going about daily life using your computer offers the opportunity
to learn about technical concepts that are elegant and (you could say)
beautiful, not to mention extremely useful and applicable in many situations,
personal as well as professional — though sadly this type of knowledge is not as
common as it should be.  Well, that is why this blog exists.
]],
    toc:add("proc-pid-exe", "/proc/$pid/exe"),
    par [[
This first case came about when I upgraded some operating system packages.
Apparently, some version mismatch between the <code>tmux</code> server and
client caused all new operations to fail:
]],
    code [[
$ tmux attach
open terminal failed: not a terminal
]],
    par(format {
        [[
Since I was not in the mood to restart all my sessions at that time, my first
thought was to downgrade the package.  Unfortunately, it was no longer in the
<code>pacman</code> cache.  Then came an epiphany: among the many useful files
in the
%s
file system is <code>exe</code>, which is (or manifests itself to use space as)
a symbolic link to the executable file which was used to start a particular
process:
]],
        link {
            href = "https://man7.org/linux/man-pages/man5/proc.5.html",
            content = "<code>proc(5)</code>",
        },
    }),
    code [[
$ ls -l /proc/self/exe
lrwxrwxrwx 1 bbguimaraes users 0 Jan 12 21:04 /proc/self/exe -> /usr/bin/ls
]],
    par [[
Files in Unix operating systems have a reference count, meaning they are only
deleted when they are no longer reachable.  Uninstalling the older version of
the <code>tmux</code> package eliminated all references <em>in the file
system</em>, but the file still exists since it is referenced by the process
table, and can be named using the <code>proc</code> file (this is why it is not
exactly a symbolic link, which only refer to other paths):
]],
    code [[
$ ls -l /proc/$(pgrep --oldest tmux)/exe
lrwxrwxrwx 1 bbguimaraes users 0 Jan 10 16:28 /proc/1390/exe -> '/usr/bin/tmux (deleted)'
]],
    par [[
Here <code>(deleted)</code> means there are no longer file system references to
the file.  But since we can name the file, we can use that just as any other
file path, including to start new processes:
]],
    code [[
$ /proc/$(pgrep --oldest tmux)/exe new-session …
]],
    par [[
This enabled me to keep using my existing <code>tmux</code> sessions without
having to restart the server just because of a package update.  This technique
is not perfect, of course.  It worked because the only incompatibility was
between the two main executable files: things would be different if any other
incompatibility existed between the two versions (and maybe there is, and I have
not run into it yet).
]],
    toc:add("ptrace", "ptrace"),
    par(format {
        [[
This second case came from the need to add a new configuration variable to my
<code>.bash_profile</code>.  The specific situation is not terribly important,
but I needed this new variable to be propagated to my window manager
(%s) so that it would be set when a
specific graphical program was started.  It has already been established that I
do not like to stop everything I am doing just to restart some piece of
software, and the idea of recreating my entire graphical session was very
unappealing.
]],
        link {
            href = "https://i3wm.org",
            content = "<code>i3</code>",
        },
    }),
    par(format {
        [[
Unix systems have an interface through which a process can examine another:
%s.
The obvious case where this is useful is a debugger, and this is the system call
GDB and friends use to manipulate other processes.  While in most cases a
debugger is used to start that process as a child, inspect its running state,
and pause/resume execution, the interface allows much more.
]],
        link {
            href = "https://man7.org/linux/man-pages/man2/ptrace.2.html",
            content = "<code>ptrace(2)</code>",
        },
    }),
    par [[
First, the attached process does not have to necessarily be a child (though a
specific capability, <code>CAP_SYS_PTRACE</code> is required for this, for
security reasons).  For example, starting <code>gdb</code> with the
<code>--pid</code> argument will attach to an existing process:
]],
    code [[
# gdb --pid 1000
Attaching to process 1000
Reading symbols from /usr/bin/sleep...

(No debugging symbols found in /usr/bin/sleep)
0x00007f641da9318e in ?? () from /usr/lib/libc.so.6
(gdb)
]],
    par [[
The entire execution context is at the mercy of the controlling process, which
can choose to alter it in any way.  This is how the <i>break</i>,
<i>continue</i>, etc. commands are implemented in debuggers: they alter the code
itself being executed.  If you have ever used the <code>print</code> command in
GDB to print the result not of an expression, but of some non-trivial piece of
code, this is also what is happening.  Since it actually executes code in the
child's context, those types of commands can be used to <em>alter</em> the state
of the process (now you can see why <code>ptrace</code> is protected by a
capability).
]],
    par [[
Armed with this knowledge, we can go back to <code>i3</code> and use
<code>gdb</code> to politely coerce it to change its environment while it is
being executed:
]],
    code [[
# gdb --pid $(pgrep --oldest i3)
…
(gdb) print (void)putenv("GTK_THEME=Adwaita:dark")
(gdb) detach
]],
    toc:add("environment", "environment"),
    par(format {
        [[
Those who know <code>proc</code> might be tempted to look at the
<code>environ</code> file to verify that the environment was indeed changed by
%s,
but that will not work: that file reflects the state as it looked when the
program began execution, and is not affected by the addition of new variables.
This can be verified with a simple C program:
]],
        link {
            href = "https://man7.org/linux/man-pages/man3/putenv.3.html",
            content = "<code>putenv(3)</code>",
        },
    }),
    code [[
<b>#define</b> _POSIX_C_SOURCE 200112L
<b>#include</b> &lt;stdio.h&gt;
<b>#include</b> &lt;stdlib.h&gt;

<b>int</b> main(<b>int</b> argc, <b>char</b> **argv, <b>char</b> **envp) {
    setenv(<b>"test"</b>, <b>"test"</b>, <b>0</b>);
    printf(<b>"%p %p"</b>, *envp, envp);
    while(*++envp);
    printf(<b>" %p\n%p\n"</b>, envp, getenv(<b>"test"</b>));
}

<i>// sample output:</i>
<i>// 0x7ffc423b10e1 0x7ffc423aff38 0x7ffc423b0108</i>
<i>// 0x55f053ee95a5</i>
]],
    tag("aside", nil, par [[
<code>envp</code> is an optional third argument to <code>main</code> supported
by many Unix implementations.  It is equivalent to the <code>environ</code>
global variable specified by POSIX.  The reason it exists in this form is that
both program arguments and the initial environment are placed contiguously in
the same region at the beginning of the program stack (see below, then try
modifying the program above to demonstrate this).
]]),
    par(format {
        [[
As can be seen from the sample output (note that, because of
%s,
the specific addresses will change from execution to execution), the initial
environment and the new variable added by
%s
are placed in completely different memory regions.  We can verify that those
are, respectively, the program stack and the heap by inspecting yet another
<code>proc</code> file:
]],
        link {
            href = "https://en.wikipedia.org/wiki/Address_space_layout_randomization",
            content = "ASLR",
        },
        link {
            href = "https://man7.org/linux/man-pages/man3/setenv.3.html",
            content = "<code>setenv(3)</code>",
        },
    }),
    code [[
$ grep '7ffc\|55f05' /proc/$(pgrep a.out)/maps | column --table
55f053ee9000-55f053f0a000  rw-p  00000000  00:00  0  [heap]
7ffc42391000-7ffc423b2000  rw-p  00000000  00:00  0  [stack]
]],
}

return {
    title = "The beauty of Unix",
    timestamp = { 1768247441, "2026-01-12T19:50:41" },
    tags = {
        "filesystem", "gdb", "linux", "pacman", "proc", "ptrace", "strace",
        "tmux", "unix",
    },
    description = description,
    content = content,
}
