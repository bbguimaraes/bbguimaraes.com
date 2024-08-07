#!/usr/bin/env lua
local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local DIR <const> = path.join("bbguimaraes.com", "files", "places")

local usage, cmd_post

local function main(args)
    local cmd <const> = args[1]
    if cmd == "images" then
        return cmd_images(args)
    elseif cmd == "post" then
        return cmd_post(args)
    else
        usage(args)
    end
end

function usage(args)
    io.stderr:write(string.format([[
Usage: %s CMD [ARG...]

Commands:

    images rm generated [PATTERN]
    post FILE
]], args[0]))
    return 1
end

local images_rm

function cmd_images(args)
    local cmd <const> = args[2]
    if cmd == "rm" then
        return images_rm(args)
    else
        return usage(args)
    end
end

function images_rm(args)
    local cmd <const> = args[3]
    if cmd == "generated" then
        return images_rm_generated(args[4])
    else
        return usage(args)
    end
end

function images_rm_generated(pat)
    pat = pat and pat .. "*_{small,tiny}.jpg"
    local t <const> = {}
    for x in path.each(path.join(DIR, pat)) do
        table.insert(t, x)
    end
    assert(os.execute("rm " .. table.concat(t, " ")))
end

local section_separator, post_section, post_images

function cmd_post(args)
    local path <const> = args[2]
    if not path then
        return usage(args)
    end
    local t <const> = generate.load(path)
    local content <const>, citation <const>, images <const> =
        t.content, t.citation, t.images
    local sep = false
    sep = post_section(content) or sep
    section_separator(sep)
    sep = post_section(citation) or sep
    section_separator(sep)
    post_images(images)
end

function section_separator(s)
    if s then
        io.write("\n---\n\n")
    end
end

local remove_tags

function post_section(s, sep)
    if not s then
        return
    end
    io.write(remove_tags(generate.render(s)), "\n")
    return true
end

local remove_newline

function post_images(t, sep)
    if not t then
        return
    end
    for i, x in ipairs(t) do
        local text <const> = x.text
        if text then
            io.write(string.format(
                "%d: %s\n",
                i - 1, remove_newline(remove_tags(text))))
        end
    end
end

function remove_tags(s)
    return (s
        :gsub("<[abip][^>]*>", "")
        :gsub("</[abip]>", "")
        :gsub("<a[^>]+>", "")
        :gsub("%.  ", ". "))
end

function remove_newline(s)
    return (s
        :gsub("\n", " ")
        :gsub("<br />", " "))
end

os.exit(main(arg))
