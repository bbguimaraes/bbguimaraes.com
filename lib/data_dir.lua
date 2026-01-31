local generate <const> = require "lib.generate"
local path <const> = require "lib.path"

local function no_op() end

local data_dir <const> = {}
data_dir.__name = "data_dir"
data_dir.__index = data_dir

function data_dir:new(var, d, page_gen_path)
    return setmetatable({
        d = d,
        page_path = var("page_path")(d),
        page_gen_path = page_gen_path or var("include_path")(d, "page.lua"),
    }, self)
end

function data_dir:load()
    local ret <const> = {}
    local d <const> = path.join("src", self.d, "data")
    for x in path.each(d) do
        local t <const> = generate.load(path.join(d, x))
        t.id = path.replace_extension(x:gsub("_", "-"), "")
        table.insert(ret, t)
    end
    table.sort(ret, function(x, y) return y.timestamp[1] < x.timestamp[1] end)
    return ret
end

local function resolve_env(env, t)
    if type(env) == "function" then
        return env(t)
    end
    return env
end

local function generate_page(self, env, d, suffix, t)
    local file_name <const> =
        path.join(d, string.format("%s%s.html", t.id, suffix or ""))
    local f <close> = assert(io.open(file_name, "w"))
    return generate.generate(f, self.page_gen_path, t, resolve_env(env, t))
end

local function lang_vars(t, lang)
    local ret <const> = {lang = lang}
    for _, k in ipairs{"short_title", "title", "author", "content"} do
        local v <const> = t[k]
        if v then
            ret[k] = v[lang]
        end
    end
    return ret
end

local function lang_env(env, lang, t, ...)
    local ret <const> = {resolve_env(env, ...)}
    table.insert(ret, lang_vars(t, lang))
    return table.unpack(ret)
end

local function generate_page_lang(self, env, d, lang, t)
    local g <const> = function(...)
        return lang_env(env, lang, t, ...)
    end
    local suffix <const> = (lang == "en") and "" or ("-" .. lang)
    return generate_page(self, g, d, suffix, t)
end

function data_dir:generate_pages(t, env)
    env = env or no_op
    local d <const> = self.page_path
    for _, x in ipairs(t) do
        if x.languages then
            for _, lang in ipairs(x.languages) do
                generate_page_lang(self, env, d, lang, x)
            end
        else
            generate_page(self, env, d, nil, x)
        end
    end
end

return {
    new = function(...) return data_dir:new(...) end,
    lang_vars = lang_vars,
}
