local description <const> = [[
While it is on the surface a romance, this alone would not account for the
immense popularity of this book.  As its initial title, <i>First
Impressions</i>, suggests, there is much more to it than a simple love story.
It is at its core about the <i>philosophy</i> of love but, as a novelist,
Austen's exploration of the theme is that of a painter or a poet: not formal but
abstract, deeper and more captivating, expressing what can be felt but not
easily rationalized.
]]

local intro <const> = lines {
    blockquote(par("What are men to rocks and mountains?\n")),
    par(description),
}

local img <const> = image {
    src = "/files/lib/elizabeth_and_darcy.jpg",
    alt = "Elizabeth and Darcy",
    title = "Elizabeth and Darcy",
    class = "hor-center image",
    style = "max-width: 100%",
}

local content <const> = lines {
    tag("h3", nil, "The true philosopher"),
    blockquote(par [[
To his wife he was very little otherwise indebted than as her ignorance and
folly had contributed to his amusement.  This is not the sort of happiness which
a man would in general wish to owe to his wife; but where other powers of
entertainment are wanting, the true philosopher will derive benefit from such as
are given.
]]),
    par [[
Mr. Bennet, the philosopher in question in this passage so characteristic of the
humor and general tone of the book, shares with his daughter a truly
<a href="/lib/apologia.html">Socratic</a> spirit in their disdain and contempt
for ostentation and pretense, while remaining deferential to real wisdom.  In
one of the central interactions with Mr. Darcy, their argument about follies and
vices, vanity and pride, Elizabeth says about this sort of derision:
]],
    blockquote(par [[
I hope I never ridicule what is wise or good.  Follies and nonsense, whims and
inconsistencies, do divert me, I own, and I laugh at them whenever I can.  But
these, I suppose, are precisely what you are without.
]]),
    par [[
The first statement is as fundamental to the book as the second: just as it is
not simply a romance, it is not simple societal mockery and reproach.  Rather,
every one of its great characters has a commitment to truth and honesty, often
to their own detriment, and these are at the core of all the exemplary
relationships between them.  This is especially the case for Elizabeth and
Darcy, who defend these principles vigorously:
]],
    lines {
        tag("blockquote", {class = "citation-left"}, par [[
You shall not defend her, though it is Charlotte Lucas.  You shall not, for the
sake of one individual, change the meaning of principle and integrity, nor
endeavour to persuade yourself or me, that selfishness is prudence, and
insensibility of danger security for happiness.
]]),
        tag("blockquote", {class = "citation-right"}, par [[
These bitter accusations might have been suppressed, had I, with greater policy,
concealed my struggles, and flattered you into the belief of my being impelled
by unqualified, unalloyed inclination; by reason, by reflection, by everything.
But disguise of every sort is my abhorrence.
]]),
    },
    par [[
This common disposition, more than anything, is the basis for their irresistible
attraction, despite their initial animosity, and the development of their
romance.  In an often-quoted line from the <a
href="https://en.wikipedia.org/wiki/Pride_%26_Prejudice_(2005_film)">2005
film</a> (superb in its own right), Elizabeth says:
]],
    blockquote(par [[
Only the deepest love will persuade me into matrimony, which is why I will end
up an old maid.
]]),
    par [[
While it is not from the book, it is a good summary of her father's words after
Darcy asks for her hand in one of the final chapters:
]],
    blockquote(par [[
I know your disposition, Lizzy.  I know that you could be neither happy nor
respectable, unless you truly esteemed your husband, unless you looked up to him
as a superior.  Your lively talents would place you in the greatest danger in an
unequal marriage.  You could scarcely escape discredit and misery.  My child,
let me not have the grief of seeing you unable to respect your partner in life.
You know not what you are about.
]]),
    par [[
That truth and honesty are an essential precondition for every virtue and for
any meaningful relationship is one of the central tenets of the book.  One
cannot respect someone he does not trust to be honest.  This is brilliantly
shown by counter-example in other marriages in the story.
]],
    tag("h3", nil, "Three types of relationships"),
    par [[
Aristotle identifies in his <a href="/lib#the-nicomachean-ethics"><i>Ethics</i></a>,
one of the greatest works of philosophy of all time, three types of
relationships, according to the object of their affection, and they are
perfectly portrayed in the marriages in <i>Pride and Prejudice</i>.
]],
    par [[
Lydia and Wickham, their imprudent escapade and hurried marriage, are exemplars
of the <i>relationship of pleasure</i>.  She, vain and vulgar, and for that
reason incontinent and irresponsible; he, deceitful and superficial, with merely
a semblance of character; “a couple who were only brought together because their
passions were stronger than their virtue”, as Elizabeth puts it.  Charlotte and
Mr. Collins, on the other hand, exemplify the <i>relationship of utility</i>,
equally despised by her.
]],
par [[
These two exist only as long as the corresponding interest does.  When their
initial infatuation ends, Mr. and Mrs. Bennet's relationship deteriorates.  When
Wickham no longer sees a benefit in being with his current companion, he moves
on to another.  To these is opposed Elizabeth's relation with Darcy, the
<i>relationship of virtue</i>.  It is the only one that can endure: as the
Philosopher says, and the novel corroborates, it “lasts as long as they are good
&mdash; and goodness is an enduring thing”.  And it is virtue that Austen extols
through Mary when she, in a lucid moment of departure from her usual overbearing
erudite tone, proclaims:
]],
    blockquote(par [[
Unhappy as the event must be for Lydia, we may draw from it this useful lesson:
&mdash; that loss of virtue in a female is irretrievable, that one false step
involves her in endless ruin, that her reputation is no less brittle than it is
beautiful, and that she cannot be too much guarded in her behaviour towards the
undeserving of the other sex.
]]),
    tag("h3", nil, "The deepest love"),
    par [[
This juxtaposition of fragility and beauty is another mark of Austen's greatness
as a novelist.  Writing at a time when feminism &mdash; the most
ironically-named movement in history &mdash; and similar philosophies were
starting to take form, she annihilates their propositions by making her female
characters awesome not because they protest societal standards by completely
rejecting morality and decency, but because they show, through their adherence
to these without ever betraying their own (feminine) spirit, true magnanimity.
]],
    par [[
Elizabeth's wild character is consummated in her relationship with Darcy (and so
is his, in turn, in its own way); she becomes the “truly accomplished woman”
prophesied earlier: “a fearsome thing to behold” (another line from the film
which is not in the book but could very well be).  She ponders when beginning to
feel affection for Darcy after reading his letter:
]],
    blockquote(par [[
“How despicably have I acted!” she cried.  “I, who have prided myself on my
discernment!  I, who have valued myself on my abilities! who have often
disdained the generous candour of my sister, and gratified my vanity in useless
or blameless distrust.  How humiliating is this discovery!  Yet, how just a
humiliation!  Had I been in love, I could not have been more wretchedly blind.
But vanity, not love, has been my folly.  Pleased with the preference of one,
and offended by the neglect of the other, on the very beginning of our
acquaintance, I have courted prepossession and ignorance, and driven reason away
where either were concerned.  Till this moment, I never knew myself”.
]]),
    par [[
Her last phrase echoes the ancient Delphic injunction:
<a href="https://en.wikipedia.org/wiki/Know_thyself" lang="grc">γνῶθι σεαυτόν</a>;
Plato, Aristotle's revered teacher, in his
<a href="./#the-symposium"><i>Symposium</i></a> has Diotima of Mantinea relate
to Socrates that the ultimate function of love is to reveal the path to beauty
and virtue.  Continuing this ancient line of philosophy, Austen's characters are
completely transformed, through their relationship, into more fully-realized and
better people.  In <i>mutual submission</i>, as the passage from Scripture says,
their own limitations and vices are revealed to them.  And by their commitment
to honesty and to each other, they are compelled to mutual improvement.  As
Darcy says when they are finally engaged:
]],
    blockquote(par [[
By you, I was properly humbled.  [&hellip;] You showed me how insufficient were
all my pretensions to please a woman worthy of being pleased.
]]),
    par [[
<i>It is a truth</i> (sometimes) <i>universally acknowledged</i> that the
<i>deepest love</i> is a universal desire.  <i>Pride and Prejudice</i>,
extremely daring for the beginning of the nineteenth century, and written at the
remarkable age of twenty one (though it was revised fifteen years later prior to
its publication), continues to be one of the most popular novels &mdash; and
here “popular” is deserved and not an insult &mdash; because it shows true love:
what it requires and what it effects in the soul of those it touches.  And for
this it will be perpetually relevant.  It is, as its author, femininity at its
best.
]],
    img,
}

