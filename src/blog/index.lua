local generate <const> = require "lib.generate"
local path <const> = require "lib.path"
local util <const> = require "lib.util"

local DIR <const> = "src/blog/data"

local function generate_file(name)
    local file_name <const> = path.join(
        "bbguimaraes.com", "blog", name:gsub("%.lua$", ".html"), nil)
    local f <close> = io.open(file_name, "w")
    generate.generate(
        f, "src/include/blog/post.lua",
        { file = path.join(DIR, name) })
end

local function year_list(t)
    return ul(util.map(function(_, v)
        return link {
            href = v.file:gsub("%.lua$", ".html"),
            content = v.title,
        }
    end, t))
end

local files <const> = {}
local file_names <const> = {}
for x in path.each(DIR) do
    local t <const> = generate.load(path.join(DIR, x))
    t.file = x
    t.timestamp = math.tointeger(t.date[1])
    t.date = t.date[2]
    files[x] = t
    table.insert(file_names, x)
end
table.sort(file_names, function(x, y)
    return files[y].timestamp < files[x].timestamp
end)

local all_tags <const> = {}
local years <const> = {}
for _, x in ipairs(file_names) do
    local t <const> = files[x]
    for _, x in ipairs(t.tags) do
        all_tags[x] = true
    end
    local year <const> = t.date:match("^%d+")
    local yt = years[year]
    if not yt then
        yt = {}
        years[year] = yt
    end
    table.insert(yt, t)
    generate_file(x)
end

return include "master.lua" {
    title = "iffalse",
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
        tag("p", {class = "tags"}, lines(util.imap(function(_, x)
            return link {
                href = string.format("tags/%s.html", x:gsub(" ", "-")),
                content = x,
            }
        end, util.sorted(util.keys(all_tags))))),
    }),
}
