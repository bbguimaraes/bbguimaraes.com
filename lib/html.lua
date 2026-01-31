local str <const> = require "lib.str"
local util <const> = require "lib.util"

local URL_ESCAPES <const> = {
    ["á"] = "%%c3%%a1",
    ["ô"] = "%%c3%%b4",
}

local PLAIN_ATTRS <const> = {"lang"}

local function url_escape(x)
    for k, v in pairs(URL_ESCAPES) do
        x = x:gsub(k, v)
    end
    return x
end

local function is_plain(ctx, name)
    return ctx.plain ~= nil
        and ctx.plain[name]
end

local function plain_attrs(t)
    local ret <const> = {}
    for _, x in ipairs(PLAIN_ATTRS) do
        ret[x] = t[x]
    end
    return ret
end

--- Recursively renders \p x.
--- See \ref str.lua
local function render(x, ctx)
    if type(x) == "function" then
        x = x()
    end
    if type(x) == "string" then
        str.write_indent(ctx)
        return ctx.out:write(x)
    end
    return x:render(ctx)
end

local function render_simple(x)
    if type(x) == "function" then
        x = x()
    end
    return tostring(x)
end

--- Like \ref write_attr, for value-less attributes.
local function write_flag(out, t, k)
    if not t[k] then
        return
    end
    out:write(" ")
    out:write(k)
end

--- Writes an HTML attribute (format: ` ${k}="${t[k]}"`).
local function write_attr_common(out, k, v)
    out:write(" ")
    out:write(k)
    out:write('="')
    out:write(render_simple(v))
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
    write_attr(out, t, "preload")
    write_flag(out, t, "controls")
    write_attr(out, t, "href")
    write_attr(out, t, "src")
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
local function write_generic_open_tag(out, name, attrs)
    out:write("<")
    out:write(name)
    write_generic_attrs(out, attrs)
end

local html_str <const> = {}
html_str.__index = html_str
html_str.__name = "html_str"

function html_str:new(s)
    return setmetatable({ s = s }, self)
end

function html_str:render(ctx)
    ctx.out:write(self.s)
end

local html <const> = {}
html.__index = html
html.__name = "html"

function html:new(s)
    return setmetatable({ s = s }, self)
end

--- Creates a renderer which indents and writes pre-formatted HTML text.
function html:render(ctx)
    str.write_indent(ctx)
    -- indent all but the last (empty) line
    local r <const> = "\n" .. str.make_indent(ctx.indent) .. "%1"
    local s <const> = self.s:gsub("\n(.)", r)
    return ctx.out:write(s)
end

local plain <const> = {}
plain.__index = plain
plain.__name = "plain"

function plain:new(t, x)
    return setmetatable({ t = util.set:new(t), x = x }, self)
end

function plain:render(ctx)
    local _ <close> = ctx:save("plain")
    ctx.plain = self.t
    render(self.x, ctx)
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

function tag:render(ctx)
    local out <const> = ctx.out
    local name <const>, attrs <const>, content <const> =
        self.name, self.attrs, self.content
    str.write_indent(ctx)
    write_open_tag(out, name, attrs)
    if content then
        out:write(">\n")
        do
            local _ <close> = ctx:save("indent")
            ctx.indent = ctx.indent + 1
            render(content, ctx)
        end
        out:write("\n")
        str.write_indent(ctx)
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
function inline_tag:render(ctx)
    local out <const> = ctx.out
    local name <const>, content <const> = self.name, self.content
    if is_plain(ctx, name) then
        return render(content, ctx)
    end
    str.write_indent(ctx)
    write_open_tag(out, name, self.attrs)
    if content then
        out:write(">")
        local _ <close> = ctx:save("indent")
        ctx.indent = 0
        render(content, ctx)
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

function generic_tag:render(ctx)
    local out <const> = ctx.out
    local name <const>, content <const> = self.name, self.content
    str.write_indent(ctx)
    write_generic_open_tag(out, name, self.attrs)
    if content then
        out:write(">\n")
        do
            local _ <close> = ctx:save("indent")
            ctx.indent = ctx.indent + 1
            render(content, ctx)
        end
        out:write("\n")
        str.write_indent(ctx)
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