local content_it <const> = lines {
    blockquote(par [[
Che cosa sono gli uomini in confronto alle rocce e alle montagne?
]]),
    par [[
Mentre superficialmente è un romanzo, questo da solo non basterebbe a spiegare
la immensa popolarità di questo libro.  Come il suo titolo iniziale, <i
lang="en">First Impressions</i> (<i>prime impressioni</i>), suggere, in esso c'è
molto di più di una semplice storia di amore.  Tratta essenzialmente della
<i>filosofia</i> dell'amore ma, come romanziera, la esplorazione del tema da
parte di Austen è quella di un pittore o un poeta: non formale, ma astratta, più
profonda e accattivante, esprimendo quello che si può sentire ma che non può
essere facilmente razionalizzato.
]],
    tag("h3", nil, "Il vero filosofo"),
    blockquote(par [[
Verso la moglie provava un'unica e molto scarsa gratitudine, quella di aver
contribuito a divertirlo con la sua ignoranza e la sua stupidità.  Non è certo
questa la felicità che in generale un uomo si aspetta dalla propria moglie, ma
quando mancano altri motivi di interesse, il vero filosofo trarrà beneficio da
quelli che gli sono forniti.
]]),
    par [[
Il signor Bennet, il filosofo in questione in questo passaggio così
caratteristico dell'umore e tono generale del libro, condivide con sua figlia
uno spirito veramente <a href="apologia.html">socratico</a> nel suo disprezzo e
disdegno per l'ostentazione e la finzione, pur rimanendo deferenti nei riguardi
della vera sapienza.  In una delle interazioni centrali con il signor Darcy, la
loro discussione sulle follie e vizi, vanità e orgoglio, Elizabeth dice su
questo tipo di derisione:
]],
    blockquote(par [[
Spero di non mettere mai in ridicolo ciò che è saggio e buono.  Stravaganze e
sciocchezze, capricci e assurdità mi divertono, lo ammetto, e ne rido ogni volta
che posso.  Ma queste cose, suppongo, sono proprio quelle da cui voi siete
immune.
]]),
    par [[
La prima affermazione è fondamentale per il libro quanto la seconda: proprio
come non è semplicemente un romanzo, non è semplice derisione e biasimo sociale.
Piuttosto, ciascuno dei suoi grandi personaggi ha un impegno verso la verità e
l'onestà, spesso a suo danno, e questi sono al centro di tutti i rapporti
esemplari tra di loro.  Questo vale sopratutto per Elizabeth e Darcy, che
difendono questi principi con vigore:
]],
    lines {
        tag("blockquote", {class = "citation-left"}, par [[
Non devi difenderla solo perché è Charlotte Lucas.  Non devi, per salvare una
persona, cambiare il significato della rettitudine e dell'integrità morale, né
sforzarti di persuadere me o te stessa che l'egoismo sia prudenza, e
l'incoscienza del pericolo sicurezza di felicità.
]]),
        tag("blockquote", {class = "citation-right"}, par [[
Queste aspre accuse avrebbero potuto essere represse, se avessi nascosto con
maggiore accortezza le mie resistenze, e vi avessi lusingata a credere di essere
spronato da un'inclinazione senza riserve, incontaminata; dalla ragione, dalla
riflessione, da tutto. Ma la finzione, in qualsiasi forma, mi ripugna.
]]),
    },
    par [[
Questa disposizione comune, più di ogni cosa, è la base della loro attrazione
irresistibile, nonostante la loro iniziale animosità, e lo sviluppo del loro
romanzo.  In una frase spesso citata del
<a href="https://it.wikipedia.org/wiki/Orgoglio_e_pregiudizio_(film_2005)">film
del 2005</a> (superbo di per sé), Elizabeth dice:
]],
    blockquote(par [[
Solo il vero amore può indurmi al matrimonio, ragion per cui morirò zitella.
]]),
    par [[
Anche se non è tratto dal libro, è una buona sintesi delle parole di suo padre
dopo che Darcy ha chiesto la sua mano in uno degli ultimi capitoli:
]],
    blockquote(par [[
Conosco il tuo carattere, Lizzy.  So che non potrai mai essere né felice né
degna di rispetto, se non stimerai davvero tuo marito, se non guarderai a lui
con l'ammirazione che si deve a un uomo superiore.  Le tue brillanti qualità ti
metterebbero in enorme pericolo in un matrimonio inadeguato.  Non potresti
evitare discredito e infelicità.  Bambina mia, non farmi soffrire vedendo te
incapace di rispettare il compagno della tua vita.  Non sai che cosa ti aspetta.
]]),
    par [[
Che la verità e onestà sono una precondizione essenziale per ogni virtù e per
ogni rapporto significativo è uno dei principi fondamentali del libro.  Non si
può rispettare qualcuno di cui non ci si fida per la sua onestà.  Questo è
brillantemente dimostrato dal controesempio negli altri matrimoni della storia.
]],
    tag("h3", nil, "Tre tipi di relazione"),
    par [[
Aristotele identifica nella sua
<a href="/lib#the-nicomachean-ethics"><i>Etica</i></a>, una delle più grandi
opere filosofiche di tutti i tempi, tre tipi di relazioni, secondo l'oggetto del
loro affetto, e queste sono raffigurate perfettamente nei matrimoni in
<i>Orgoglio e Pregiudizio</i>.
]],
    par [[
Lydia e Wickham, la loro avventata fuga e il loro matrimonio affrettato, sono
esemplari della <i>relazione di piacere</i>.  Lei, vanitosa e volgare, e per
questo motivo incontinente e irresponsabile; lui, ingannevole e superficiale,
con solo una parvenza di carattere; “una coppia che si era unita solo perché le
passioni erano state più forti della virtù”, come dice Elizabeth.  Charlotte e
il signor Collins, d'altra parte, esemplificano la <i>relazione di utilità</i>,
altrettanto disprezzata da lei.
]],
par [[
Queste due esistono solo finché dura l'interesse corrispondente.  Quando finisce
la loro infatuazione iniziale, il rapporto tra il signor e la signora Bennet si
deteriora.  Quando Whickham non vede più alcun beneficio nello stare con la sua
attuale compagna, passa a un'altra.  A queste si oppone la relazione di
Elizabeth con Darcy, la <i>relazione di virtù</i>.  È l'unica che può perdurare:
come dice il Filosofo, e il romanzo corrobora, “perdura dunque finché siano
buoni e la virtù è cosa stabile”.  Ed è la virtù che Austen esalta attraverso
Mary quando lei, in un lucido momento di allontanamento del suo solito tono
schiacciante e erudito, proclama:
]],
    blockquote(par [[
Per quanto infelice sia questo evento per Lydia, possiamo trarne un'utile
lezione; che in una donna la perdita della virtù è irreparabile, che un passo
falso la conduce alla rovina eterna, che la sua reputazione non è meno fragile
della sua bellezza, e che la cautela non sarà mai troppa nel modo di comportarsi
verso l'indegnità dell'altro sesso.
]]),
    tag("h3", nil, "L'amore più profondo"),
    par [[
Questa giustapposizione di fragilità e bellezza è un altro segno della grandezza
di Austen come romanziera.  Scrivendo in un momento in cui il femminismo — il
movimento con il nome più ironico della storia — e filosofie simili cominciavano
a prendere forma, lei annienta le loro proposizioni rendendo ammirabili i suoi
personaggi femminili non perché protestano contro le norme sociali rifiutando
completamente la moralità e il pudore, ma perché mostrano, attraverso la loro
adesione a questi senza mai tradire il suo proprio spirito (femminile), vera
magnanimità.
]],
    par [[
Il carattere selvaggio di Elizabeth è consumato nella sua relazione con Darcy (e
così è anche il suo, a sua volta, a modo suo): lei diventa la “donna veramente
realizzata” profetizzata in precedenza: “terrificante da osservare” (un'altra
frase del film che non viene dal libro, ma potrebbe benissimo venire).  Lei
riflette quando inizia a provare affetto per Darcy dopo avere letto la sua
lettera:
]],
    blockquote(par [[
“Ho agito in modo veramente spregevole!” esclamò.  “Io, che ero orgogliosa del
mio acume!  Io, che mi reputavo così intelligente! che ho spesso disprezzato il
generoso candore di mia sorella, e gratificato la mia vanità con una diffidenza
inutile e biasimevole!  Che scoperta umiliante!  Eppure, com'è giusta questa
umiliazione!  Se fossi stata innamorata, non avrei potuto essere più
terribilmente cieca.  Ma è stata la vanità, non l'amore, la mia follia.
Compiaciuta dalla preferenza dell'uno, e offesa dall'indifferenza dell'altro,
immediatamente dopo averli conosciuti, ho coltivato preconcetti e ignoranza, e
ho messo da parte il buonsenso nei confronti di entrambi.  Fino a oggi, non ho
mai saputo chi fossi”.
]]),
    par [[
La sua ultima frase riecheggia l'antica ingiunzione delfica:
<a href="https://it.wikipedia.org/wiki/Conosci_te_stesso" lang="grc">γνῶθι
σεαυτόν</a>; Platone, il venerato maestro di Aristotele, nel suo
<a href="./#the-symposium"><i>Simposio</i></a> fa Diotima di Mantinea raccontare
a Socrate che la funzione finale dell'amore è rivelare il percorso verso la
bellezza e la virtù.  Continuando questa antica linea di filosofia, i personaggi
di Austen sono completamente trasformati, attraverso il loro rapporto, in
persone più realizzate e migliori.  In <i>reciproca sottomissione</i>, come dice
il passo della Scrittura, le loro proprie limitazioni e vizi vengono loro
rivelati.  E grazie al loro impegno verso l'onestà e l'uno verso l'altro, sono
spinti al miglioramento reciproco.  Come dice Darcy quando sono finalmente
fidanzati:
]],
    blockquote(par [[
Da te, sono stato giustamente umiliato.  Venni da te senza alcun dubbio su come
sarei stato accolto.  Mi hai mostrato quanto fossero inadeguate tutte le mie
pretese di piacere a una donna degna di essere amata.
]]),
    par [[
<i>È una verità</i> (a volte) <i>universalmente riconosciuta</i> che <i>l'amore
più profondo</i> sia un desiderio universale.  <i>Orgoglio e Pregiudizio</i>,
estremamente audace per l'inizio del XIX secolo, e scritto all'età straordinaria
di ventuno (anche se è stato rivisto quindici anni dopo prima della sua
pubblicazione), continua ad essere uno dei romanzi più popolari — e qui
“popolare” è meritato e non un insulto — perché mostra il vero amore: ciò che
richiede e qual effetto ha sulle anime di coloro che tocca.  E per questo sarà
perpetuamente rilevante.  È, come la sua autrice, la femminilità al suo meglio.
]],
    img,
}

