local file_url <const> = var "file_url"

return link {
    id = "rss-icon",
    href = "/rss.xml",
    content = image {
        src = file_url "rss.png",
        alt = "rss",
    },
}
