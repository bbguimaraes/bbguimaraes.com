local description <const> = [[The two principal definitions of the dot product have always seemed incoherent to me.  After trying (and failing) to research this many times, a &lt;a href="https://math.stackexchange.com/a/348744"&gt;math.stackexchange.com question&lt;/a&gt; finally gave an explanation that made sense to me.  Here is my interpretation of it — and trust me, if &lt;em&gt;I&lt;/em&gt; can understand a mathematical concept, so can you.]]

local content <const> = {
    par [[
The two principal definitions of the dot product have always seemed incoherent
to me.  After trying (and failing) to research this many times, a <a
href="https://math.stackexchange.com/a/348744">math.stackexchange.com
question</a> finally gave an explanation that made sense to me.  Here is my
interpretation of it — and trust me, if <em>I</em> can understand a
mathematical concept, so can you.
]],
    par [[
The dot product is a fundamental vector operation in mathematics.  Graphics
programmers are very familiar with it and will tell you <b>everything</b> is a
dot product.  There is some truth to that statement: mathematics, and
geometry/trigonometry in particular, is very self-referential (much like
music).  Concepts can often be found hidden in surprising ways in what appear
to be unrelated areas.
]],
    par [[
Today's topic is certainly one of them.  I've known the dot product for a long
time, but never understood <em>how</em> it could have two seemingly disparate
definitions.  I'd seen purely algebraic proofs, but developing an intuition for
the concepts in the formulae always improves my understanding of them.  And, as
a bonus, once we establish a few definitions (which aren't much more than
restatements of the original formula), the connection between the two
definitions is very clear.
]],
    par [[
To review, the dot (or scalar) product of vectors <b>a</b> and <b>b</b> is:
]],
    image {
        src = "/files/blog/dot_product0.svg",
        alt = "dot product definition",
        class = "math",
    },
    par [[
The key for the connection is expressing the vectors as angles and the dot
product as the subtraction of those angles: let <i>&alpha;</i> and
<i>&beta;</i> be the angles between the <i>x</i> axis (i.e. <b>i</b>) and
<b>a</b> and <b>b</b> respectively.  In two dimensions:
]],
    image {
        src = "/files/blog/dot_product1.svg",
        alt = "dot product in two dimensions",
        class = "math",
    },
    par [[
All that is left is to apply the cosine subtraction formula:
]],
    image {
        src = "/files/blog/dot_product2.svg",
        alt = "dot product as cosine subtraction",
        class = "math",
    },
}

return {
    title = "Dot product as cosine subtraction",
    timestamp = { 1579975440, "2020-01-25T18:04:00" },
    tags = { "math" },
    description = description,
    content = content,
}