local content_pt <const> = lines {
    blockquote(par("O que são homens para rochas e montanhas?")),
    par [[
Embora seja superficialmente um romance, apenas isso não explicaria a imensa
popularidade desse livro.  Como seu título inicial, <i>Primeiras Impressões</i>,
sugere, há muito mais nele do que uma simples história de amor.  É em seu cerne
sobre a <i>filosofia</i> do amor mas, como uma novelista, a exploração desse
tema por Austen é a de um pintor ou poeta: não formal, mas abstrata, mais
profunda e cativante, expressando o que pode ser sentido mas não facilmente
racionalizado.
]],
    tag("h3", nil, "O verdadeiro filósofo"),
    blockquote(par [[
À sua esposa ele era muito pouco debitado além da ignorância e estupidez dela
terem contribuído para a diversão dele.  Esse não é o tipo de felicidade que um
homem em geral desejaria dever a sua esposa; mas onde outros poderes de
entretenimento deixam a desejar, o verdadeiro filósofo derivará benefício
daqueles que forem dados.
]]),
    par [[
O Sr. Bennet, o filósofo em questão nessa passagem tão característica do humor e
tom geral do livro, compartilha com sua filha um espírito verdadeiramente <a
href="/lib/apologia-pt.html">socrático</a> no seu desdém e desprezo pela
ostentação e pretensão, enquanto se mantêm deferentes à verdadeira sabedoria.
Numa das interações centrais com Sr. Darcy, a sua discussão sobre estupidez e
vícios, futilidade e orgulho, Elizabeth fala desse tipo de derisão:
]],
    blockquote(par [[
Eu espero que nunca ridicularize o que é sábio e bom.  Estupidez e insensatez,
caprichos e inconsistências, me divertem, eu admito, e rio deles sempre que
posso.  Mas esses, eu suponho, são precisamente o que não tens.
]]),
    par [[
A primeira declaração é tão fundamental ao livro quanto a segunda: assim como
não é simplesmente um romance, não é simples escárnio e reprimenda sociais.
Pelo contrário, cada um de seus grandes personagens tem um comprometimento com a
verdade e a honestidade, frequentemente para sua própria desvantagem, e esses
estão no centro de todas as relações exemplares entre eles.  Em especial no caso
de Elizabeth e Darcy, que defendem esses princípios vigorosamente:
]],
    lines {
        tag("blockquote", {class = "citation-left"}, par [[
Não defenderás ela, mesmo que seja Charlotte Lucas.  Não mudarás, por causa de
um indivíduo, o significado de princípio e integridade, nem te empenharás em
persuadir a ti mesma ou a mim, que egoísmo é prudência, e insensibilidade ao
perigo, segurança de felicidade.
]]),
        tag("blockquote", {class = "citation-right"}, par [[
Essas acusações amargas talvez teriam sido suprimidas se eu tivesse, com grande
política, escondido minhas lutas, e te convencido por lisonjeamentos a acreditar
que fosse impelido por inclinação sem qualificações e pura; pela razão, pela
reflexão, por tudo.  Mas disfarce de qualquer tipo é para mim repugnante.
]]),
    },
    par [[
Essa disposição comum, mais que qualquer coisa, é a base para a sua atração
irresistível, apesar da animosidade inicial, e do desenvolvimento do seu
romance.  Numa fala frequentemente citada do <a
href="https://en.wikipedia.org/wiki/Pride_%26_Prejudice_(2005_film)">filme</a>
de 2005 (sublime por si só), Elizabeth diz:
]],
    blockquote(par [[
Somente o mais profundo amor me persuadirá ao matrimônio, por isso vou acabar
uma velha donzela.
]]),
    par [[
Apesar de não se do livro, é um bom resumo das palavras de seu pai depois que
Darcy pede sua mão num dos capítulos finais:
]],
    blockquote(par [[
Eu conheço tua disposição, Lizzy.  Sei que não poderias ser nem feliz nem
respeitável, a não ser que verdadeiramente estimasses teu marido, a não ser que
o admirasse como superior.  Teus talentos vivazes te colocariam no maior perigo
num casamento desigual.  Dificilmente escaparias o descrédito e a miséria.
Minha criança, não me deixe ter o pesar de te ver incapaz de respeitar teu
parceiro na vida.  Tu não te conheces.
]]),
    par [[
Que a verdade e a honestidade são uma precondição essencial para todas as
virtudes e para qualquer relação significativa é um dos preceitos centrais do
livro.  Não se pode respeitar alguém que não se confia ser honesto.  Isso é
mostrado brilhantemente por contra-exemplo em outros casamentos na história.
]],
    tag("h3", nil, "Três tipos de relação"),
    par [[
Aristóteles identifica em sua <a href="/lib#the-nicomachean-ethics"><i>Ética</i></a>,
uma das maiores obras de filosofia de todos os tempos, três tipos de relações,
de acordo com o objeto de sua afeição, e eles são perfeitamente retratados nos
casamentos em <i>Orgulho e preconceito</i>.
]],
    par [[
Lydia e Wickham, sua escapada imprudente e casamento apressado, são exemplares
da <i>relação de prazer</i>.  Ela, vã e vulgar, e por essa razão incontinente e
irresponsável; ele, enganador e superficial, com um mero semblante de caráter;
“um casal que foi unido porque suas paixões eram mais fortes que sua virtude”,
como Elizabeth diz.  Charlotte e o Sr. Collins, por outro lado, exemplificam a
<i>relação de utilidade</i>, igualmente desprezada por ela.
]],
par [[
Essas duas existem somente enquanto o interesse correspondente existe.  Quando
seu enfatuamento termina, a relação do Sr. e Sra. Bennet se deteriora.  Quando
Wickham não vê mais benefício em estar com sua parceira atual, muda para outra.
A essas é oposta a relação de Elizabeth com Darcy, a <i>relação de virtude</i>.
É a única que perdura: como o Filósofo diz, e o romance corrobora, ela “dura
enquanto forem bons &mdash; e a bondade é algo duradouro”.  E é a virtude que
Austen exalta através de Mary, quando, num momento lúcido de abandono do seu tom
gravemente erudito, proclama:
]],
    blockquote(par [[
Infeliz que esse evento deva ser para Lydia, podemos tomar dele essa útil lição:
&mdash; que perda da virtude numa fêmea é irreparável, que um passo falso a
envolve em infindável ruína, que sua reputação é tão quebradiça quanto é bela, e
que ela não pode se guardar suficientemente em seu comportamento em relação aos
indignos do sexo oposto.
]]),
    tag("h3", nil, "O amor mais profundo"),
    par [[
Essa justaposição de fragilidade e beleza é outra marca da grandeza de Austen
como romancista.  Escrevendo num tempo em que o feminismo &mdash; o movimento
mais ironicamente nomeado da história &mdash; e filosofias similares começavam a
tomar forma, ela aniquila as suas proposições fazendo suas personagens
magníficas não porque protestam os padrões sociais rejeitando completamente a
moralidade e a decência, mas porque mostram, pela sua aderência a esses sem
nunca trair seu próprio espírito (feminino), verdadeira magnanimidade.
]],
    par [[
A personalidade bravia de Elizabeth é consumada em sua relação com Darcy (e
assim é a dele, por sua vez, da sua forma); ela se torna a “mulher
verdadeiramente realizada” profetizada anteriormente: “algo aterrador de ser
visto” (outra fala do filme que não vem do livro mas poderia muito bem ter
vindo).  Ela considera quando começa a sentir afeição por Darcy depois de ler
sua carta:
]],
    blockquote(par [[
“Quão desprezivelmente agi!”, ela exclamou.  “Eu, que me orgulhei do meu
discernimento!  Eu, que me valorizei por minhas habilidades! que frequentemente
desdenhei o candor de minha irmã, e gratifiquei minha vaidade em suspeita inútil
ou irresponsável.  Quão humilhante é essa descoberta!  Ainda assim, quão justa
humilhação!  Se tivesse estado apaixonada, não poderia ter sido mais
miseravelmente cega.  Mas a vaidade, não o amor, foi minha falha.  Agradada pela
preferência de um, e ofendida pela negligência do outro, bem no começo da nossa
familiaridade, cortejei o preconceito e a ignorância, e espantei a razão onde
qualquer uma das duas se envolveu.  Até esse momento, eu nunca me conheci”.
]]),
    par [[
A sua frase final ecoa o preceito antigo de Delphi:
<a href="https://pt.wikipedia.org/wiki/Conhece_a_ti_mesmo" lang="grc">γνῶθι σεαυτόν</a>.
Platão, o professor reverenciado de Aristóteles, em seu
<a href="./#the-symposium"><i>Simpósio</i></a> faz Diotima de Mantinea relatar a
Sócrates que a função final do amor é revelar o caminho para a beleza e a
virtude.  Continuando essa linha antiga da filosofia, os personagens de Austen
são completamente transformados, através de sua relação, em pessoas mais
plenamente realizadas e melhores.  Em <i>submissão mútua</i>, como a passagem da
Escritura diz, suas próprias limitações e vícios são reveladas a eles.  E pelo
seu comprometimento à honestidade e um ao outro, são compelidos ao aprimoramento
mútuo.  Como Darcy diz quando finalmente ficam noivos:
]],
    blockquote(par [[
Por ti, me tornei propriamente humilde.  [&hellip;] Me mostraste como eram
insuficientes todas as minhas pretensões de satisfazer uma mulher que merece ser
satisfeita.
]]),
    par [[
<i>É uma verdade</i> (às vezes) <i>universalmente reconhecida</i> que o <i>amor
mais profundo</i> é um desejo universal.  <i>Orgulho e preconceito</i>,
extremamente audaz para o início do século XIX, e escrito notavelmente aos vinte
e um anos de idade (apesar de ter sido revisado quinze anos depois antes de sua
publicação), continua sendo um dos romances mais populares &mdash; e aqui
“popular” é merecido e não um insulto &mdash; porque mostra o amor verdadeiro: o
que requer e o efeito que tem nas almas daqueles que toca.  E por isso vai ser
perpetuamente relevante.  É, como sua autora, a feminilidade no seu melhor.
]],
    img,
}

