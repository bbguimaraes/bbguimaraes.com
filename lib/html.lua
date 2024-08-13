local str <const> = require "lib.str"
local util <const> = require "lib.util"

--- Recursively renders \p x.
--- See \ref str.lua
local function render(x, out, indent)
    if type(x) == "string" then
        str.write_indent(out, indent)
        return out:write(x)
    end
    return x:render(out, indent)
end

--- Writes an HTML attribute (format: ` ${k}="${t[k]}"`).
local function write_attr_common(out, k, v)
    out:write(" ")
    out:write(k)
    out:write('="')
    out:write(v)
    out:write('"')
end

--- Writes the attribute \p k from table \t, if it exists.
local function write_attr(out, t, k)
    local v <const> = t[k]
    if not v then
        return
    end
    write_attr_common(out, k, v)
end

--- Writes a fixed and ordered set of attributes from table \p t.
local function write_attrs(out, t)
    if not t then
        return
    end
    write_attr(out, t, "id")
    write_attr(out, t, "name")
    write_attr(out, t, "lang")
    write_attr(out, t, "dir")
    write_attr(out, t, "class")
    write_attr(out, t, "rel")
    write_attr(out, t, "type")
    write_attr(out, t, "title")
    write_attr(out, t, "href")
    write_attr(out, t, "target")
    write_attr(out, t, "start")
    write_attr(out, t, "style")
end

--- Writes each attribute pair in \p t (format: `{{k0 = v0}, {k1 = v1}, ...}`).
local function write_generic_attrs(out, t)
    for _, x in pairs(t) do
        write_attr_common(out, table.unpack(x))
    end
end

--- Auxiliary function to write an opening tag (`<${name} ${attrs...}`).
local function write_open_tag(out, name, attrs)
    out:write("<")
    out:write(name)
    write_attrs(out, attrs)
end

--- Auxiliary function to write an opening tag (`<${name} ${attrs...}>`).
local function write_full_open_tag(out, name, attrs)
    write_open_tag(out, name, attrs)
    out:write(">")
end

--- Auxiliary function to write a closing tag (`</${name}>`)..
local function write_close_tag(out, name)
    out:write("</")
    out:write(name)
    out:write(">")
end

--- Auxiliary function to write a generic opening tag.
local function write_generic_open_tag(out, indent, name, attrs)
    str.write_indent(out, indent)
    out:write("<")
    out:write(name)
    write_generic_attrs(out, attrs)
end

--- Like \ref write_attr, for value-less attributes.
local function write_flag(out, t, k)
    if not t[k] then
        return
    end
    out:write(" ")
    out:write(k)
end

local html <const> = {}
html.__index = html
html.__name = "html"

function html:new(s)
    return setmetatable({ s = s }, self)
end

--- Creates a renderer which indents and writes pre-formatted HTML text.
function html:render(out, indent)
    str.write_indent(out, indent)
    -- indent all but the last (empty) line
    local r <const> = "\n" .. str.make_indent(indent) .. "%1"
    local s <const> = self.s:gsub("\n(.)", r)
    return out:write(s)
end

local tag <const> = {}
tag.__index = tag
tag.__name = "tag"

--- Creates a renderer for a generic HTML tag with name and attributes.
--- Format:
---
---     <${name} ${attrs...}>
---         ${content}
---     </${name}>
function tag:new(name, attrs, content)
    return setmetatable({ name = name, attrs = attrs, content = content }, self)
end

function tag:render(out, indent)
    local name <const>, attrs <const>, content <const> =
        self.name, self.attrs, self.content
    str.write_indent(out, indent)
    write_open_tag(out, name, attrs)
    if content then
        out:write(">\n")
        render(content, out, indent + 1)
        out:write("\n")
        str.write_indent(out, indent)
        write_close_tag(out, name)
    else
        out:write(" />")
    end
end

local inline_tag <const> = {}
inline_tag.__index = inline_tag
inline_tag.__name = "inline_tag"

function inline_tag:new(name, attrs, content)
    return setmetatable({ name = name, attrs = attrs, content = content }, self)
end

--- Like \ref tag, but renders the content inline.
--- Format:
---
---     <${name} ${attrs...}>${content}</${name}>
function inline_tag:render(out, indent)
    local name <const>, content <const> = self.name, self.content
    str.write_indent(out, indent)
    write_open_tag(out, name, self.attrs)
    if content then
        out:write(">")
        render(content, out, 0)
        write_close_tag(out, name)
    else
        out:write(" />")
    end
end

local generic_tag <const> = {}
generic_tag.__index = generic_tag
generic_tag.__name = "generic_tag"

--- Like \ref tag, but takes generic \p args (\ref write_generic_attrs).
function generic_tag:new(name, attrs, content)
    return setmetatable({ name = name, attrs = attrs, content = content }, self)
end

function generic_tag:render(out, indent)
    local name <const>, content <const> = self.name, self.content
    write_generic_open_tag(out, indent, name, self.attrs)
    if content then
        out:write(">\n")
        render(content, out, indent + 1)
        out:write("\n")
        str.write_indent(out, indent)
        write_close_tag(out, name)
    else
        out:write(" />")
    end
