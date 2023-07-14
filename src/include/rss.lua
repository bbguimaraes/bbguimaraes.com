local date <const> = var "date"

local attrs <const> = {
    {"version", "2.0"},
    {"xmlns:atom", "http://www.w3.org/2005/Atom"},
}

local header <const> = [[
<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE rss [
<!ELEMENT rss (channel)>
<!ELEMENT channel (title, link, atom:link, description, language, pubDate, lastBuildDate, docs, generator, item*)>
<!ELEMENT title (#PCDATA|span)*>
<!ELEMENT link (#PCDATA)>
<!ELEMENT atom:link EMPTY>
<!ELEMENT description ANY>
<!ELEMENT language (#PCDATA)>
<!ELEMENT pubDate (#PCDATA)>
<!ELEMENT lastBuildDate (#PCDATA)>
<!ELEMENT docs (#PCDATA)>
<!ELEMENT generator (#PCDATA)>
<!ELEMENT guid (#PCDATA)>
<!ELEMENT category (#PCDATA)>
<!ELEMENT a (#PCDATA|code)*>
<!ELEMENT code (#PCDATA)>
<!ELEMENT i (#PCDATA)>
<!ELEMENT p (#PCDATA|i|span)*>
<!ELEMENT span (#PCDATA)>
<!ELEMENT item (title, link, guid, pubDate, category+, description)>
<!ATTLIST rss version CDATA #REQUIRED xmlns:atom CDATA #REQUIRED>
<!ATTLIST atom:link href CDATA #REQUIRED rel CDATA #REQUIRED type CDATA #REQUIRED>
<!ATTLIST a href CDATA #REQUIRED>
<!ATTLIST i lang CDATA #IMPLIED>
<!ATTLIST span lang CDATA #IMPLIED>
]>]]

local channel = html(string.format([[
<title>iffalse</title>
<link>https://bbguimaraes.com/blog</link>
<atom:link href="https://bbguimaraes.com/blog/rss.xml" rel="self" type="application/rss+xml" />
<description>assert("this should not be happening");</description>
<language>en-us</language>
<pubDate>%s</pubDate>
<lastBuildDate>%s</lastBuildDate>
<docs>http://www.rssboard.org/rss-specification</docs>
<generator>vim</generator>]], date, date))

local items <const> = {}
for _, x in ipairs(var("posts")) do
    local desc <const> = x.description
    local url <const> = string.format(
        "https://bbguimaraes.com/%s",
        x.file:gsub("%.lua$", ".html"))
    local l <const> = {}
    table.insert(l, inline_tag("title", nil, x.short_title or x.title))
    table.insert(l, inline_tag("link", nil, url))
    table.insert(l, inline_tag("guid", nil, url))
    table.insert(l,
        inline_tag("pubDate", nil,
            os.date("!%a, %d %b %Y %H:%M:%S %Z", x.timestamp)))
    for _, x in ipairs(x.tags or {}) do
        table.insert(l, inline_tag("category", nil, x))
    end
    if desc then
        table.insert(l, inline_tag("description", nil, desc))
    else
        table.insert(l, html "<description />")
    end
    table.insert(items, tag("item", nil, lines(l)))
end

return lines {
    header,
    generic_tag(
        "rss", attrs,
        tag("channel", nil, lines { channel, table.unpack(items) })),
}
