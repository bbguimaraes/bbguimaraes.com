local description <const> = [[This is a tale of debugging.  That fine art of digging the darkest corners of a computer system to solve whatever problem is haunting it.  This particular story is about python's package manager, pip.]]

local content <const> = {
    par [[
This is a tale of debugging.  That fine art of digging the darkest corners of a
computer system to solve whatever problem is haunting it.  This particular
story is about python's package manager, pip.
]],
    par [[
Where I work, we have a server where we store all python packages used in
development and production.  A package "cache" or "proxy".  The idea is similar
to a http proxy: we don't have to hit PyPi for each package query and install. 
That saves time, as local connections are much faster, both regarding latency
and throughput, and bandwidth, as no packet has to leave our lan.
]],
    par [[
One day, all of a sudden, our testing and production servers started taking a
long time to run a simple package update.  And when I say "a long time", I mean
taking more than ten minutes to run a simple `pip install --update` with
roughly fifty packages on a requirements.txt file.  That is a ridiculously long
time.  That would be crazy slow even if we were hitting the wan, but on a lan,
that is just absurd.  So, clearly, something fishy was going on.
]],
    h2_link { "debugging-begins", "Debugging begins" },
    par [[
Step one when debugging an issue: figure out what changed.  I thought long and
hard (harder than longer, I must admit) about it, but couldn't think of
anything I or anyone else had changed on these machines recently.  So I
advanced to step two: getting a small, reproducible test.
]],
    par [[
In this case, the test can be reduced to a simple command line execution:
]],
    code [[
$ pip install -Ur requirements.txt
]],
    par [[
This is a standard pip requirements file, with the standard options to prefer
our internal server over the official PyPi server:
]],
    code [[
$ head -2 requirements.txt
--index-url=http://pypi.example.com/simple/
--extra-index-url=http://pypi.python.org/simple/
]],
    par [[
Here and in the next examples, I'll substitute the real domains for our servers
for fake ones.  Anyway, running that one simple command was all that was needed
to test the strange behavior.  On my personal development machine, that
took quite a while:
]],
    code [[
$ time pip install -Ur requirement.txt &> /dev/null
real    0m41.280s
user    0m3.557s
sys     0m0.100s
]],
    par [[
Even more interestingly, this was way less time than we were seeing on the
servers:
]],
    code [[
$ time pip install -Ur requirement.txt &> /dev/null
real    13m19.752s
user    0m1.031s
sys     0m0.184s
]],
    h2_link { "on-the-server", "On the server" },
    par [[
The three main servers affected by this issue (the ones I spend most time in)
were our buildbot (i.e. continuous integration), staging and production
servers.  I decided the first test would be on the buildbot server, as it is
the same server where the packages are hosted.  That way, I can exclude many
external factors that could be affecting the traffic.
]],
    par [[
So I fired my favorite tool: the amazing strace.  If you don't know it, stop
everything and go take a look at `strace(1)`.  Since I know most people won't,
here's a quick introduction: strace execve(2)'s your command, but sets up hooks
to display every system call it executes, along with arguments, return values
and everything.  It is an amazing tool to have an overall idea of what a
process is doing.  If you are root (and have CAP_SYS_TRACE), you can even
attach to a running process, which is an amazing way to debug a process that
starts running wild.
]],
    par [[
Using it to run the command:
]],
    code [[
$ strace -r -o strace.txt pip install -Ur requirement.txt
]],
    par [[
The arguments here are `-o strace.txt` to redirect output to a file and the super useful `-r` to output the relative time between each system call, which is perfect to identify the exact system calls slowing down the execution of the command.
]],
    par [[
After the execution was done, looking at the output, I found the culprit. Here is a sample of the log:
]],
    code [[
$ grep -m 1 -B 5 close strace.txt
0.000138 socket(PF_INET, SOCK_STREAM, IPPROTO_TCP) = 4
0.000115 fcntl(4, F_GETFL)         = 0x2 (flags O_RDWR)
0.000092 fcntl(4, F_SETFL, O_RDWR|O_NONBLOCK) = 0
0.000089 connect(4, {sa_family=AF_INET, sin_port=htons(80), sin_addr=inet_addr("23.235.39.223")}, 16) = -1 EINPROGRESS (Operation now in progress)
0.000128 poll([{fd=4, events=POLLOUT}], 1, 15000) = 0 (Timeout)
15.014733 close(4)
]],
    par [[
From this point, my analysis had some flaws that delayed the final conclusion. 
I will explain my line of thought as it happened, maybe you'll find the
mistakes before I get to them.  So, as can be seen in the output, a socket is
opened to communicate with another server, which is normal behavior for pip,
but then closing it takes around fifteen seconds.  Hmm, that is really odd.
]],
    par [[
So I ran the command again and, while it was blocked waiting, I used another
useful command to list the open file descriptors of the process:
]],
    code [[
$ lsof -p $(pgrep pip) | tail -2
pip     19928 django    3u  IPv4 8064331      0t0     TCP pypi.example.com:38804->pypi.example.com:http (CLOSE_WAIT)
pip     19928 django    4u  IPv4 8064359      0t0     TCP pypi.example.com:30470->199.27.76.223:http (SYN_SENT)
]],
    par [[
Here we have two open sockets.  One of them is in the CLOSE_WAIT state.  Anyone
who's ever done socket programming knows this dreaded state, where the local
socket is closed but the remote end doesn't send the FIN packet to terminate
the connection.  A few minutes of tcpdump later, I was convinced that was the
problem: something was preventing the connection from ending and each operation
was waiting for the timeout to close the socket.  That would explain why
closing the socket took so long.
]],
    h2_link { "the-mistakes", "The mistakes" },
    par [[
At this point, I realised my first mistake.  If you take a look at the strace
output again, the remote end of the socket is *not* our server.  Take a look at
the remote address (the `sin_addr` parameter to the `socket` call):
23.235.39.223 is not the ip address of our server, and taking a look at the
rest of the output showed that the address changed over time.
]],
    par [[
There should be no other servers involved, since we explicitly told pip to
fetch packages from our own server.  So I thought: what other server could be
involved here?  So I took a guess:
]],
    code [[
$ dig pypi.python.org | grep -A <b>2</b> <b>'ANSWER SECTION'</b>
;; ANSWER SECTION:
pypi.python.org.        52156   IN      CNAME   python.map.fastly.net.
python.map.fastly.net.  30      IN      A       23.235.46.223
]],
    par [[
Damn... Wait!
]],
    code [[
$ dig pypi.python.org | grep -A <b>2</b> <b>'ANSWER SECTION'</b>
;; ANSWER SECTION:
pypi.python.org.        3575    IN      CNAME   python.map.fastly.net.
python.map.fastly.net.  7       IN      A       23.235.39.223
]],
    par [[
Bingo!  So it was a connection to one of PyPi's servers.  I went back to the
strace output and realised my second mistake.  If you read strace's man page
section for the `-r` option carefully, the delta shown before each line is not
the time each syscall took, but the time between that syscall and the last.  So
the operation that was getting stuck was not `close`, but the previous,
`epoll`.
]],
    par [[
In hindsight, it is obvious.  You can see the indication that the call timed
out.  You can even see the timeout is one of the parameters.  And so the
mystery was solved.  By some unknown reason, pip was trying to make a
connection to PyPi after checking our server.  Since we don't allow that, the
operation hang around until the timeout was reached.  One final test confirmed
our suspicion:
]],
    code [[
$ time pip install -Ur requirement.txt &> /dev/null
real    0m42.981s
user    0m3.720s
sys     0m0.070s
$ sed -ie <b>'s/^--extra-index/#&amp;/'</b> requirements.txt
$ time pip install -Ur requirement.txt &> /dev/null
real    0m1.049s
user    0m0.853s
sys     0m0.057s
]],
    par [[
Removing the extra index option eliminated the issue (and gave us a ~42x speed
up, something you don't see everyday).
]],
    h2_link { "conclusion", "Conclusion" },
    par [[
So, what do we take out of this (unexpectedly long) story?  If you are using a
local package server, don't use <i>--extra-index</i>.  I have no idea why pip
was trying to contact the extra index after finding the package on our server.
The only reason I can think of is it is trying to find a newer version of the
package, but even then, most of our requirements are fixed, i.e. they have
<i>'==${some_version}'</i> appended.
]],
    par [[
Even on my development machine, where pip can reach the remote server, it is
worth it to remove the option.  The time it takes just to reach the server for
each package, even just to receive a "package up-to-date" message, slows down
the operation considerably:
]],
    code [[
$ time pip install -Ur requirement.txt &> /dev/null
real    0m46.816s
user    0m3.853s
sys     0m0.130s
$ sed -ie <b>'s/^--extra-index/#&amp;/'</b> requirements.txt
$ time pip install -Ur requirement.txt &> /dev/null
real    0m1.125s
user    0m0.947s
sys     0m0.053s
]],
    h2_link { "coda", "Coda" },
    par [[
Thank you for making it this far.  I hope this story was entertaining and
hopefully it taught you a thing or two about investigation, debugging and
problem solving.  Take the time to learn the basic tools: ps, lsof, tcpdump,
strace.  I assure you they will be really useful when you encounter this type
of situation.
]],
}

return {
    title = "pip --extra-index",
    date  = { "1418215560", "2014-12-10T12:46:00" },
    tags = {
        "pip", "lsof", "webserver", "debugging", "python", "socket", "strace",
        "grep", "programming", "linux", "man", "unix",
    },
    description = description,
    content = content,
}
