local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local DIR <const> = "src/blog/data"

local function generate_file(t)
    local file_name <const> =
        path.join("bbguimaraes.com", "blog", t.id .. ".html")
    local f <close> = io.open(file_name, "w")
    generate.generate(f, "src/include/blog/post.lua", t)
end

local function year_list(t)
    return ul(util.map(function(_, v)
        return link {
            href = v.id .. ".html",
            content = v.title,
        }
    end, t))
end

local function tag_link(_, x)
    return link {
        href = string.format("tags/%s.html", x:gsub(" ", "-")),
        content = x,
    }
end

local files <const> = {}
for x in path.each(DIR) do
    local t <const> = generate.load(path.join(DIR, x))
    t.id = x:gsub("%.lua$", ""):gsub("_", "-")
    t.timestamp[1] = math.tointeger(t.timestamp[1])
    table.insert(files, t)
end
table.sort(files, function(x, y) return y.timestamp[1] < x.timestamp[1] end)

local all_tags <const> = util.set:new()
local years <const> = {}
for _, t in ipairs(files) do
    all_tags:union(t.tags)
    local year <const> = t.timestamp[2]:match("^%d+")
    local yt = years[year]
    if not yt then
        yt = {}
        years[year] = yt
    end
    table.insert(yt, t)
    generate_file(t)
end

return include "master.lua" {
    title = "iffalse",
    css = {"/main.css", "blog.css"},
    body_class = "w80",
    nav_path = {{nil, "blog"}},
    main = div({class = "blog"}, lines {
        html "<h1>iffalse</h1>",
        html '<p><i>assert("this should not be happening");</i></p>',
        html '<h2 id="posts"><a href="#posts">Posts</a></h2>',
        ul(util.imap(
            function(k, v) return
                lines { html(v), year_list(years[v]) }
            end,
            util.sorted(
                util.keys(years),
                function(x, y) return y < x end))),
        h2_link { "tags", "Tags" },
        tag(
            "p", {class = "tags"},
            lines(util.imap(tag_link, util.sorted(all_tags:values())))),
    }),
}
