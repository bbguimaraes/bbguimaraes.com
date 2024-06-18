#!/usr/bin/env lua
local generate <const> = require "lib.generate"

local usage, cmd_post

local function main(args)
    local cmd <const> = args[1]
    if cmd == "post" then
        return cmd_post(args)
    else
        usage(args)
    end
end

function usage(args)
    io.stderr:write(string.format([[
Usage: %s CMD [ARG...]

Commands:

    post FILE
]], args[0]))
    return 1
end

function cmd_post(args)
    local path <const> = args[2]
    if not path then
        return usage(args)
    end
    local t <const> = generate.load(path)
    local sep
    for _, k in ipairs{"content", "citation"} do
        local v <const> = t[k]
        if not v then
            goto continue
        end
        if sep then
            io.write("\n", sep, "\n\n")
        end
        sep = "---"
        print(generate.render(v))
        ::continue::
    end
    local images <const> = t.images
    if images then
        if sep then
            io.write("\n", sep, "\n\n")
        end
        for i, image in ipairs(images) do
            local text <const> = image.text
            if text then
                io.write(string.format("%d: %s\n", i - 1, text:gsub("\n", " ")))
            end
        end
    end
end

os.exit(main(arg))