local citations <const> = {{
    id = "I",
    source = "I",
    title = "It is a truth universally acknowledged",
    content = lines {
        par [[
It is a truth universally acknowledged, that a single man in possession of a
good fortune must be in want of a wife.
]],
        par [[
However little known the feelings or views of such a man may be on his first
entering a neighbourhood, this truth is so well fixed in the minds of the
surrounding families, that he is considered as the rightful property of some one
or other of their daughters.
]],
    },
}, {
    id = "IV-0",
    source = "IV",
    title = "You have liked many a stupider person",
    content = lines {
        par [[
"I was very much flattered by his asking me to dance a second time.  I did not
expect such a compliment".
]],
        par [[
"Did not you?  I did for you.  But that is one great difference between us.
Compliments always take you by surprise, and me never.  What could be more
natural than his asking you again?  He could not help seeing that you were about
five times as pretty as every other woman in the room.  No thanks to his
gallantry for that.  Well, he certainly is very agreeable, and I give you leave
to like him.  You have liked many a stupider person".
]],
        par [[
"Dear Lizzy!".
]],
        par [[
"Oh, you are a great deal too apt, you know, to like people in general.  You
never see a fault in anybody.  All the world are good and agreeable in your
eyes.  I never heard you speak ill of a human being in my life".
]],
        par [[
"I would wish not to be hasty in censuring anyone; but I always speak what I
think".
]],
        par [[
"I know you do: and it is that which makes the wonder.  With your good sense, to
be so honestly blind to the follies and nonsense of others!  Affectation of
candour is common enough; one meets with it everywhere.  But to be candid
without ostentation or design, &mdash; to take the good of everybody's character
and make it still better, and say nothing of the bad, &mdash; belongs to you
alone".
]],
    },
}, {
    id = "IV-1",
    source = "IV",
    title = "Mr. Darcy was continually giving offence",
    content = par [[
Between him and Darcy there was a very steady friendship, in spite of a great
opposition of character.  Bingley was endeared to Darcy by the easiness,
openness, and ductility of his temper, though no disposition could offer a
greater contrast to his own, and though with his own he never appeared
dissatisfied.  On the strength of Darcy's regard, Bingley had the firmest
reliance, and of his judgment the highest opinion.  In understanding, Darcy was
the superior.  Bingley was by no means deficient; but Darcy was clever.  He was
at the same time haughty, reserved, and fastidious; and his manners, though well
bred, were not inviting.  In that respect his friend had greatly the advantage.
Bingley was sure of being liked wherever he appeared; Darcy was continually
giving offence.
]],
}, {
    id = "V",
    source = "V",
    title = "Without once opening his lips",
    content = par [[
"I beg you will not put it into Lizzy's head to be vexed by his ill-treatment,
for he is such a disagreeable man that it would be quite a misfortune to be
liked by him.  Mrs. Long told me last night that he sat close to her for
half an hour without once opening his lips".
]],
}, {
    id = "VI",
    source = "VI",
    title = "Mr. Darcy stood near them in silent indignation",
    content = lines {
        par [[
Her performance was pleasing, though by no means capital.  After a song or two,
and before she could reply to the entreaties of several that she would sing
again, she was eagerly succeeded at the instrument by her sister Mary, who
having, in consequence of being the only plain one in the family, worked hard
for knowledge and accomplishments, was always impatient for display.
]],
        par [[
Mary had neither genius nor taste; and though vanity had given her application,
it had given her likewise a pedantic air and conceited manner, which would have
injured a higher degree of excellence than she had reached.  Elizabeth, easy and
unaffected, had been listened to with much more pleasure, though not playing
half so well; and Mary, at the end of a long concerto, was glad to purchase
praise and gratitude by Scotch and Irish airs, at the request of her younger
sisters, who with some of the Lucases, and two or three officers, joined eagerly
in dancing at one end of the room.
]],
        par [[
Mr. Darcy stood near them in silent indignation at such a mode of passing the
evening, to the exclusion of all conversation, and was too much engrossed by his
own thoughts to perceive that Sir William Lucas was his neighbour, till Sir
William thus began:&mdash;
]],
        par [[
"What a charming amusement for young people this is, Mr. Darcy!  There is
nothing like dancing, after all. I consider it as one of the first refinements
of polished societies".
]],
        par [[
"Certainly, sir; and it has the advantage also of being in vogue amongst the
less polished societies of the world: every savage can dance".
]],
        par [[
Sir William only smiled.  "Your friend performs delightfully", he continued,
after a pause, on seeing Bingley join the group; "and I doubt not that you are
an adept in the science yourself, Mr. Darcy".
]],
        par [[
"You saw me dance at Meryton, I believe, sir".
]],
        par [[
"Yes, indeed, and received no inconsiderable pleasure from the sight.  Do you
often dance at St. James's?"
]],
        par [[
"Never, sir".
]],
        par [[
"Do you not think it would be a proper compliment to the place?".
]],
        par [[
"It is a compliment which I never pay to any place if I can avoid it".
]],
        par [[
"You have a house in town, I conclude?".
]],
        par [[
Mr. Darcy bowed.
]],
        par [[
"I had once some thoughts of fixing in town myself, for I am fond of superior
society; but I did not feel quite certain that the air of London would agree
with Lady Lucas".
]],
        par [[
He paused in hopes of an answer: but his companion was not disposed to make any;
[&hellip;]
]],
    },
}, {
    id = "VIII-0",
    source = "VIII",
    title = "Do you prefer reading to cards?",
    content = lines {
        par [[
On entering the drawing-room, she found the whole party at loo, and was
immediately invited to join them; but suspecting them to be playing high, she
declined it, and making her sister the excuse, said she would amuse herself, for
the short time she could stay below, with a book.  Mr. Hurst looked at her with
astonishment.
]],
        par [[
"Do you prefer reading to cards?" said he; "that is rather singular".
]],
        par [[
"Miss Eliza Bennet", said Miss Bingley, "despises cards.  She is a great reader,
and has no pleasure in anything else".
]],
        par [[
"I deserve neither such praise nor such censure", cried Elizabeth; "I am not a
great reader, and I have pleasure in many things".
]],
    },
}, {
    id = "VIII-1",
    source = "VIII",
    title = "An accomplished woman",
    content = lines {
        par [[
"Your list of the common extent of accomplishments", said Darcy, "has too much
truth.  The word is applied to many a woman who deserves it no otherwise than by
netting a purse or covering a screen; but I am very far from agreeing with you
in your estimation of ladies in general.  I cannot boast of knowing more than
half-a-dozen in the whole range of my acquaintance that are really
accomplished".
]],
        par [[
"Nor I, I am sure", said Miss Bingley.
]],
        par [[
"Then", observed Elizabeth, "you must comprehend a great deal in your idea of an
accomplished woman".
]],
        par [[
"Yes; I do comprehend a great deal in it".
]],
        par [[
"Oh, certainly", cried his faithful assistant, "no one can be really esteemed
accomplished who does not greatly surpass what is usually met with.  A woman
must have a thorough knowledge of music, singing, drawing, dancing, and the
modern languages, to deserve the word; and, besides all this, she must possess a
certain something in her air and manner of walking, the tone of her voice, her
address and expressions, or the word will be but half deserved".
]],
        par [[
"All this she must possess", added Darcy; "and to all she must yet add something
more substantial in the improvement of her mind by extensive reading".
]],
        par [[
"I am no longer surprised at your knowing only six accomplished women. I rather
wonder now at your knowing any".
]],
        par [[
"Are you so severe upon your own sex as to doubt the possibility of all this?".
]],
        par [[
"I never saw such a woman. I never saw such capacity, and taste, and
application, and elegance, as you describe, united".
]],
    },
}, {
    id = "IX-0",
    source = "IX",
    title = "A deep, intricate character",
    content = lines {
        par [[
"Whatever I do is done in a hurry", replied he; "and therefore if I should
resolve to quit Netherfield, I should probably be off in five minutes.  At
present, however, I consider myself as quite fixed here".
]],
        par [[
"That is exactly what I should have supposed of you", said Elizabeth.
]],
        par [[
"You begin to comprehend me, do you?" cried he, turning towards her.
]],
        par [[
"Oh yes &mdash; I understand you perfectly".
]],
        par [[
"I wish I might take this for a compliment; but to be so easily seen through, I
am afraid, is pitiful".
]],
        par [[
"That is as it happens.  It does not necessarily follow that a deep, intricate
character is more or less estimable than such a one as yours".
]],
        par [[
"Lizzy", cried her mother, "remember where you are, and do not run on in the
wild manner that you are suffered to do at home".
]],
        par [[
"I did not know before", continued Bingley, immediately, "that you were a
studier of character.  It must be an amusing study".
]],
        par [[
"Yes; but intricate characters are the most amusing.  They have at least that
advantage".
]],
    },
}, {
    id = "IX-1",
    source = "IX",
    title = "Poetry as the food of love",
    content = lines {
        par [[
"[&hellip;] When she was only fifteen there was a gentleman at my brother
Gardiner's in town so much in love with her, that my sister-in-law was sure he
would make her an offer before we came away.  But, however, he did not.  Perhaps
he thought her too young.  However, he wrote some verses on her, and very pretty
they were".
]],
        par [[
"And so ended his affection", said Elizabeth, impatiently.  "There has been many
a one, I fancy, overcome in the same way.  I wonder who first discovered the
efficacy of poetry in driving away love!".
]],
        par [[
"I have been used to consider poetry as the food of love", said Darcy.
]],
        par [[
"Of a fine, stout, healthy love it may.  Everything nourishes what is strong
already.  But if it be only a slight, thin sort of inclination, I am convinced
that one good sonnet will starve it entirely away".
]],
    },
}, {
    id = "X",
    source = "X",
    title = "Humility",
    content = lines {
        par [[
"Oh", cried Miss Bingley, "Charles writes in the most careless way imaginable.
He leaves out half his words, and blots the rest".
]],
        par [[
"My ideas flow so rapidly that I have not time to express them; by which means
my letters sometimes convey no ideas at all to my correspondents".
]],
        par [[
"Your humility, Mr. Bingley", said Elizabeth, "must disarm reproof".
]],
        par [[
"Nothing is more deceitful", said Darcy, "than the appearance of humility.  It
is often only carelessness of opinion, and sometimes an indirect boast".
]],
        par [[
"And which of the two do you call my little recent piece of modesty?".
]],
        par [[
"The indirect boast; for you are really proud of your defects in writing,
because you consider them as proceeding from a rapidity of thought and
carelessness of execution, which, if not estimable, you think at least highly
interesting.  The power of doing anything with quickness is always much prized
by the possessor, and often without any attention to the imperfection of the
performance.  When you told Mrs. Bennet this morning, that if you ever resolved
on quitting Netherfield you should be gone in five minutes, you meant it to be a
sort of panegyric, of compliment to yourself; and yet what is there so very
laudable in a precipitance which must leave very necessary business undone, and
can be of no real advantage to yourself or anyone else?".
]],
        par [[
"Nay", cried Bingley, "this is too much, to remember at night all the foolish
things that were said in the morning.  And yet, upon my honour, I believed what
I said of myself to be true, and I believe it at this moment.  At least,
therefore, I did not assume the character of needless precipitance merely to
show off before the ladies".
]],
        par [[
"I daresay you believed it; but I am by no means convinced that you would be
gone with such celerity.  Your conduct would be quite as dependent on chance as
that of any man I know; and if, as you were mounting your horse, a friend were
to say, 'Bingley, you had better stay till next week', you would probably do it
&mdash; you would probably not go &mdash; and, at another word, might stay a
month".
]],
        par [[
"You have only proved by this", cried Elizabeth, "that Mr. Bingley did not do
justice to his own disposition.  You have shown him off now much more than he
did himself".
]],
        par [[
"I am exceedingly gratified", said Bingley, "by your converting what my friend
says into a compliment on the sweetness of my temper.  But I am afraid you are
giving it a turn which that gentleman did by no means intend; for he would
certainly think the better of me if, under such a circumstance, I were to give a
flat denial, and ride off as fast as I could".
]],
        par [[
"Would Mr. Darcy then consider the rashness of your original intention as atoned
for by your obstinacy in adhering to it?".
]],
        par [[
"Upon my word, I cannot exactly explain the matter &mdash; Darcy must speak for
himself".
]],
        par [[
"You expect me to account for opinions which you choose to call mine, but which
I have never acknowledged.  Allowing the case, however, to stand according to
your representation, you must remember, Miss Bennet, that the friend who is
supposed to desire his return to the house, and the delay of his plan, has
merely desired it, asked it without offering one argument in favour of its
propriety".
]],
        par [[
"To yield readily &mdash; easily &mdash; to the persuasion of a friend is no
merit with you".
]],
        par [[
"To yield without conviction is no compliment to the understanding of either".
]],
        par [[
"You appear to me, Mr. Darcy, to allow nothing for the influence of friendship
and affection.  A regard for the requester would often make one readily yield to
a request, without waiting for arguments to reason one into it.  I am not
particularly speaking of such a case as you have supposed about Mr. Bingley.  We
may as well wait, perhaps, till the circumstance occurs, before we discuss the
discretion of his behaviour thereupon.  But in general and ordinary cases,
between friend and friend, where one of them is desired by the other to change a
resolution of no very great moment, should you think ill of that person for
complying with the desire, without waiting to be argued into it?".
]],
        par [[
"Will it not be advisable, before we proceed on this subject, to arrange with
rather more precision the degree of importance which is to appertain to this
request, as well as the degree of intimacy subsisting between the parties?".
]],
        par [[
"By all means", cried Bingley; "let us hear all the particulars, not forgetting
their comparative height and size, for that will have more weight in the
argument, Miss Bennet, than you may be aware of.  I assure you that if Darcy
were not such a great tall fellow, in comparison with myself, I should not pay
him half so much deference.  I declare I do not know a more awful object than
Darcy on particular occasions, and in particular places; at his own house
especially, and of a Sunday evening, when he has nothing to do".
]],
    },
}, {
    id = "XI",
    source = "XI",
    title = "A turn about the room",
    content = lines {
        par [[
Miss Bingley made no answer, and soon afterwards got up and walked about the
room.  Her figure was elegant, and she walked well; but Darcy, at whom it was
all aimed, was still inflexibly studious.  In the desperation of her feelings,
she resolved on one effort more; and, turning to Elizabeth, said, &mdash;
]],
        par [[
"Miss Eliza Bennet, let me persuade you to follow my example, and take a turn
about the room.  I assure you it is very refreshing after sitting so long in one
attitude".
]],
        par [[
Elizabeth was surprised, but agreed to it immediately.  Miss Bingley succeeded
no less in the real object of her civility: Mr. Darcy looked up.  He was as much
awake to the novelty of attention in that quarter as Elizabeth herself could be,
and unconsciously closed his book.  He was directly invited to join their party,
but he declined it, observing that he could imagine but two motives for their
choosing to walk up and down the room together, with either of which motives his
joining them would interfere.  What could he mean?  She was dying to know what
could be his meaning &mdash; and asked Elizabeth whether she could at all
understand him.
]],
        par [[
"Not at all", was her answer; "but, depend upon it, he means to be severe on us,
and our surest way of disappointing him will be to ask nothing about it".
]],
        par [[
Miss Bingley, however, was incapable of disappointing Mr. Darcy in anything, and
persevered, therefore, in requiring an explanation of his two motives.
]],
        par [[
"I have not the smallest objection to explaining them", said he, as soon as she
allowed him to speak.  "You either choose this method of passing the evening
because you are in each other's confidence, and have secret affairs to discuss,
or because you are conscious that your figures appear to the greatest advantage
in walking: if the first, I should be completely in your way; and if the second,
I can admire you much better as I sit by the fire".
]],
        par [[
"Oh, shocking!" cried Miss Bingley.  "I never heard anything so abominable.  How
shall we punish him for such a speech?".
]],
        par [[
"Nothing so easy if you have but the inclination", said Elizabeth.  "We can all
plague and punish one another.  Tease him &mdash; laugh at him.  Intimate as you
are, you must know how it is to be done".
]],
        par [[
"But upon my honour I do not.  I do assure you that my intimacy has not yet
taught me that.  Tease calmness of temper and presence of mind!  No, no; I feel
he may defy us there.  And as to laughter, we will not expose ourselves, if you
please, by attempting to laugh without a subject.  Mr.  Darcy may hug himself".
]],
        par [[
"Mr. Darcy is not to be laughed at!" cried Elizabeth.  "That is an uncommon
advantage, and uncommon I hope it will continue, for it would be a great loss to
me to have many such acquaintance.  I dearly love a laugh".
]],
        par [[
"Miss Bingley", said he, "has given me credit for more than can be.  The wisest
and best of men, &mdash; nay, the wisest and best of their actions, &mdash; may
be rendered ridiculous by a person whose first object in life is a joke".
]],
        par [[
"Certainly", replied Elizabeth, "there are such people, but I hope I am not one
of them.  I hope I never ridicule what is wise or good.  Follies and nonsense,
whims and inconsistencies, do divert me, I own, and I laugh at them whenever I
can.  But these, I suppose, are precisely what you are without".
]],
        par [[
"Perhaps that is not possible for anyone.  But it has been the study of my life
to avoid those weaknesses which often expose a strong understanding to
ridicule".
]],
        par [[
"Such as vanity and pride".
]],
        par [[
"Yes, vanity is a weakness indeed.  But pride &mdash; where there is a real
superiority of mind &mdash; pride will be always under good regulation".
]],
        par [[
Elizabeth turned away to hide a smile.
]],
        par [[
"Your examination of Mr. Darcy is over, I presume", said Miss Bingley; "and pray
what is the result?".
]],
        par [[
"I am perfectly convinced by it that Mr. Darcy has no defect.  He owns it
himself without disguise".
]],
        par [[
"No", said Darcy, "I have made no such pretension.  I have faults enough, but
they are not, I hope, of understanding.  My temper I dare not vouch for.  It is,
I believe, too little yielding; certainly too little for the convenience of the
world.  I cannot forget the follies and vices of others so soon as I ought, nor
their offences against myself.  My feelings are not puffed about with every
attempt to move them.  My temper would perhaps be called resentful.  My good
opinion once lost is lost for ever".
]],
        par [[
"That is a failing, indeed!" cried Elizabeth.  "Implacable resentment is a shade
in a character.  But you have chosen your fault well.  I really cannot laugh at
it.  You are safe from me".
]],
        par [[
"There is, I believe, in every disposition a tendency to some particular evil, a
natural defect, which not even the best education can overcome".
]],
        par [[
"And your defect is a propensity to hate everybody".
]],
        par [[
"And yours", he replied, with a smile, "is wilfully to misunderstand them".
]],
    },
}, {
    id = "XVIII",
    source = "XVIII",
    title = "They stood for some time without speaking",
    content = lines {
        par [[
When the dancing recommenced, however, and Darcy approached to claim her hand,
Charlotte could not help cautioning her, in a whisper, not to be a simpleton,
and allow her fancy for Wickham to make her appear unpleasant in the eyes of a
man often times his consequence.  Elizabeth made no answer, and took her place
in the set, amazed at the dignity to which she was arrived in being allowed to
stand opposite to Mr. Darcy, and reading in her neighbours' looks their equal
amazement in beholding it.  They stood for some time without speaking a word;
and she began to imagine that their silence was to last through the two dances,
and, at first, was resolved not to break it; till suddenly fancying that it
would be the greater punishment to her partner to oblige him to talk, she made
some slight observation on the dance.  He replied, and was again silent.  After
a pause of some minutes, she addressed him a second time, with&mdash;
]],
        par [[
"It is your turn to say something now, Mr. Darcy.  I talked about the dance, and
you ought to make some kind of remark on the size of the room, or the number of
couples".
]],
        par [[
He smiled, and assured her that whatever she wished him to say should be said.
]],
        par [[
"Very well; that reply will do for the present.  Perhaps, by-and-by, I may
observe that private balls are much pleasanter than public ones; but now we may
be silent".
]],
        par [[
"Do you talk by rule, then, while you are dancing?".
]],
        par [[
"Sometimes.  One must speak a little, you know.  It would look odd to be
entirely silent for half an hour together; and yet, for the advantage of some,
conversation ought to be so arranged as that they may have the trouble of saying
as little as possible".
]],
        par [[
"Are you consulting your own feelings in the present case, or do you imagine
that you are gratifying mine?".
]],
        par [[
"Both", replied Elizabeth archly; "for I have always seen a great similarity in
the turn of our minds.  We are each of an unsocial, taciturn disposition,
unwilling to speak, unless we expect to say something that will amaze the whole
room, and be handed down to posterity with all the éclat of a proverb".
]],
        par [[
"This is no very striking resemblance of your own character, I am sure", said
he.  "How near it may be to mine, I cannot pretend to say.  You think it a
faithful portrait, undoubtedly".
]],
        par [[
"I must not decide on my own performance".
]],
        par [[
He made no answer; and they were again silent till they had gone down the
dance[&hellip;]
]],
    },
}, {
    id = "XXIV-0",
    source = "XXIV",
    title = "Change the meaning of principle",
    content = lines {
        par [[
A day or two passed before Jane had the courage to speak of her feelings to
Elizabeth; but at last on Mrs. Bennet's leaving them together, after a longer
irritation than usual about Netherfield and its master, she could not help
saying.
]],
        par [[
"Oh! that my dear mother had more command over herself; she can have no idea of
the pain she gives me by her continual reflections on him.  But I will not
repine.  It cannot last long.  He will be forgot, and we shall all be as we were
before".
]],
        par [[
Elizabeth looked at her sister with incredulous solicitude, but said nothing.
]],
        par [[
"You doubt me", cried Jane slightly colouring; "indeed, you have no reason.  He
may live in my memory as the most amiable man of my acquaintance, but that is
all.  I have nothing either to hope or fear, and nothing to reproach him with.
Thank God!  I have not <em>that</em> pain.  A little time therefore. &mdash; I
shall certainly try to get the better".
]],
        par [[
With a stronger voice she soon added, "I have this comfort immediately, that it
has not been more than an error of fancy on my side, and that it has done no
harm to anyone but myself".
]],
        par [[
"My dear Jane!" exclaimed Elizabeth, "you are too good.  Your sweetness and
disinterestedness are really angelic; I do not know what to say to you.  I feel
as if I had never done you justice, or loved you as you deserve".
]],
        par [[
Miss Bennet eagerly disclaimed all extraordinary merit, and threw back the
praise on her sister's warm affection.
]],
        par [[
"Nay", said Elizabeth, "this is not fair.  <em>You</em> wish to think all the
world respectable, and are hurt if I speak ill of anybody.  <em>I</em> only want
to think you perfect, and you set yourself against it.  Do not be afraid of my
running into any excess, of my encroaching on your privilege of universal
good-will.  You need not.  There are few people whom I really love, and still
fewer of whom I think well.  The more I see of the world the more am I
dissatisfied with it; and every day confirms my belief of the inconsistency of
all human characters, and of the little dependence that can be placed on the
appearance of either merit or sense.  I have met with two instances lately: one
I will not mention, the other is Charlotte's marriage.  It is unaccountable! in
every view it is unaccountable!".
]],
        par [[
"My dear Lizzy, do not give way to such feelings as these.  They will ruin your
happiness.  You do not make allowance enough for difference of situation and
temper.  Consider Mr. Collins's respectability, and Charlotte's prudent, steady
character.  Remember that she is one of a large family; that as to fortune it is
a most eligible match; and be ready to believe, for everybody's sake, that she
may feel something like regard and esteem for our cousin".
]],
        par [[
"To oblige you, I would try to believe almost anything, but no one else could be
benefited by such a belief as this; for were I persuaded that Charlotte had any
regard for him, I should only think worse of her understanding than I now do of
her heart.  My dear Jane, Mr. Collins is a conceited, pompous, narrow-minded,
silly man: you know he is, as well as I do; and you must feel, as well as I do,
that the woman who marries him cannot have a proper way of thinking.  You shall
not defend her, though it is Charlotte Lucas.  You shall not, for the sake of
one individual, change the meaning of principle and integrity, nor endeavour to
persuade yourself or me, that selfishness is prudence, and insensibility of
danger security for happiness".
]],
        par [[
"I must think your language too strong in speaking of both", replied Jane; "and
I hope you will be convinced of it, by seeing them happy together.  But enough
of this.  You alluded to something else.  You mentioned two instances.  I cannot
misunderstand you, but I entreat you, dear Lizzy, not to pain me by thinking
that person to blame, and saying your opinion of him is sunk.  We must not be so
ready to fancy ourselves intentionally injured.  We must not expect a lively
young man to be always so guarded and circumspect.  It is very often nothing but
our own vanity that deceives us.  Women fancy admiration means more than it
does".
]],
        par [[
"And men take care that they should".
]],
    },
}, {
    id = "XXIV-1",
    source = "XXIV",
    title = "Officers enough to disappoint all the ladies",
    content = lines {
        par [[
Mr. Bennet treated the matter differently.  "So, Lizzy", said he, one day, "your
sister is crossed in love, I find.  I congratulate her.  Next to being married,
a girl likes to be crossed in love a little now and then.  It is something to
think of, and gives her a sort of distinction among her companions.  When is
your turn to come?  You will hardly bear to be long outdone by Jane.  Now is
your time.  Here are officers enough at Meryton to disappoint all the young
ladies in the country.  Let Wickham be your man.  He is a pleasant fellow, and
would jilt you creditably".
]],
        par [[
"Thank you, sir, but a less agreeable man would satisfy me.  We must not all
expect Jane's good fortune".
]],
    },
}, {
    id = "XXVII-0",
    source = "XXVII",
    title = "Stupid men are the only ones worth knowing",
    content = lines {
        par [[
Mrs. Gardiner then rallied her niece on Wickham's desertion, and complimented
her on bearing it so well.
]],
        par [[
"But, my dear Elizabeth", she added, "what sort of girl is Miss King?  I should
be sorry to think our friend mercenary".
]],
        par [[
"Pray, my dear aunt, what is the difference in matrimonial affairs, between the
mercenary and the prudent motive?  Where does discretion end, and avarice begin?
Last Christmas you were afraid of his marrying me, because it would be
imprudent; and now, because he is trying to get a girl with only ten thousand
pounds, you want to find out that he is mercenary".
]],
        par [[
"If you will only tell me what sort of girl Miss King is, I shall know what to
think".
]],
        par [[
"She is a very good kind of girl, I believe.  I know no harm of her".
]],
        par [[
"But he paid her not the smallest attention till her grandfather's death made
her mistress of this fortune?".
]],
        par [[
"No &mdash; why should he?  If it were not allowable for him to gain my
affections, because I had no money, what occasion could there be for making love
to a girl whom he did not care about, and who was equally poor?".
]],
        par [[
"But there seems indelicacy in directing his attentions towards her so soon
after this event".
]],
        par [[
"A man in distressed circumstances has not time for all those elegant decorums
which other people may observe.  If she does not object to it, why should we?".
]],
        par [[
"Her not objecting does not justify him.  It only shows her being deficient in
something herself &mdash; sense or feeling".
]],
        par [[
"Well", cried Elizabeth, "have it as you choose.  He shall be mercenary, and she
shall be foolish".
]],
        par [[
"No, Lizzy, that is what I do not choose.  I should be sorry, you know, to think
ill of a young man who has lived so long in Derbyshire".
]],
        par [[
"Oh, if that is all, I have a very poor opinion of young men who live in
Derbyshire; and their intimate friends who live in Hertfordshire are not much
better.  I am sick of them all.  Thank heaven!  I am going to-morrow where I
shall find a man who has not one agreeable quality, who has neither manners nor
sense to recommend him.  Stupid men are the only ones worth knowing, after all".
]],
        par [[
"Take care, Lizzy; that speech savours strongly of disappointment".
]],
    },
}, {
    id = "XXVII-1",
    source = "XXVII",
    title = "What are men to rocks and mountains?",
    content = lines {
        par [[
Before they were separated by the conclusion of the play, she had the unexpected
happiness of an invitation to accompany her uncle and aunt in a tour of pleasure
which they proposed taking in the summer.
]],
        par [[
"We have not quite determined how far it shall carry us", said Mrs.  Gardiner;
"but perhaps, to the Lakes".
]],
        par [[
No scheme could have been more agreeable to Elizabeth, and her acceptance of the
invitation was most ready and grateful.  "My dear, dear aunt", she rapturously
cried, "what delight! what felicity!  You give me fresh life and vigour.  Adieu
to disappointment and spleen.  What are men to rocks and mountains?  Oh, what
hours of transport we shall spend!  And when we do return, it shall not be like
other travellers, without being able to give one accurate idea of anything.  We
will know where we have gone &mdash; we will recollect what we have seen.
Lakes, mountains, and rivers, shall not be jumbled together in our imaginations;
nor, when we attempt to describe any particular scene, will we begin quarrelling
about its relative situation.  Let our first effusions be less insupportable
than those of the generality of travellers".
]],
    },
}, {
    id = "XXXI",
    source = "XXXI",
    title = "The talent of conversing with those I have never seen before",
    content = lines {
        par [[
When coffee was over, Colonel Fitzwilliam reminded Elizabeth of having promised
to play to him; and she sat down directly to the instrument.  He drew a chair
near her.  Lady Catherine listened to half a song, and then talked, as before,
to her other nephew; till the latter walked away from her, and moving with his
usual deliberation towards the pianoforte, stationed himself so as to command a
full view of the fair performer's countenance.  Elizabeth saw what he was doing,
and at the first convenient pause turned to him with an arch smile, and
said,&mdash;
]],
        par [[
"You mean to frighten me, Mr. Darcy, by coming in all this state to hear me.
But I will not be alarmed, though your sister does play so well.  There is a
stubbornness about me that never can bear to be frightened at the will of
others. My courage always rises with every attempt to intimidate me".
]],
        par [[
"I shall not say that you are mistaken", he replied, "because you could not
really believe me to entertain any design of alarming you; and I have had the
pleasure of your acquaintance long enough to know, that you find great enjoyment
in occasionally professing opinions which, in fact, are not your own".
]],
        par [[
Elizabeth laughed heartily at this picture of herself, and said to Colonel
Fitzwilliam, "Your cousin will give you a very pretty notion of me, and teach
you not to believe a word I say.  I am particularly unlucky in meeting with a
person so well able to expose my real character, in a part of the world where I
had hoped to pass myself off with some degree of credit.  Indeed, Mr. Darcy, it
is very ungenerous in you to mention all that you knew to my disadvantage in
Hertfordshire &mdash; and, give me leave to say, very impolitic too &mdash; for
it is provoking me to retaliate, and such things may come out as will shock your
relations to hear".
]],
        par [[
"I am not afraid of you", said he, smilingly.
]],
        par [[
"Pray let me hear what you have to accuse him of", cried Colonel Fitzwilliam.
"I should like to know how he behaves among strangers".
]],
        par [[
"You shall hear, then &mdash; but prepare for something very dreadful.  The
first time of my ever seeing him in Hertfordshire, you must know, was at a ball
&mdash; and at this ball, what do you think he did?  He danced only four dances!
I am sorry to pain you, but so it was.  He danced only four dances, though
gentlemen were scarce; and, to my certain knowledge, more than one young lady
was sitting down in want of a partner. Mr. Darcy, you cannot deny the fact".
]],
        par [[
"I had not at that time the honour of knowing any lady in the assembly beyond my
own party".
]],
        par [[
"True; and nobody can ever be introduced in a ball-room.  Well, Colonel
Fitzwilliam, what do I play next?  My fingers wait your orders".
]],
        par [[
"Perhaps", said Darcy, "I should have judged better had I sought an
introduction, but I am ill-qualified to recommend myself to strangers".
]],
        par [[
"Shall we ask your cousin the reason of this?" said Elizabeth, still addressing
Colonel Fitzwilliam.  "Shall we ask him why a man of sense and education, and
who has lived in the world, is ill-qualified to recommend himself to
strangers?".
]],
        par [[
"I can answer your question", said Fitzwilliam, "without applying to him.  It is
because he will not give himself the trouble".
]],
        par [[
"I certainly have not the talent which some people possess", said Darcy, "of
conversing easily with those I have never seen before.  I cannot catch their
tone of conversation, or appear interested in their concerns, as I often see
done".
]],
        par [[
"My fingers", said Elizabeth, "do not move over this instrument in the masterly
manner which I see so many women's do.  They have not the same force or
rapidity, and do not produce the same expression.  But then I have always
supposed it to be my own fault &mdash; because I would not take the trouble of
practising.  It is not that I do not believe my fingers as capable as any other
woman's of superior execution".
]],
        par [[
Darcy smiled and said,  "You are perfectly right.  You have employed your time
much better.  No one admitted to the privilege of hearing you can think anything
wanting.  We neither of us perform to strangers".
]],
    },
}, {
    id = "XXXII-0",
    source = "XXXII",
    title = "Danger of sinking into total silence",
    content = lines {
        par [[
Elizabeth was sitting by herself the next morning, and writing to Jane, while
Mrs. Collins and Maria were gone on business into the village, when she was
startled by a ring at the door, the certain signal of a visitor.  As she had
heard no carriage, she thought it not unlikely to be Lady Catherine; and under
that apprehension was putting away her half-finished letter, that she might
escape all impertinent questions, when the door opened, and to her very great
surprise Mr. Darcy, and Mr. Darcy only, entered the room.
]],
        par [[
He seemed astonished too on finding her alone, and apologized for his intrusion,
by letting her know that he had understood all the ladies to be within.
]],
        par [[
They then sat down, and when her inquiries after Rosings were made, seemed in
danger of sinking into total silence.  It was absolutely necessary, therefore,
to think of something; and in this emergency recollecting when she had seen him
last in Hertfordshire, and feeling curious to know what he would say on the
subject of their hasty departure, she observed,&mdash;
]],
    },
}, {
    id = "XXXII-1",
    source = "XXXII",
    title = "What can be the meaning of this",
    content = lines {
        par [[
"What can be the meaning of this?" said Charlotte, as soon as he was gone.  "My
dear Eliza, he must be in love with you, or he would never have called on us in
this familiar way".
]],
        par [[
But when Elizabeth told of his silence, it did not seem very likely, even to
Charlotte's wishes, to be the case; and, after various conjectures, they could
at last only suppose his visit to proceed from the difficulty of finding
anything to do, which was the more probable from the time of year.
]],
        par [[
[&hellip;]
]],
        par [[
But why Mr. Darcy came so often to the Parsonage it was more difficult to
understand. It could not be for society, as he frequently sat there ten minutes
together without opening his lips; and when he did speak, it seemed the effect
of necessity rather than of choice &mdash; a sacrifice to propriety, not a
pleasure to himself.  He seldom appeared really animated.  Mrs.  Collins knew
not what to make of him.  Colonel Fitzwilliam's occasionally laughing at his
stupidity proved that he was generally different, which her own knowledge of him
could not have told her; and as she would have liked to believe this change the
effect of love, and the object of that love her friend Eliza, she set herself
seriously to work to find it out: she watched him whenever they were at Rosings,
and whenever he came to Hunsford; but without much success.  He certainly looked
at her friend a great deal, but the expression of that look was disputable.  It
was an earnest, steadfast gaze, but she often doubted whether there were much
admiration in it, and sometimes it seemed nothing but absence of mind.
]],
    },
}, {
    id = "XXXIII-0",
    source = "XXXIII",
    title = "Unexpectedly met Mr. Darcy",
    content = par [[
More than once did Elizabeth, in her ramble within the park, unexpectedly meet
Mr. Darcy.  She felt all the perverseness of the mischance that should bring him
where no one else was brought; and, to prevent its ever happening again, took
care to inform him, at first, that it was a favourite haunt of hers.  How it
could occur a second time, therefore, was very odd!  Yet it did, and even the
third.  It seemed like wilful ill-nature, or a voluntary penance; for on these
occasions it was not merely a few formal inquiries and an awkward pause and then
away, but he actually thought it necessary to turn back and walk with her.  He
never said a great deal, nor did she give herself the trouble of talking or of
listening much; but it struck her in the course of their third rencounter that
he was asking some odd unconnected questions &mdash; about her pleasure in being
at Hunsford, her love of solitary walks, and her opinion of Mr. and Mrs.
Collins's happiness; and that in speaking of Rosings, and her not perfectly
understanding the house, he seemed to expect that whenever she came into Kent
again she would be staying there too.  His words seemed to imply it.  Could he
have Colonel Fitzwilliam in his thoughts?  She supposed, if he meant anything,
he must mean an allusion to what might arise in that quarter.  It distressed her
a little, and she was quite glad to find herself at the gate in the pales
opposite the Parsonage.
]],
}, {
    id = "XXXIII-1",
    source = "XXXIII",
    title = "With some peculiarities",
    content = par [[
Neither could anything be urged against my father, who, though with some
peculiarities, has abilities which Mr. Darcy himself need not disdain, and
respectability which he will probably never reach.
]],
}, {
    id = "XXXIV",
    source = "XXXIV",
    title = "Disguise of every sort is my abhorrence",
    content = par [[
"[&hellip;] My faults, according to this calculation, are heavy indeed!  But,
perhaps", added he, stopping in his walk, and turning towards her, "these
offences might have been overlooked, had not your pride been hurt by my
honest confession of the scruples that had long prevented my forming any
serious design.  These bitter accusations might have been suppressed, had I,
with greater policy, concealed my struggles, and flattered you into the
belief of my being impelled by unqualified, unalloyed inclination; by
reason, by reflection, by everything.  But disguise of every sort is my
abhorrence.  Nor am I ashamed of the feelings I related.  They were natural
and just.
]],
}, {
    id = "XXXIX",
    source = "XXXIX",
    title = "The generality of the female minds",
    content = lines {
        par [[
"[&hellip;] I was ready to die of laughter.  And then we were so merry all the
way home! we talked and laughed so loud, that anybody might have heard us ten
miles off!".
]],
        par [[
To this, Mary very gravely replied, "Far be it from me, my dear sister, to
depreciate such pleasures.  They would doubtless be congenial with the
generality of female minds.  But I confess they would have no charms for me.  I
should infinitely prefer a book".
]],
        par [[
But of this answer Lydia heard not a word.  She seldom listened to anybody for
more than half a minute, and never attended to Mary at all.
]],
    },
}, {
    id = "XL-0",
    source = "XL",
    title = "The philosopher will derive benefit",
    content = par [[
But Mr. Bennet was not of a disposition to seek comfort for the disappointment
which his own imprudence had brought on in any of those pleasures which too
often console the unfortunate for their folly or their vice.  He was fond of the
country and of books; and from these tastes had arisen his principal enjoyments.
To his wife he was very little otherwise indebted than as her ignorance and
folly had contributed to his amusement.  This is not the sort of happiness which
a man would in general wish to owe to his wife; but where other powers of
entertainment are wanting, the true philosopher will derive benefit from such as
are given.
]],
}, {
    id = "XL-1",
    source = "XL",
    title = "Prepare for another disappointment",
    content = par [[
Upon the whole, therefore, she found, what has been sometimes found before, that
an event to which she had looked forward with impatient desire, did not, in
taking place, bring all the satisfaction she had promised herself.  It was
consequently necessary to name some other period for the commencement of actual
felicity; to have some other point on which her wishes and hopes might be fixed,
and by again enjoying the pleasure of anticipation, console herself for the
present, and prepare for another disappointment.  Her tour to the Lakes was now
the object of her happiest thoughts: it was her best consolation for all the
uncomfortable hours which the discontentedness of her mother and Kitty made
inevitable; and could she have included Jane in the scheme, every part of it
would have been perfect.
]],
}, {
    id = "XLVII",
    source = "XLVII",
    title = "Loss of virtue in a female",
    content = lines {
        par [[
As for Mary, she was mistress enough of herself to whisper to Elizabeth, with a
countenance of grave reflection, soon after they were seated at table, &mdash;
]],
        par [[
"This is a most unfortunate affair, and will probably be much talked of.  But we
must stem the tide of malice, and pour into the wounded bosoms of each other the
balm of sisterly consolation".
]],
        par [[
Then perceiving in Elizabeth no inclination of replying, she added, "Unhappy as
the event must be for Lydia, we may draw from it this useful lesson: &mdash;
that loss of virtue in a female is irretrievable, that one false step involves
her in endless ruin, that her reputation is no less brittle than it is
beautiful, and that she cannot be too much guarded in her behaviour towards the
undeserving of the other sex".
]],
            par [[
Elizabeth lifted up her eyes in amazement, but was too much oppressed to make
any reply. Mary, however, continued to console herself with such kind of moral
extractions from the evil before them.
]],
    },
}, {
    id = "L-0",
    source = "L",
    title = "With decent philosophy",
    content = par [[
The good news quickly spread through the house; and with proportionate speed
through the neighbourhood.  It was borne in the latter with decent philosophy.
To be sure, it would have been more for the advantage of conversation, had Miss
Lydia Bennet come upon the town; or, as the happiest alternative, been secluded
from the world in some distant farm-house.  But there was much to be talked of,
in marrying her; and the good-natured wishes for her well-doing, which had
proceeded before from all the spiteful old ladies in Meryton, lost but little of
their spirit in this change of circumstances, because with such a husband her
misery was considered certain.
]],
}, {
    id = "L-1",
    source = "L",
    title = "While he was mortal",
    content = lines {
        par [[
From such a connection she could not wonder that he should shrink.  The wish of
procuring her regard, which she had assured herself of his feeling in
Derbyshire, could not in rational expectation survive such a blow as this.  She
was humbled, she was grieved; she repented, though she hardly knew of what.  She
became jealous of his esteem, when she could no longer hope to be benefited by
it.  She wanted to hear of him, when there seemed the least chance of gaining
intelligence.  She was convinced that she could have been happy with him, when
it was no longer likely they should meet.
]],
        par [[
What a triumph for him, as she often thought, could he know that the proposals
which she had proudly spurned only four months ago would now have been gladly
and gratefully received!  He was as generous, she doubted not, as the most
generous of his sex.  But while he was mortal, there must be a triumph.
]],
        par [[
She began now to comprehend that he was exactly the man who, in disposition and
talents, would most suit her.  His understanding and temper, though unlike her
own, would have answered all her wishes.  It was an union that must have been to
the advantage of both: by her ease and liveliness, his mind might have been
softened, his manners improved; and from his judgment, information, and
knowledge of the world, she must have received benefit of greater importance.
]],
        par [[
But no such happy marriage could now teach the admiring multitude what connubial
felicity really was.  An union of a different tendency, and precluding the
possibility of the other, was soon to be formed in their family.
]],
        par [[
How Wickham and Lydia were to be supported in tolerable independence she could
not imagine.  But how little of permanent happiness could belong to a couple who
were only brought together because their passions were stronger than their
virtue, she could easily conjecture.
]],
    },
}, {
    id = "LVIII-0",
    source = "LVIII",
    title = "One word from you will silence me on this subject for ever",
    content = lines {
        par [[
After a short pause, her companion added, "You are too generous to trifle with
me.  If your feelings are still what they were last April, tell me so at once.
My affections and wishes are unchanged; but one word from you will silence me on
this subject for ever".
]],
        par [[
Elizabeth, feeling all the more than common awkwardness and anxiety of his
situation, now forced herself to speak; and immediately, though not very
fluently, gave him to understand that her sentiments had undergone so material a
change since the period to which he alluded, as to make her receive with
gratitude and pleasure his present assurances.  The happiness which this reply
produced was such as he had probably never felt before; and he expressed himself
on the occasion as sensibly and as warmly as a man violently in love can be
supposed to do.  Had Elizabeth been able to encounter his eyes, she might have
seen how well the expression of heartfelt delight diffused over his face became
him: but though she could not look she could listen; and he told her of feelings
which, in proving of what importance she was to him, made his affection every
moment more valuable.  They walked on without knowing in what direction.  There
was too much to be thought, and felt, and said, for attention to any other
objects.  She soon learnt that they were indebted for their present good
understanding to the efforts of his aunt, who did call on him in her return
through London, and there relate her journey to Longbourn, its motive, and the
substance of her conversation with Elizabeth; dwelling emphatically on every
expression of the latter, which, in her Ladyship's apprehension, peculiarly
denoted her perverseness and assurance, in the belief that such a relation must
assist her endeavours to obtain that promise from her nephew which she had
refused to give.  But, unluckily for her Ladyship, its effect had been exactly
contrariwise.
]],
        par [[
"It taught me to hope", said he, "as I had scarcely ever allowed myself to hope
before.  I knew enough of your disposition to be certain, that had you been
absolutely, irrevocably decided against me, you would have acknowledged it to
Lady Catherine frankly and openly".
]],
    },
}, {
    id = "LVIII-1",
    source = "LVIII",
    title = "You must learn some of my philosophy",
    content = lines {
        par [[
"When I wrote that letter", replied Darcy, "I believed myself perfectly calm and
cool; but I am since convinced that it was written in a dreadful bitterness of
spirit".
]],
        par [[
"The letter, perhaps, began in bitterness, but it did not end so.  The adieu is
charity itself.  But think no more of the letter.  The feelings of the person
who wrote and the person who received it are now so widely different from what
they were then, that every unpleasant circumstance attending it ought to be
forgotten.  You must learn some of my philosophy.  Think only of the past as its
remembrance gives you pleasure".
]],
        par [[
"I cannot give you credit for any philosophy of the kind.  Your retrospections
must be so totally void of reproach, that the contentment arising from them is
not of philosophy, but, what is much better, of ignorance.  But with me, it is
not so.  Painful recollections will intrude, which cannot, which ought not to be
repelled.  I have been a selfish being all my life, in practice, though not in
principle.  As a child I was taught what was right, but I was not taught to
correct my temper.  I was given good principles, but left to follow them in
pride and conceit.  Unfortunately an only son (for many years an only child), I
was spoiled by my parents, who, though good themselves, (my father particularly,
all that was benevolent and amiable), allowed, encouraged, almost taught me to
be selfish and overbearing, to care for none beyond my own family circle, to
think meanly of all the rest of the world, to wish at least to think meanly of
their sense and worth compared with my own.  Such I was, from eight to
eight-and-twenty; and such I might still have been but for you, dearest,
loveliest Elizabeth!  What do I not owe you!  You taught me a lesson, hard
indeed at first, but most advantageous.  By you, I was properly humbled.  I came
to you without a doubt of my reception.  You showed me how insufficient were all
my pretensions to please a woman worthy of being pleased".
]],
    },
}, {
    id = "LVIII-2",
    source = "LVIII",
    title = "Had yet to learn to be laughed at",
    content = par [[
Elizabeth longed to observe that Mr. Bingley had been a most delightful friend;
so easily guided that his worth was invaluable; but she checked herself.  She
remembered that he had yet to learn to be laughed at, and it was rather too
early to begin.  In anticipating the happiness of Bingley, which of course was
to be inferior only to his own, he continued the conversation till they reached
the house.
]],
}, {
    id = "LIV-0",
    source = "LIV",
    title = "It is settled between us already",
    content = lines {
        par [[
"Good heaven! can it be really so?  Yet now I must believe you", cried Jane.
"My dear, dear Lizzy, I would, I do congratulate you; but are you certain
&mdash; forgive the question &mdash; are you quite certain that you can be happy
with him?".
]],
        par [[
"There can be no doubt of that. It is settled between us already that we are to
be the happiest couple in the world[&hellip;]".
]],
    },
}, {
    id = "LIV-1",
    source = "LIV",
    title = "I know your disposition",
    content = par [[
"Lizzy", said her father, "I have given him my consent.  He is the kind of man,
indeed, to whom I should never dare refuse anything, which he condescended to
ask.  I now give it to you, if you are resolved on having him.  But let me
advise you to think better of it.  I know your disposition, Lizzy.  I know that
you could be neither happy nor respectable, unless you truly esteemed your
husband, unless you looked up to him as a superior.  Your lively talents would
place you in the greatest danger in an unequal marriage.  You could scarcely
escape discredit and misery.  My child, let me not have the grief of seeing you
unable to respect your partner in life.  You know not what you are about".
]],
}}

return {
    title = {
        en = "Pride and prejudice",
        it = "Orgoglio e pregiudizio",
        pt = "Orgulho e preconceito",
    },
    link = "https://gutenberg.org/ebooks/1342",
    cover = "pride_and_prejudice.jpg",
    author = {
        en = "Jane Austen",
        it = "Jane Austen",
        pt = "Jane Austen",
    },
    timestamp = { 1690400089, "2023-07-26T19:34:49" },
    category = "general",
    languages = { "en", "it", "pt" },
    description = description,
    intro = intro,
    content = {
        en = content,
        it = content_it,
        pt = content_pt,
    },
    citations = citations,
}
