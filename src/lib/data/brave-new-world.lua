local description <const> = {
    [[
The World State in the Year of Our Ford 632 is perfectly constructed: humans are
produced in laboratories, engineered and conditioned for their societal purpose,
kept young until their death, with free access to drugs and all sorts of
technological amenities.
]],
    [[
Women are infertile or expertly trained in contraceptive rituals, encouraged to
have as many partners as possible, and, if they ever "feel out of sorts",
administered a <i>passion surrogate</i> or <i>pregnancy substitute</i>.
]],
}

local intro <const> = lines {
    blockquote(par "Everybody's happy now.\n"),
    par(description[1]),
    par(description[2]),
}

local content <const> = lines {
    par [[
Life is for pleasure and pleasure is always available.  <i>Everyone belongs to
everyone else</i>, <i>history is bunk</i>, <i>progress is lovely</i>, and so on
go the commanding edicts, instilled from infancy.  Yet, despite the comfort of
their perfect, sanitized life, despite the abundant <i>happiness</i>, citizens
yearn for something else, though they cannot name it.  <i>To be free to be
happy</i>, <i>in your own way</i>.  <i>To feel something strongly</i>.  To <i>do
something much more important</i>, <i>more intense</i>, <i>more violent</i>.
]],
        par [[
Huxley's novel is remarkable in its prophecy &mdash; now more than ever since
its publishing in 1932.  But it is primarily an ode to the human spirit and its
rebellion against the forces that seek to dominate and control it.
]],
    blockquote(lines {
        par "But I don't want comfort.\n",
        par [[
I want God,<br />
I want poetry,<br />
I want real danger,<br />
I want freedom,<br />
I want goodness.<br />
]],
        par "I want sin.\n",
        par [[
[…] I'm claiming the right to be unhappy.  […] I claim them all.
]],
        tag("footer", nil, "— John, the Savage"),
    }),
}

local content_pt <const> = lines {
    blockquote(par "Todos são felizes agora."),
    par [[
O Estado Global no ano 632 do Nosso Ford é perfeitamente construído: humanos são
produzidos em laboratórios, projetados e condicionados ao seu propósito social,
mantidos jovens até sua morte, com livre acesso a drogas e todo tipo de
amenidades tecnológicas.
]],
    par [[
Mulheres são inférteis ou especialistas treinadas em rituais contraceptivos,
encorajadas a terem tantos parceiros quanto possível, e, caso se sintam
"indispostas", administradas um <i>substituto de paixão</i> ou <i>substituto de
gravidez</i>.
]],
    par [[
A vida é para o prazer e o prazer está sempre disponível.  <i>Todos pertencem a
todos</i>, <i>a história é inútil</i>, <i>o progresso é amável</i>, e assim por
diante são os ditos e comandos, instilados desde a infância.  Ainda assim,
apesar do conforto da sua vida perfeita e sanitizadas, apesar da
<i>felicidade</i> abundante, os cidadãos anseiam por algo além, mesmo que não o
possam nomear.  <i>Ser livre para ser feliz</i>, <i>da sua própria forma</i>.
<i>Sentir algo fortemente</i>.  <i>Fazer algo muito mais importante</i>, <i>mais
intenso</i>, <i>mais violento</i>.
]],
        par [[
O romance de Huxley é notável na sua profecia &mdash; mais agora do que já foi
desde sua publicação em 1932.  Mas é primariamente uma ode ao espírito humano e
sua rebeldia contra as forças que buscam dominá-lo e controlá-lo.
]],
    blockquote(lines {
        par "Mas eu não quero conforto.\n",
        par [[
Eu quero Deus,<br />
eu quero poesia,<br />
eu quero perigo real,<br />
eu quero liberdade,<br />
eu quero bondade.<br />
]],
        par "Eu quero pecado.\n",
        par [[
[…] Eu clamo o direito de ser infeliz.  […] Eu clamo todos.
]],
        html "-- John, o Selvagem",
    }),
}

return {
    title = {
        en = "Brave new world",
        pt = "Admirável mundo novo",
    },
    link = "https://www.huxley.net/bnw/index.html",
    cover = "brave_new_world.jpg",
    author = {
        en = "Aldous Leonard Huxley",
        pt = "Aldous Leonard Huxley",
    },
    timestamp = { 1674426382, "2023-01-22T22:26:22" },
    description = table.concat(description, " "),
    intro = intro,
    languages = { "en", "pt" },
    content = {
        en = content,
        pt = content_pt,
    },
}
