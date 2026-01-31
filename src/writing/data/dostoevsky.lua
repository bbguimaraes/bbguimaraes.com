local file_url <const> = var "file_url"

local img <const> = image {
    class = "hor-center float-right",
    alt = "Fyodor Dostoevsky",
    src = file_url("writing", "dostoevsky.jpg"),
}

local description <const> = [[I met Dostoevsky, so to speak, a little more than a year ago. I won't go into how I got to <i>Crime and punishment</i>, but reading it (in the span of a single weekend) was the principal — though not singular or initial — cause of the most profound transformation I have ever suffered: at the same time a reorientation of my life and the consummation of my personality, a reconciliation of every internal doubt I had about me and my choices (if one may call them that) in life.]]

local content <const> = lines {
    par [[
I met Dostoevsky, so to speak, a little more than a year ago.  I won't go into
how I got to <i>Crime and punishment</i>, but reading it (in the span of a
single weekend) was the principal — though not singular or initial — cause of
the most profound transformation I have ever suffered: at the same time a
reorientation of my life and the consummation of my personality, a
reconciliation of every internal doubt I had about me and my choices (if one may
call them that) in life.
]],
    par [[
At the same time, I found again and revived one of my greatest passions:
reading.  As I used to when growing up, I read furiously once again, only now
not <i>wearing to escape into that glorious world</i>, but with that rare
pleasure in life: that of finding true connections with sympathetic souls.  And
so it was that, among many incredible finds, I ended the year with the book
pictured here, which accompanied me across three continents on a journey to and
a sojourn in my old home.
]],
    img,
    par [[
I am now a completely different man in no small part because of this man's
writing.  He is the greatest author there ever was, and <i>The Brothers
Karamazov</i> is the greatest work of literature of all (<i>Crime and
punishment</i> previously held that title, to call these merely “books” or
“novels” feels blasphemous).  In the dark periods since, I found solace in what
I learned from him and the innumerable <i>other mysterious worlds</i> I touched.
In finding light and always keeping it even <i lang="la">in medio umbrae
mortis</i> (<i lang="grc">τὸ φέρειν αὐτὸ γενναίως εὐτύχημα</i>).
]],
    blockquote(par [[
There is nothing more seductive for man than the freedom of his conscience, but
there is nothing more tormenting either.
]]),
    text_tag("p", {lang = "ru"}, [[
Кланяюсь вам, Фёдор Михайлович Достоевский.
]]),
}

local notes_pt <const> = notes:new()

local content_pt <const> = lines {
    par [[
Conheci Dostoevsky, por assim dizer, há pouco mais de um ano.  Não entrarei nos
detalhes de como foi que cheguei a <i>Crime e castigo</i>, mas a leitura (no
período de um único fim-de-semana) foi a principal — embora não singular ou
inicial — causa da transformação mais profunda que já sofri: ao mesmo tempo uma
reorientação da minha vida e uma consumação da minha personalidade, uma
reconciliação de toda dúvida interna que tinha sobre mim e minhas escolhas (se
podem ser chamadas assim) de vida.
]],
    par(format {
        [[
Ao mesmo tempo, reencontrei e revivi uma das minhas maiores paixões: a leitura.
Como costumava fazer na infância, li furiosamente de novo, agora não <i>ansioso
por escapar para aquele mundo glorioso</i>, mas com aquele prazer raro na vida:
encontrar conexões verdadeiras com almas simpáticas%s.  E foi assim que, entre
os tantos incríveis encontros, terminei o ano com o livro retratado aqui, que me
acompanhou por três continentes numa jornada para e uma estadia na minha antiga
morada.
]],
        notes:add(par [[
Nota de tradução: mantido por fieldade ao texto original, mas a palavra
<i>simpático</i> nas línguas latinas perdeu muito da carga semântica do <i
lang="grc">πάθος</i> grego, fazendo com que se perca da mesma forma muito da
beleza da expressão <span lang="en">“sympathetic souls”</span>.
]]),
    }),
    img,
    par [[
Hoje sou um homem completamente diferente não por pouco graças aos escritos
desse homem.  Ele é o maior autor que já existiu, e <i>Os irmãos Karamazov</i> é
a maior obra de literatura de todas (<i>Crime e castigo</i> anteriormente
detinha esse título, chamá-los meramente de “livros” e “romances” parece
blasfêmia).  Nos períodos sombrios desde então, encontrei refúgio no que aprendi
com ele e nos inumeráveis <i>outros mundos misteriosos</i> que toquei.  Em ter
encontrado a luz e tê-la mantido mesmo <i lang="la">in medio umbra mortis</i>
(<i lang="grc">τὸ φέρειν αὐτὸ γενναίως εὐτύχημα</i>).
]],
    blockquote(par [[
Não existe nada mais sedutor para o homem que sua liberdade de consciência, mas
tampouco existe nada mais tormentador.
]]),
    text_tag("p", {lang = "ru"}, [[
Кланяюсь вам, Фёдор Михайлович Достоевский.
]]),
    h2 "notas",
    notes_pt,
}

local img_text <const> = [[This is precisely what has tormented me all my life, that I thirsted for nobility, that I was, so to speak, a sufferer for nobility, seeking it with a lantern, Diogenes' lantern]]

return {
    timestamp = { 1704067200, "2024-01-01" },
    title = {
        en = "Dostoevsky",
        pt = "Dostoevsky",
    },
    image = {
        alt = img_text,
        title = img_text,
        src = "dostoevsky_nobility.jpg",
    },
    languages = { "en", "pt" },
    description = description,
    content = {
        en = content,
        pt = content_pt,
    },
}
