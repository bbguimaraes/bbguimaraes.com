local util <const> = require "lib.util"

local buffer <const> = {}
buffer.__name = "buffer"
buffer.__index = buffer

function buffer:new()
    local ret <const> = setmetatable({}, self)
    return ret
end

function buffer:clear()
    util.iclear(self)
end

function buffer:output()
    return table.concat(self)
end

function buffer:write(...)
    for _, x in ipairs{...} do
        table.insert(self, x)
    end
end

local function make_indent(n)
    return string.rep(" ", 4 * n)
end

--- Writes \p n indentation levels to \p out.
local function write_indent(ctx)
    ctx.out:write(make_indent(ctx.indent))
end

--- Recursively renders \p x.
--- \p x should be either a string, which is written to \p ctx.out directly, or
--- a renderer, which should have a method accepting \p out and a `ctx`
--- argument.
local function render(x, ctx)
    if type(x) == "function" then
        x = x()
    end
    if type(x) == "string" then
        write_indent(ctx)
        if ctx.escape then
            x = ctx.escape(x)
        end
        return ctx.out:write(x)
    end
    return x:render(ctx)
end

local format <const> = {}
format.__index = format
format.__name = "format"

function format:new(t)
    return setmetatable({t = t}, self)
end

function format:render(ctx)
    local dst <const>, src <const>, b <const> = {}, self.t, buffer:new()
    do
        local out <const>, indent <const> = ctx.out, ctx.indent
        local _ <close> = ctx:save("out", "indent", "escape")
        ctx.out = b
        ctx.indent = 0
        ctx.escape = function(x) return x end
        dst[1] = src[1]
        for i = 2, #self.t do
            b:clear()
            render(src[i], ctx)
            dst[i] = b:output()
        end
    end
    render(string.format(table.unpack(dst)), ctx)
end

local concat <const> = {}
concat.__index = concat
concat.__name = "concat"

--- Creates a renderer which writes all elements of \p t in sequence.
function concat:new(t, ...)
    return setmetatable({ t = t, ... }, self)
end

function concat:render(ctx)
    local _ <close> = ctx:save("indent")
    for _, x in ipairs(self.t) do
        render(x, ctx)
        ctx.indent = 0
    end
end

local lines <const> = {}
lines.__index = lines
lines.__name = "lines"

function lines:new(t)
    return setmetatable({ t = t }, self)
end

--- Creates a renderer which writes all elements of \p t with lines in between.
function lines:render(ctx)
    local out <const> = ctx.out
    local d = ""
    for _, x in ipairs(self.t) do
        out:write(d)
        d = "\n"
        render(x, ctx)
    end
end

local indent <const> = {}
indent.__index = indent
indent.__name = "indent"

--- Creates a renderer which writes \p t after \p n indentation levels.
function indent:new(n, t)
    return setmetatable({ n = n, t = t }, self)
end

function indent:render(ctx)
    local _ <close> = ctx:save("indent")
    ctx.indent = ctx.indent + self.n
    return render(self.t, ctx)
end

local indented <const> = {}
indented.__index = indented
indented.__name = "indented"

--- Creates a renderer which writes \p t after \p n indentation levels.
function indented:new(t)
    return setmetatable({ t = t }, self)
end

function indented:render(ctx)
    write_indent(ctx)
    return render(self.t, ctx)
end

local join_lines <const> = {}
join_lines.__index = join_lines
join_lines.__name = "join_lines"

--- Creates a renderer which removes new-line characters.
function join_lines:new(t)
    return setmetatable({ t = t }, self)
end

function join_lines:render(ctx)
    local b <const> = buffer:new()
    do
        local _ <close> = ctx:save("out", "indent")
        ctx.out = b
        ctx.indent = 0
        render(self.t, ctx)
    end
    return render(b:output():gsub("\n$", ""):gsub("\n", " "), ctx)
end

return {
    buffer = buffer,
    render = render,
    make_indent = make_indent,
    write_indent = write_indent,
    format = function(...) return format:new(...) end,
    concat = function(...) return concat:new(...) end,
    lines = function(...) return lines:new(..., "\n") end,
    indent = function(...) return indent:new(...) end,
    indented = function(...) return indented:new(...) end,
    join_lines = function(...) return join_lines:new(...) end,
}