end

local generic_inline_tag <const> = {}
generic_inline_tag.__index = generic_inline_tag
generic_inline_tag.__name = "generic_inline_tag"

--- Like \ref generic_tag, but renders the content inline (\ref inline_tag).
function generic_inline_tag:new(name, attrs, content)
    return setmetatable({ name = name, attrs = attrs, content = content }, self)
end

function generic_inline_tag:render(out, indent)
    local name <const>, content <const> = self.name, self.content
    write_generic_open_tag(out, indent, name, self.attrs)
    if content then
        out:write(">")
        render(content, out, 0)
        write_close_tag(out, name)
    else
        out:write(" />")
    end
end

local text_tag <const> = {}
text_tag.__index = text_tag
text_tag.__name = "text_tag"

function text_tag:new(name, attrs, content)
    return setmetatable({ name = name, attrs = attrs, content = content }, self)
end

--- Like \ref tag, but renders the content without indentation.
--- Format:
---
---     <${name} ${attrs...}>
---     ${content}
---     </${name}>
function text_tag:render(out, indent)
    local name <const> = self.name
    str.write_indent(out, indent)
    write_full_open_tag(out, name, self.attrs)
    out:write("\n")
    render(self.content, out, 0)
    str.write_indent(out, indent)
    write_close_tag(out, name)
end

local code_tag <const> = {}
code_tag.__index = code_tag
code_tag.__name = "code_tag"

--- Like \ref text_tag, but without a new-line character at the beginning.
--- Format:
---
---     <${name} ${attrs...}>${content}
---     </${name}>
function code_tag:new(name, attrs, content)
    return setmetatable({ name = name, attrs = attrs, content = content }, self)
end

function code_tag:render(out, indent)
    local name <const> = self.name
    str.write_indent(out, indent)
    write_full_open_tag(out, name, self.attrs)
    render(self.content, out, 0)
    str.write_indent(out, indent)
    write_close_tag(out, name)
end

--- Paragraph tag, renderer as a \ref text_tag.
function par(content) return text_tag:new("p", nil, content) end
--- Shortcut for \ref tag for a `<div>`.
function div(attrs, s) return tag:new("div", attrs, s) end
--- Shortcut for \ref tag for a `<main>`.
function main(attrs, s) return tag:new("main", attrs, s) end
--- Shortcut for \ref tag for a `<blockquote>`.
function blockquote(s) return tag:new("blockquote", nil, s) end
--- Shortcut for \ref blockquote with a `<p>`.
function blockquote_par(s) return blockquote(par(s)) end

local function quote_footer(author, cite, extra)
    assert(author or cite)
    if not cite then
        return text_tag:new(
            "footer", nil, str.concat { "— ", author, "\n" })
    end
    local ret <const> = {}
    if author then
        table.insert(ret, str.concat { "— ", author, "," })
    else
        table.insert(ret, html:new "—")
    end
    local c <const> = tag:new("cite", nil, cite)
    if extra then
        table.insert(ret, str.concat { c, "," })
    else
        table.insert(ret, c)
    end
    if extra then
        if type(extra) == "string" then
            table.insert(ret, html:new(extra))
        else
            table.insert(ret, extra)
        end
    end
    return tag:new("footer", nil, str.lines(ret))
end

local list <const> = {}
list.__index = list
list.__name = "list"

--- Creates a renderer for a list and its element.
function list:new(name, attrs)
    return setmetatable({ name = name, attrs = attrs }, self)
end

function list:render(out, indent)
    local name <const>, attrs <const> = self.name, self.attrs
    local i1 <const>, i2 <const> = indent + 1, indent + 2
    str.write_indent(out, indent)
    out:write("<")
    out:write(name)
    write_attr(out, attrs, "start")
    out:write(">\n")
    for _, x in ipairs(attrs) do
        str.write_indent(out, i1)
        out:write("<li>\n")
        render(x, out, i2)
        out:write("\n")
        str.write_indent(out, i1)
        out:write("</li>\n")
    end
    str.write_indent(out, indent)
    write_close_tag(out, name)
end

--- Shortcut for a \ref list for a `<ul>`.
function ul(...) return list:new("ul", ...) end
--- Shortcut for a \ref list for an `<ol>`.
function ol(...) return list:new("ol", ...) end

local link <const> = {}
link.__index = link
link.__name = "link"

--- Creates a renderer for an anchor (`<a>`).
function link:new(t)
    return setmetatable({ t = t }, self)
end

function link:render(out, indent)
    local t <const> = self.t
    str.write_indent(out, indent)
    out:write("<a")
    write_attrs(out, t)
    out:write(">")
    render(t.content, out, 0)
    out:write("</a>")
end

local image <const> = {}
image.__index = image
image.__name = "image"

--- Creates a renderer for an image (`<img>`).
function image:new(t)
    return setmetatable({ t = t }, self)
end

