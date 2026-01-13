local description <const> = indented(format {
    "%s.",
    inline_tag(
        "span", {lang = "it"},
        "Chiesa della Confraternita di San Gerolamo"),
})

local content <const> = lines {
    par [[
<span lang="it">Chiesa della Confraternita di San Gerolamo</span>.
]],
}

local images <const> = {{
    path = "costigliole_dasti/IMG_20250925_101808.jpg",
}}

return {
    timestamp = { 1758758400, "2025-09-25" },
    title = "Costigliole d'Asti",
    images = images,
    description = description,
    content = content,
}