function generic_inline_tag:render(ctx)
    local out <const> = ctx.out
    local name <const>, content <const> = self.name, self.content
    str.write_indent(ctx)
    write_generic_open_tag(out, name, self.attrs)
    if content then
        out:write(">")
        local _ <close> = ctx:save("indent")
        ctx.indent = 0
        render(content, ctx)
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
function text_tag:render(ctx)
    local out <const> = ctx.out
    local name <const> = self.name
    str.write_indent(ctx)
    write_full_open_tag(out, name, self.attrs)
    out:write("\n")
    do
        local _ <close> = ctx:save("indent")
        ctx.indent = 0
        render(self.content, ctx)
    end
    str.write_indent(ctx)
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

function code_tag:render(ctx)
    local out <const> = ctx.out
    local name <const> = self.name
    str.write_indent(ctx)
    write_full_open_tag(out, name, self.attrs)
    do
        local _ <close> = ctx:save("indent")
        ctx.indent = 0
        render(self.content, ctx)
    end
    str.write_indent(ctx)
    write_close_tag(out, name)
end

--- Shortcut for a simple inline text `<h1>`.
function h1(x) return inline_tag:new("h1", nil, x) end
--- Shortcut for a simple inline text `<h2>`.
function h2(x) return inline_tag:new("h2", nil, x) end
--- Shortcut for a simple inline text `<h3>`.
function h3(x) return inline_tag:new("h3", nil, x) end
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
--- Shortcut for \ref tag for an `<audio>`.
function audio(t) return inline_tag:new("audio", t, "") end
--- Shortcut for \ref tag for an `<hr>`.
function hr(...) return tag:new("hr", ...) end

--- Meta tag containing a property and its value.
function property(k, v)
    return generic_inline_tag:new("meta", {
        {"property", k},
        {"content", v},
    })
end

local function centered_quote(t)
    return div({class = "center-text"}, div({class = "inline-block"}, t))
end

local function quote_footer(author, cite, extra, pre)
    pre = pre or "—"
    assert(author or cite)
    if not cite then
        return text_tag:new(
            "footer", nil, str.concat { pre, " ", author, "\n" })
    end
    local ret <const> = {}
    if author then
        table.insert(ret, str.concat { pre, " ", author, "," })
    else
        table.insert(ret, html:new(pre))
    end
    local c <const> = inline_tag:new("cite", nil, cite)
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

function list:render(ctx)
    local out <const>, i1 <const>, i2 <const> =
        ctx.out, ctx.indent + 1, ctx.indent + 2
    local name <const>, attrs <const> = self.name, self.attrs
    str.write_indent(ctx)
    out:write("<")
    out:write(name)
    write_attr(out, attrs, "start")
    out:write(">\n")
    do
        local _ <close> = ctx:save("indent")
        for _, x in ipairs(attrs) do
            ctx.indent = i1
            str.write_indent(ctx)
            out:write("<li>\n")
            ctx.indent = i2
            render(x, ctx)
            out:write("\n")
            ctx.indent = i1
            str.write_indent(ctx)
            out:write("</li>\n")
        end
    end
    str.write_indent(ctx)
    write_close_tag(out, name)
end

--- Shortcut for a \ref list for a `<ul>`.
function ul(...) return list:new("ul", ...) end
--- Shortcut for a \ref list for an `<ol>`.
function ol(...) return list:new("ol", ...) end
--- Shortcut for \ref tag for a `<li>`.
function li(...) return tag:new("li", nil, ...) end

local link <const> = {}
link.__index = link
link.__name = "link"

--- Creates a renderer for an anchor (`<a>`).
function link:new(t)
    return setmetatable({ t = t }, self)
end

function link:render(ctx)
    local out <const> = ctx.out
    local t <const>, plain <const> = self.t, is_plain(ctx, "a")
    local tag
    if plain then
        local attrs <const> = plain_attrs(t)
        if next(attrs) then
            return render(inline_tag:new("span", attrs, t.content), ctx)
        end
        str.write_indent(ctx)
    else
        str.write_indent(ctx)
        tag = "a"
        out:write("<", tag)
        write_attrs(out, t)
        out:write(">")
    end
    local _ <close> = ctx:save("indent")
    ctx.indent = 0
    render(t.content or "", ctx)
    if tag then
        out:write("</", tag, ">")
    end
end

local image <const> = {}
image.__index = image
image.__name = "image"

--- Creates a renderer for an image (`<img>`).
function image:new(t)
    return setmetatable({ t = t }, self)
end

function image:render(ctx)
    local out <const> = ctx.out
    local t <const> = self.t
    str.write_indent(ctx)
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

