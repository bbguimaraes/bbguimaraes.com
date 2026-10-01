local description <const> = [[“Tudo é céu, tudo é mar; torvo negrume sobre as cabeças borrascoso pesa, e horrenda espessa treva enoita as ondas”. MARÃO, Públio Virgílio. <i>Eneida</i>.]]

local content <const> = {
    blockquote(lines {
        par [[
Tudo é céu, tudo é mar; torvo negrume sobre as cabeças borrascoso pesa, e
horrenda espessa treva enoita as ondas.
]],
        inline_tag("p", nil, "MARÃO, Públio Virgílio.  <i>Eneida</i>."),
    }),
}

return {
    title = "Low-level language",
    timestamp = { 1350874860, "2012-10-22T03:01:00" },
    tags = { "portuguese", "language" },
    description = description,
    content = content,
}
