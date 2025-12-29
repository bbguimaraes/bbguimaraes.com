local data_dir <const> = require "lib.data_dir"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local all_tags <const> = util.set:new()

local function process_item(_, t)
    all_tags:union(t.tags)
end

local function year_list(_, t)
    local k <const>, v <const> = table.unpack(t)
    return lines {
        html(k),
        ul(util.imap(function(_, x)
            return link {
                href = x.id .. ".html",
                content = x.title,
            }
        end, v))
    }
end

local function tag_link(_, x)
    return link {
        href = string.format("tags/%s.html", x:gsub(" ", "-")),
        content = x,
    }
end

local d <const> = data_dir.new(var, "blog")
local files <const> = d:load()
util.ieach(process_item, files)
d:generate_pages(files)

local by_year <const> = util.igroup_by_sorted(
    files,
    function(_, x) return x.timestamp[2]:match("^%d+") end)

return include "master.lua" {
    title = "iffalse",
    css = {"/main.css", "blog.css"},
    body_class = "w80",
    nav_path = {{nil, "blog"}},
    main = div({class = "blog"}, lines {
        html "<h1>iffalse</h1>",
        html '<p><i>assert("this should not be happening");</i></p>',
        html '<h2 id="posts"><a href="#posts">Posts</a></h2>',
        ul(util.imap(year_list, by_year)),
        h2_link { "tags", "Tags" },
        tag(
            "p", {class = "tags"},
            lines(util.imap(tag_link, util.sorted(all_tags:values())))),
    }),
}
