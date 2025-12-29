local description <const> = [[A nubilous but spectacular walk along the Adriatic coast.  Trieste / Opicina / Prosecco / Miramare / Barcola]]

local content <const> = lines {
    par [[
A nubilous but spectacular walk along the Adriatic coast.
]],
    par [[
Trieste / Opicina / Prosecco / Miramare / Barcola
]],
}

local citation <const> = lines {
    "Great king, what end to their efforts will you give?<br />",
    "Antenor could escape through the thick of the Greek army,<br />",
    "and safely enter the Illyrian gulfs, and deep into the realms<br />",
    "of the Liburnians, and pass the founts of Timavus,<br />",
    "from which the river bursts, with a huge mountainous roar,<br />",
    "through nine mouths, and buries the fields under its noisy flood.<br />",
    "Here, nonetheless, he sited the city of Padua, and homes<br />",
    "for Teucrians, and gave the people a name, and hung up<br />",
    "the arms of Troy: now he’s calmly settled, in tranquil peace.<br />",
    "But we, your race, to whom you permit the heights of heaven,<br />",
    "lose our ships (shameful!), betrayed, because of one person’s anger,"
        .. "<br />",
    "and kept far away from the shores of Italy.<br />",
    "Is this the prize for virtue? Is this how you restore our rule?<br />",
    "<br />",
    quote_footer("Publius Vergilius Maro", "Aeneis", "I.241"),
}

local images <const> = {{
    path = "trieste/0.jpg",
}, {
    path = "trieste/1.jpg",
}, {
    path = "trieste/2.jpg",
}, {
    path = "trieste/3.jpg",
}, {
    path = "trieste/4.jpg",
}, {
    path = "trieste/5.jpg",
}, {
    path = "trieste/6.jpg",
}, {
    path = "trieste/7.jpg",
}}

return {
    title = "Trieste",
    timestamp = { 1696896000, "2023-10-10" },
    description = description,
    content = content,
    citation = citation,
    images = images,
    links = {
        map = "relation/179180",
        mastodon = "111466885977291495",
        facebook = "bruno.barcarolguimaraes/posts/pfbid02AKxH7kG9mDqKnaQCg6vqT79riuM4KzZYpbedFCSQQzvJMKjr6UFk99rzyuaXtD6Ml",
        instagram = "C0Cd7EPOJFb",
    },
}
