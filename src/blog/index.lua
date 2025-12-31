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

local function year_list(_, t)
    local k <const>, v <const> = table.unpack(t)
    return lines {
        html(k),
        ul(util.map(function(_, x)
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

local files <const> = {}
for x in path.each(DIR) do
    local t <const> = generate.load(path.join(DIR, x))
    t.id = x:gsub("%.lua$", ""):gsub("_", "-")
    t.timestamp[1] = math.tointeger(t.timestamp[1])
    table.insert(files, t)
end
table.sort(files, function(x, y) return y.timestamp[1] < x.timestamp[1] end)

local all_tags <const> = util.set:new()
for _, x in ipairs(files) do
    all_tags:union(x.tags)
    generate_file(x)
end

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
