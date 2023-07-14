local description <const> = [[In the last post on the subject, I'll show a couple more perl tricks I use everyday.]]

local content <const> = {
    par [[
In the last post on the subject, I'll show a couple more perl tricks I use
everyday.  I'll touch on some not-so-basic regex concepts here, so feel free to
take a look <a href="http://perldoc.perl.org/perlre.html">here</a> if you don't
know what some of them mean.
]],
    par [[
One thing you can do with the regex operators is using them in list context.
Every operation in perl is done in a
<a href="http://docstore.mik.ua/orelly/perl4/prog/ch02_07.htm">context</a>.
When you assign to a variable, the expression is evaluated in scalar context.
When you assign to an array, you get list context:
]],
    code [[
<b>my</b> <b>@my_array</b> = (<b>2</b>, <b>3</b>, <b>4</b>, <b>5</b>);
]],
    par [[
The <i>@</i> tells perl that your variable will be an array, and the rhs is
thus executed in list context.  Try this:
]],
    code [[
<b>my</b> <b>@my_array</b> = (<b>2</b>, <b>3</b>, <b>4</b>, <b>5</b>);
<b>my</b> <b>$my_var</b> = <b>@my_array</b>;
]],
    par [[
Or, my personal favorite:
]],
    code [[
<b>my</b> <b>@my_array</b> = <b>2..5</b>;
<b>my</b> <b>$my_var</b> = <b>@my_array</b>;
]],
    par [[
Both do the same thing.  When you use an array on the rhs of a scalar
assignment, you get the length of that array, which is what's happening here.
The regex operators also work this way:
]],
    code [[
<b>my</b> <b>$scalar</b> = <b>m/my \$\w+/</b>;
]],
    par [[
will put a boolean value on $scalar if a match was or wasn't found (on
<i>$_</i>, remember).  This will (roughly) find all <i>use</i> directives on
perl code.  Since we are in scalar context, the result will be a boolean, which
will be true if any match occurs.  But try this:
]],
    code [[
<b>my</b> <b>@array</b> = <b>m/my \$(\w+)/g</b>;
]],
    par [[
This will create an array with all the matches found.  There are some new
things here which need a better explanation.  First, the regex modifier
<i>g</i> (from <i>global</i>) will make the regex be applied repeatedly,
instead of stopping on the first result.
]],
    par [[
Since we are on a list context, the result is no longer a boolean, but a list
of all the matches, here meaning the values captured on <i>$1</i>, <i>$2</i>,
and so on. The output for a sample file:
]],
    code [[
<b>use</b> <b>warnings</b>;
<b>use</b> <b>strict</b>;

<b>local</b> <b>$/</b>;
<b>$_</b> = <b><></b>;
<b>$,</b> = <b>"\n"</b>;
<b>$\</b> = <b>"\n"</b>;

<b>my</b> <b>$scalar</b> = <b>m/use (\w+);/</b>;
<b>my</b> <b>@array</b> = <b>m/use (\w+);/g</b>;

<b>print</b> <b>$scalar</b>;
<b>print</b> <b>@array</b>;

<i># Output</i>
<i># 1</i>
<i># warnings</i>
<i># strict</i>
]],
    par [[
Here we can see, when we incept the code through itself, that the variable gets
a value of true, while the array is populated with all the results found.  Just
to show you another nice feature: if we add some parenthesis around <i>use</i>:
]],
    code [[
<b>my</b> <b>@array</b> = <b>m/(use) (\w+);/g</b>;
]],
    par [[
we get four elements on the array.  That's because, for each "pass", all values
from (<i>$1</i>, <i>$2</i>, <i>$3</i>, ...) are stored.
]],
    par [[
Well, I could go on and on writing about all the cool things you can do with
perl, but I'm going to stop here.  If this short introduction did leave you
interested to learn more, there are several sources on-line.  Two I use
constantly are <a href="http://perldoc.perl.org/">perldoc</a> and
<a href="http://docstore.mik.ua/orelly/perl4/prog/index.htm">the web version of
Programming Perl</a>.  If you want to learn more about regular expressions, I
highly recommend O'Reilly's
<a href="http://shop.oreilly.com/product/9780596528126.do">Mastering Regular
Expressions</a> (but please, don't buy the Brazilian Portuguese translation,
just don't).
]],
    par [[
And as a last note, if you are a vim user, here's something really useful.  You
can select some text (using <i>v</i>, <i>V</i> or <i>ctrl-v</i>) and press
<i>:</i>.  You will automatically get a filter for the selected text.  From
there, you can type <i>w !</i> (note the space), which will write the selected
text to the standard input of the command.  Combining all this with what we
learned, we can, for example, use the regex to find python functions, on a
single vim command:
]],
    code [[
:'<,'>w !perl -ne <b>'print if m/^\s*def \w+/'</b>
]],
    par [[
And get a listing of the functions inside the selected text.  Or you can do
some bizarre things, like sending the output to a file, or changing the name of
the functions, changing indentation...  Your sanity is the limit.
]],
}

return {
    title = "perl is beautiful - part 3",
    date  = { "1350955500", "2012-10-23T01:25:00" },
    tags = { "programming", "perl" },
    description = description,
    content = content,
}
