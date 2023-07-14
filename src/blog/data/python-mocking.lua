local description <const> = [[If you are into unit testing, you probably have been introduced to mocking. And if that is the case, you probably already have been bitten by it. Mocking requires some understanding of code execution, importing and name resolution that most people lack when first encountering such situations. In Python, mocking is a relatively simple process, if you analyze carefully what needs to be done.]]

local content <const> = {
    par [[
If you are into unit testing, you probably have been introduced to mocking.
And if that is the case, you probably already have been bitten by it.  Mocking
requires some understanding of code execution, importing and name resolution
that most people lack when first encountering such situations.  In Python,
mocking is a relatively simple process, if you analyze carefully what needs to
be done.
]],
    par [[
Mocking simply means replacing an object with another.  This is usually done to
avoid instantiating costly systems or to change the behavior of a system.  To
begin with a simple example:
]],
    code [[
<b>def</b> some_function_in_your_code(a):
    <b>if</b> a.do_something():
        <b>return</b> <b>3.14159</b>
    <b>else</b>:
        <b>return</b> <b>6.26318</b>

<b>def</b> some_other_function_in_your_code():
    #<i> ...</i>
    a = create_complicated_object(*thousand_parameters)
    result = some_function_in_your_code(a)
    <i># ...</i>
]],
    par [[
Here we have a function <code>some_function_in_your_code</code> that uses an
object. Somewhere else in your code,
<code>some_other_function_in_your_code</code> creates that object, which is a
complicated process that involves hundreds of operations. If you just want to
test <code>some_function_in_your_code</code>, you shouldn't need to go through
this whole process<sup><a href="#note0">0</a></sup>.
]],
    par [[
To avoid that, we can use mocking.  Notice that all we need to test in
<code>some_function_in_your_code</code> is that the argument passed has a member
called <code>do_something</code> that can be called with no arguments and
returns something that can be converted to <code>bool</code>.  There are many
ways to do that, but to keep things short, I'll skip right to the library I use
most of the times, <code>mock</code>.
]],
    par [[
The main component of the <code>mock</code> library is the <code>Mock</code>
class, which is basically an empty object with a few useful characteristics (be
sure to check the documentation, because they are really useful).  Two of them
are important for this discussion.  First, every time you access an attribute of
a <code>Mock</code> object, another <code>Mock</code> object is created and
assigned to the attribute being accessed.
]],
    code [[
&gt;&gt;&gt; <b>import</b> mock
&gt;&gt;&gt; m = mock.Mock()
&gt;&gt;&gt; <b>print</b>(m)
&lt;Mock id='140095453080976'&gt;
&gt;&gt;&gt; <b>print</b>(<b>id</b>(m.some_attribute))
140095453131664
&gt;&gt;&gt; <b>print</b>(m.some_attribute)
&lt;Mock name='mock.some_attribute' id='140095453131664'&gt;
&gt;&gt;&gt; <b>print</b>(<b>id</b>(m.some_attribute))
140095453131664
]],
    par [[
As you can see, when we tried to access some_attribute, a <code>Mock</code>
object was created for us. We could do it by hand with a single line of code,
but it makes the code easier, shorter and cleaner.
]],
    par [[
The other feature of <code>Mock</code> objects is the <code>return_value</code>
attribute.  Whatever is contained in this attribute gets returned when the
object is called as a function object<sup><a href="#note1">1</a></sup>.
]],
    code [[
&gt;&gt;&gt; <b>import</b> mock
&gt;&gt;&gt; m = mock.Mock()
&gt;&gt;&gt; m.return_value = <b>'the return value'</b>
&gt;&gt;&gt; m()
'the return value'
]],
    par [[
Using these two techniques, we can now test our function:
]],
    code [[
<b>import</b> mock

<b>def</b> your_test():
    a = mock.Mock()
    a.do_something.return_value = <b>True</b>
    <b>if</b> some_function_in_your_code(a) != <b>3.14159</b>:
        <b>raise</b> <b>Exception</b>(<b>'return wasn't 3.14159.'</b>)
    a.do_something.return_value = <b>False</b>
    <b>if</b> some_function_in_your_code(a) != <b>6.28318</b>:
        <b>raise</b> <b>Exception</b>(<b>'return wasn't 6.28318.'</b>)
]],
    par [[
Let's break that down.  We first create a <code>Mock</code> object to represent
the argument passed to the function.  The next line takes care of the two things
we need to test the function: the <code>do_something</code> attribute and its
return value.  Then, all we have to do is call the function, passing the mocked
argument, and check the return value.  After that, the process is repeated, this
time with a different return value.
]],
    h2_link { "that-was-the-easy-part", "That was the easy part" },
    par [[
This first section was easy, nothing you couldn't find out with a quick search
on the internet.  But the real world is not that pretty (at least mine isn't).
The trickiest situation is when you have to change the behavior of something
inside a function, but you don't <i>pass</i> that something as an argument.
Suppose we have this:
]],
    code [[
<i># some_file.py</i>
<b>import</b> random

<b>def</b> f():
    <b>if</b> random.random() &lt; <b>0.5</b>:
        <b>return</b> <b>3.14159</b>
    <b>else</b>:
        <b>return</b> <b>6.28318</b>
]],
    par [[
How can you test that function if the value tested is conjured from oblivion in
the middle of the function?  Fear not, you can actually do it.  The trick here
is to mock the <code>random</code> function from the <code>random</code> module
before the first line of <code>f</code> is executed.  Let's start with this
simple example, just to get the basic idea:
]],
    code [[
&gt;&gt;&gt; <b>import</b> random
&gt;&gt;&gt; random.random()
0.5212285734499994
&gt;&gt;&gt; random.random()
0.40492920488281725
&gt;&gt;&gt; <b>import</b> mock
&gt;&gt;&gt; random.random = mock.Mock(return_value=<b>0.5</b>)
&gt;&gt;&gt; random.random()
0.5
]],
    par [[
This seems pretty simple.  But here is where everybody gets lost:
]],
    code [[
&gt;&gt;&gt; <b>import</b> random
&gt;&gt;&gt; <b>import</b> mock
&gt;&gt;&gt; random.random = mock.Mock(return_value=<b>0.5</b>)
&gt;&gt;&gt; <b>import</b> some_file
&gt;&gt;&gt; some_file.f() == <b>6.28318</b> <b>or</b> <b>raise</b> ThisShouldNotBeHappeningException()
]],
    par [[
This may not explode the first time, but you have a 50% chance of getting an
exception.  To see why, you can put a <code>print random.random</code> inside
<code>f</code> and see that the mock didn't work.  To understand why, we have to
dig a little deeper.
]],
    h2_link { "import", "Import" },
    par [[
What happens when you run <code>import random</code>? You can watch
<a href="http://pyvideo.org/video/1707/how-import-works">this video</a> to know
exactly what.  Or you can just continue reading to get a summary.  Or both.
Anyway:
]],
    code [[
&gt;&gt;&gt; <b>locals</b>()
{<b>'__builtins__'</b>: &lt;module <b>'__builtin__'</b> (built-in)&gt;, <b>'__name__'</b>: <b>'__main__'</b>, <b>'__doc__'</b>: None, <b>'__package__'</b>: None}
&gt;&gt;&gt; <b>import</b> random
&gt;&gt;&gt; <b>locals</b>()
{<b>'__builtins__'</b>: &lt;module <b>'__builtin__'</b> (built-in)&gt;, <b>'__name__'</b>: <b>'__main__'</b>, <b>'random'</b>: &lt;module <b>'random'</b> from <b>'/usr/lib/python2.7/random.pyc'</b>&gt;, <b>'__doc__'</b>: None, <b>'__package__'</b>: None}
]],
    par [[
In Python, <code>locals</code> is a built-in function that returns the local
variables accessible on the current state of execution (don't believe me, run
<code>print(__builtins__.locals)</code>). When you execute <code>import
random</code>, the interpreter does its magic to find the module and load it,
but more importantly, it creates an item called <code>"random"</code> in the
current namespace referring to the module loaded. The critical part here is
"current namespace".  Try this:
]],
    code [[
&gt;&gt;&gt; <b>def</b> f(): <b>print</b>(<b>locals</b>())
&gt;&gt;&gt; <b>import</b> random
&gt;&gt;&gt; f()
{}
]],
    par [[
Here, importing random didn't affect the namespace of <code>f</code>.  The same
thing applies to namespaces of other modules.  Our example fails because the
namespace in the <code>some_file</code> module is different than the namespace
where we run our tests.  To change the namespace of <code>some_file</code>, we
have to do it explicitly:
]],
    code [[
&gt;&gt;&gt; <b>import</b> some_file
&gt;&gt;&gt; some_file.random.random = <b>lambda</b>: <b>0.5</b>
&gt;&gt;&gt; some_file.f() == <b>6.28318</b> <b>or</b> <b>raise</b> ThisShouldNotBeHappeningException()
]],
    par [[
You can run that many times if you don't trust me, but that will always succeed.
And it does because we now are changing the correct namespace.  You can check it
by putting a <code>print(random.random)</code> in <code>f</code> again.
]],
    h2_link { "being-nice", "Being nice" },
    par [[
Now you know how to mock, but there is something I must say before you leave.
Always, always, ALWAYS restore any mock you do.  Seriously.  Even if you're
sure no one will use the mocked attribute.  You don't want to loose an entire
day of work just to find out that the problem was an undone mock.
]],
    par [[
And doing it is so simple: store the original value in a variable and restore
it after the operation.  I like to do it as soon as the operation is complete,
before anything else is executed, but you don't need to, if you're not
paranoid.  Just to clear any doubt, here is exactly how to do it:
]],
    code [[
&gt;&gt;&gt; <b>import</b> random
&gt;&gt;&gt; original_random = random.random
&gt;&gt;&gt; random.random = <b>lambda</b>: <b>0.5</b>
&gt;&gt;&gt; <i># do something</i>
&gt;&gt;&gt; random.random = original_random
]],
    par [[
Now you have no excuse.  Better yet, you can use another feature of the
<code>mock</code> library called <code>patch</code>.  But that would be an
extension to an already long post.  Maybe I'll cover it in the future.  Anyway,
happy mocking!
]],
    h2_link { "notes", "Notes" },
    [[
            <ol>
                <li id="note0">
                    <p>
You shouldn't have complicated processes that involve hundreds of operations
anyway, but that is another problem.
                    </p>
                </li>
                <li id="note1">
                    <p>
Curious to know what happens when you access <code>return_value</code> without
setting it first?  No?  Well, I'll show you anyway:
                    </p>
                    <pre><code>&gt;&gt;&gt; <b>import</b> mock
&gt;&gt;&gt; m = mock.Mock()
&gt;&gt;&gt; m.return_value
&lt;Mock name='mock()' id='140095453168080'&gt;</code></pre>
                    <p>
Since we didn't set it, we get the default behavior of <code>__setattr__</code>,
which is to create another <code>Mock</code>.
                    </p>
                </li>
            </ol>]],
}

return {
    title = "Python mocking",
    date  = { "1368299820", "2013-05-11T19:17:00" },
    tags = {
        "best practices", "programming", "python", "coding style", "mock",
    },
    description = description,
    content = content,
}
