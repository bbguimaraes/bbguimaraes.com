local description <const> = [[Recently, I had I problem with github. I couldn't add SSH keys anymore, the web page would just hang and present me a "Connection reset" error after a few (annoying) minutes. I struggled for a week, but have finally found a solution, which is not the best, but at least I can access github from my machine once again.]]

local content <const> = {
    par [[
Recently, I had I problem with github.  I couldn't add SSH keys anymore, the
web page would just hang and present me a "Connection reset" error after a few
(annoying) minutes.  I struggled for a week, but have finally found a solution,
which is not the best, but at least I can access github from my machine once
again.
]],
    par [[
It all started two weeks ago, when I ran an everyday <i>git push</i>, and got a
little surprise.  It just sat there forever, and I had to <i>SIGTERM</i> it
every time.  What I did after was try to reset my key on github.  I went to the
SSH page and deleted my key, created a new one and tried to add it.
]],
    par [[
Yes I know it was stupid. The right way to do it would be:
]],
    ol {
        "back up my key",
        "create a new one",
        "add it",
        "make absolutely sure it works",
        "remove the old one in github and on the machine",
    },
    par [[
But I didn't, for one simple reason: adding keys has been such a natural
operation, I didn't even think about it.  Replacing a key (which I did a lot of
times when I was learning how public-key encryption works) only takes a few
seconds, and I never had to worry about it.  Until now.
]],
    h2_link { "haystacking", "Haystacking" },
    par [[
I am no ssh expert.  So I turned to github's support.  And I have to say, the
response was really good, fast and to the point.  Sadly, it didn't solve the
problem.  Here is the response:
]],
    [[
            <blockquote>
                <p>
Hi Bruno,
                </p>
                <p>
What size SSH key are you using? We have a known bug where the page will give a
500 error if the SSH key is too large.
                </p>
                <p>
I would recommend using the default size key for now, and hopefully we will
have this bug fixed soon.
                </p>
                <p>
Sorry for the trouble.
                </p>
                <p>
Cheers,
<br />
Steve
                </p>
            </blockquote>]],
    par [[
It turns out the problem wasn't the key size, but you can see Steve gave a
really polite response.  Anyway, I started trying everything to make it work,
but in a week I just couldn't do it.  Then, yesterday, I decided to give the
developer API a try.  I didn't have much hope that it would work, because I had
tried a lot of different things and because I thought the problem was exactly
there.  But I was wrong again.
]],
    par [[
With just a few commands, I was able to add a ssh key to my account and finally
access my repositories.  And, in the process, I discovered a handy command line
utility, so I guess it wasn't all that bad.
]],
    h2_link { "curl-aka-curl", "curl (a.k.a. cURL)" },
    par [[
curl is a program you can use to fetch web pages just as your browser would do.
It is present on most distributions, so you can start right away and run
]],
    code [[
$ curl https://bbguimaraes.com
]],
    par [[
And you'll get the HTML output of the page.  You can use that to access the
github API.  To list all the keys of an account, you'd use
]],
    code [[
$ curl -u bbguimaraes https://api.github.com/user/keys
]],
    par [[
Use the <i>-u</i> option to set the username.  You will be prompted for the
password.  The switch accepts the form <i>-u user:password</i>, but that just
isn't very nice.  You will get back a json output, listing all the keys
registered for your account.  There are several functions on the API, you can
take a look at them on the <a href="http://developer.github.com/">docs
page</a>.
]],
    par [[
But the one that did it for me was the <i>
<a href="http://developer.github.com/v3/users/keys/#create-a-public-key">create
a puclib key</a></i>.  A simple post
]],
    code [[
$ curl \
    -u bbguimaraes \
    -d <b>'{"title": "[...]", "key": "ssh-rsa AAA[...]"}'</b> \
    https://api.github.com/user/keys
]],
    par [[
and, after a week of awful manual syncing of code, I was finally able to use my
beloved github repositories as I always had.  I hope this text can save you
some time if you ever happen to have the same problem.
]],
}

return {
    title = "Problem when adding SSH key on github",
    timestamp = { 1351395660, "2012-10-28T03:41:00" },
    tags = { "curl", "git", "github" },
    description = description,
    content = content,
}