function figure:render(ctx)
    local out <const> = ctx.out
    local t <const> = self.t
    local img <const>, content <const>, caption <const> =
        t.image, t.content, t.caption
    str.write_indent(ctx)
    out:write("<figure")
    write_attr(out, t, "id")
    write_attr(out, t, "class")
    write_attr(out, t, "style")
    out:write(">\n")
    do
        local _ <close> = ctx:save("indent")
        ctx.indent = ctx.indent + 1
        if img then
            image:new({src = img}):render(ctx)
            out:write("\n")
        end
        if content then
            content:render(ctx)
            out:write("\n")
        end
        if caption then
            str.write_indent(ctx)
            out:write("<figcaption>")
            ctx.indent = 0
            render(caption, ctx)
            out:write("</figcaption>\n")
        end
    end
    str.write_indent(ctx)
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

function pre:render(ctx)
    local out <const> = ctx.out
    str.write_indent(ctx)
    out:write("<pre>\n")
    out:write(self.content)
    out:write("\n")
    str.write_indent(ctx)
    out:write("</pre>")
end

local code <const> = {}
code.__index = code
code.__name = "code"

--- Like \ref pre, but for `<pre><code>` and removing the trailing new-line.
function code:new(content)
    return setmetatable({ content = content }, self)
end

function code:render(ctx)
    local out <const> = ctx.out
    local s <const> = self.content:gsub("\n$", "")
    str.write_indent(ctx)
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

function video:render(ctx)
    local out <const> = ctx.out
    local t <const> = self.t
    str.write_indent(ctx)
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
    do
        local _ <close> = ctx:save("indent")
        ctx.indent = ctx.indent + 1
        for _, x in ipairs(t.sources) do
            out:write("\n")
            str.write_indent(ctx)
            out:write('<source src="')
            out:write(x)
            out:write('" />\n')
        end
        str.write_indent(ctx)
        out:write("Your browser doesn't support the &lt;video&gt; tag.\n")
    end
    str.write_indent(ctx)
    out:write("</video>")
end

local toc <const> = {}
toc.__index = toc
toc.__name = "toc"

function toc:new()
    return setmetatable({}, self)
end

function toc:add(id, content)
    table.insert(self, {id, content})
    return h2_link { id, content }
end

function toc:add_sub(h, id, content)
    local t <const> = assert(self[#self])
    local l = self[#self][3]
    if not l then
        l = {}
        t[3] = l
    end
    table.insert(l, {id, content})
    if h == 3 then
        return h3_link { id, content }
    else
        return link:new { id = id }
    end
end

local function toc_link(id, content)
    return link:new { href = "#" .. id, content = content }
end

local function toc_render(_, t)
    local id <const>, content <const>, l <const> = table.unpack(t)
    if l then
        return str.lines {
            toc_link(id, content),
            ul(util.imap(toc_render, l)),
        }
    else
        return toc_link(id, content)
    end
end

function toc:render(ctx)
    ul(util.imap(toc_render, self)):render(ctx)
end

local notes <const> = {}
notes.__index = notes
notes.__name = "notes"

function notes:new()
    return setmetatable({}, self)
end

function notes:add(x)
    local n <const> = #self
    table.insert(self, x)
    return link:new {
        href = "#note" .. n,
        content = string.format("<sup>%d</sup>", n),
    }
end

function notes:render(ctx)
    local l <const> = {}
    for i, x in ipairs(self) do
        table.insert(l, tag:new("li", {id = "note" .. (i - 1)}, x))
    end
    tag:new("ol", {start = 0}, str.lines(l)):render(ctx)
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
    url_escape = url_escape,
    str = function(...) return html_str:new(...) end,
    html = function(...) return html:new(...) end,
    plain = function(...) return plain:new(...) end,
    generic_tag = function(...) return generic_tag:new(...) end,
    generic_inline_tag = function(...) return generic_inline_tag:new(...) end,
    tag = function(...) return tag:new(...) end,
    inline_tag = function(...) return inline_tag:new(...) end,
    text_tag = function(...) return text_tag:new(...) end,
    code_tag = function(...) return code_tag:new(...) end,
    h1 = h1,
    h2 = h2,
    h3 = h3,
    par = par,
    div = div,
    main = main,
    blockquote = blockquote,
    property = property,
    centered_quote = centered_quote,
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
    toc = toc,
    notes = notes,
    src_ref = src_ref,
}