function image:render(out, indent)
    local t <const> = self.t
    str.write_indent(out, indent)
    out:write("<img")
    write_attr(out, t, "id")
    write_attr(out, t, "class")
    write_attr(out, t, "src")
    write_attr(out, t, "alt")
    write_attr(out, t, "title")
    write_attr(out, t, "width")
    write_attr(out, t, "height")
    write_attr(out, t, "style")
    out:write(" />")
end

local figure <const> = {}
figure.__index = figure
figure.__name = "figure"

--- Creates a renderer for a figure (`<figure>`).
function figure:new(t)
    return setmetatable({ t = t }, self)
end

function figure:render(out, indent)
    local t <const> = self.t
    local img <const>, content <const>, caption <const> =
        t.image, t.content, t.caption
    str.write_indent(out, indent)
    out:write("<figure")
    write_attr(out, t, "id")
    write_attr(out, t, "class")
    write_attr(out, t, "style")
    out:write(">\n")
    indent = indent + 1
    if img then
        image:new({src = img}):render(out, indent)
        out:write("\n")
    end
    if content then
        content:render(out, indent)
        out:write("\n")
    end
    if caption then
        str.write_indent(out, indent)
        out:write("<figcaption>")
        render(caption, out, 0)
        out:write("</figcaption>\n")
    end
    indent = indent - 1
    str.write_indent(out, indent)
    out:write("</figure>")
end

--- Shortcut for an image with a link to itself.
function image_link(t)
    return tag:new("a", { href = t.src }, image:new(t))
end

--- Shortcut for a header with a link to itself.
function header_link(n, t)
    local id <const>, content <const> = table.unpack(t)
    return tag:new(
        "h" .. n, {id = id},
        tag:new("a", { href = "#" .. id }, content))
end

--- Shortcut for a \ref header_link for an `h1`.
function h1_link(...) return header_link(1, ...) end
--- Shortcut for a \ref header_link for an `h2`.
function h2_link(...) return header_link(2, ...) end
--- Shortcut for a \ref header_link for an `h3`.
function h3_link(...) return header_link(3, ...) end

local pre <const> = {}
pre.__index = pre
pre.__name = "pre"

--- Like \ref text_tag, but without a new-line character at the end of content.
function pre:new(content)
    return setmetatable({ content = content }, self)
end

function pre:render(out, indent)
    str.write_indent(out, indent)
    out:write("<pre>\n")
    out:write(self.content)
    out:write("\n")
    str.write_indent(out, indent)
    out:write("</pre>")
end

local code <const> = {}
code.__index = code
code.__name = "code"

--- Like \ref pre, but for `<pre><code>` and removing the trailing new-line.
function code:new(content)
    return setmetatable({ content = content }, self)
end

function code:render(out, indent)
    local s <const> = self.content:gsub("\n$", "")
    str.write_indent(out, indent)
    out:write("<pre><code>")
    out:write(s)
    out:write("</code></pre>")
end

local video <const> = {}
video.__index = video
video.__name = "video"

--- Creates a renderer for a video tag (`<video>`).
function video:new(t)
    return setmetatable({ t = t }, self)
end

function video:render(out, indent)
    local t <const> = self.t
    str.write_indent(out, indent)
    out:write("<video")
    write_flag(out, t, "controls")
    write_flag(out, t, "loop")
    write_attr(out, t, "preload")
    write_attr(out, t, "width")
    write_attr(out, t, "height")
    write_attr(out, t, "class")
    write_attr(out, t, "style")
    write_attr(out, t, "poster")
    out:write(">")
    for _, x in ipairs(t.sources) do
        out:write("\n")
        str.write_indent(out, indent + 1)
        out:write('<source src="')
        out:write(x)
        out:write('" />\n')
    end
    str.write_indent(out, indent + 1)
    out:write("Your browser doesn't support the &lt;video&gt; tag.\n")
    str.write_indent(out, indent)
    out:write("</video>")
end

--- Shortcut for a source reference with `src-ref` and `data-hash`.
--- \ref scripts/urls.py
function src_ref(t)
    local h <const> = t.hash
    local gt <const> = {}
    table.insert(gt, {"class", "src-ref"})
    if h then
        table.insert(gt, {"data-hash", h})
    end
    table.insert(gt, {"href", t.href})
    return generic_inline_tag:new("a", gt, t.name)
end

return {
    html = function(...) return html:new(...) end,
    generic_tag = function(...) return generic_tag:new(...) end,
    tag = function(...) return tag:new(...) end,
    inline_tag = function(...) return inline_tag:new(...) end,
    text_tag = function(...) return text_tag:new(...) end,
    code_tag = function(...) return code_tag:new(...) end,
    par = par,
    div = div,
    main = main,
    blockquote = blockquote,
    quote_footer = quote_footer,
    ul = ul,
    ol = ol,
    link = function(...) return link:new(...) end,
    image = function(...) return image:new(...) end,
    figure = function(...) return figure:new(...) end,
    image_link = image_link,
    header_link = header_link,
    pre = function(...) return pre:new(...) end,
    code = function(...) return code:new(...) end,
    video = function(...) return video:new(...) end,
    h1_link = h1_link,
    h2_link = h2_link,
    h3_link = h3_link,
    src_ref = src_ref,
}
