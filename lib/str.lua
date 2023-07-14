local util <const> = require "lib.util"

--- Recursively renders \p x.
--- \p x should be either a string, which is written to \p out directly, or a
--- renderer, which should have a method accepting \p out and an `indent`
--- argument.
local function render(x, out, ...)
    if type(x) == "string" then
        return out:write(x)
    end
    return x:render(out, ...)
end

local function make_indent(n)
    return string.rep(" ", 4 * n)
end

--- Writes \p n indentation levels to \p out.
local function write_indent(out, n)
    out:write(make_indent(n))
end

local concat <const> = {}
concat.__index = concat
concat.__name = "concat"

--- Creates a renderer which writes all elements of \p t in sequence.
function concat:new(t, ...)
    return setmetatable({ t = t, ... }, self)
end

function concat:render(out, indent)
    for _, x in ipairs(self.t) do
        render(x, out, indent)
        indent = 0
    end
end

local lines <const> = {}
lines.__index = lines
lines.__name = "lines"

function lines:new(t)
    return setmetatable({ t = t }, self)
end

--- Creates a renderer which writes all elements of \p t with lines in between.
function lines:render(out, indent)
    local d = ""
    for _, x in ipairs(self.t) do
        out:write(d)
        d = "\n"
        render(x, out, indent)
    end
end

local indent <const> = {}
indent.__index = indent
indent.__name = "indent"

--- Creates a renderer which writes \p t after \p n indentation levels.
function indent:new(n, t)
    return setmetatable({ n = n, t = t }, self)
end

function indent:render(out, indent)
    return render(self.t, out, indent + self.n)
end

return {
    make_indent = make_indent,
    write_indent = write_indent,
    concat = function(...) return concat:new(...) end,
    lines = function(...) return lines:new(..., "\n") end,
    indent = function(...) return indent:new(...) end,
}
