local description <const> = {
    [[
Some literary works are considered great for their content alone, but a few can
also be credited with altering the course of history.  In the case of the
horrors of the 20th century, Aleksandr Solzhenitsyn's <i>The Gulag
Archipelago</i> is thought of as "the book which brought down the Soviet Union";
it certainly deserves the title, but it was one in a vast network of <span
lang="ru">самиздат</span> (<i>samizdat</i>), covert self-published books which
subverted the heavy censorship of the Soviet bloc.
]],
    [[
Václav Havel, a poet and playwright who later became Czechoslovakia's last
president, and subsequently the first of the newly-formed Czech Republic, was
the author of one of these works.  His focus is not on grandiose political
ideas: rather, his thesis is that it is in ordinary people, the seemingly
<i>powerless</i>, where in truth all power resides.  Such ideological systems
are a reflection of their own faults, of <i>living in a lie</i>, and so it is in
their capacity, and their responsibility, to oppose them by <i>living within the
truth</i>.
]],
}

local intro <const> = lines {
    par(description[1]),
    par(description[2]),
}

local content <const> = lines {
    h2_link { "moral-crisis", "Moral crisis" },
    par [[
A major concern of the book is the correct identification of the conditions
which allowed the establishment of the Soviet system.  For this, it rejects the
"messianic" propositions of political theories.  It has no "ideal project" which
is to be imposed on the "unconscious" masses.  On the contrary, Havel
concentrates on what he calls the <i>pre-political</i>: his battle is neither
political, social, nor military, but takes place in "the obscure arena of being
itself".
]],
    par [[
By the time the essay was written, the heroism of the communist revolution had
long faded, and even the attempts to resurrect some of those ideals via
political means (some of which Havel had direct participation in) had failed.
Ideology was perpetuated because of, in his words, a <i>deep moral crisis</i>.
]],
    blockquote [[
[Our system] commands an incomparably more precise, logically structured,
generally comprehensible and, in essence, extremely flexible ideology that, in
its elaborateness and completeness, is almost a secularized religion.  It offers
a ready answer to any question whatsoever; it can scarcely be accepted only in
part, and accepting it has profound implications for human life.  In an era when
metaphysical and existential certainties are in a state of crisis, when people
are being uprooted and alienated and are losing their sense of what this world
means, this ideology inevitably has a certain hypnotic charm.  To wandering
humankind it offers an immediately available home: all one has to do is accept
it, and suddenly everything becomes clear once more, life takes on new meaning,
and all mysteries, unanswered questions, anxiety, and loneliness vanish.  Of
course, one pays dearly for this low-rent home: the price is abdication of one's
own reason, conscience, and responsibility, for an essential aspect of this
ideology is the consignment of reason and conscience to a higher authority.
]],
    par [[
It is this which more than anything made the book relevant even outside the
Eastern sphere then (when it was, for this reason, just as much a critique of
Western democracies) and still does today almost fifty years later.  While it
discusses a particular point in political history, much of it can be read
&mdash; as is the case with great literature &mdash; as if it were written
today: its subject is the eternal struggle of the human soul.
]],
    blockquote(lines {
        par [[
Therefore not only does the system alienate humanity, but at the same time
alienated humanity supports this system as its own involuntary masterplan, as a
degenerate image of its own degeneration, as a record of people's own failure as
individuals.
]],
        par [[
The essential aims of life are present naturally in every person. In everyone
there is some longing for humanity’s rightful dignity, for moral integrity, for
free expression of being and a sense of transcendence over the world of
existence. Yet, at the same time, each person is capable, to a greater or lesser
degree, of coming to terms with living within the lie. Each person somehow
succumbs to a profane trivialization of his inherent humanity, and to
utilitarianism. In everyone there is some willingness to merge with the
anonymous crowd and to flow comfortably along with it down the river of
pseudolife. This is much more than a simple conflict between two identities.  It
is something far worse: it is a challenge to the very notion of identity itself.
]],
    }),
    h2_link { "the-greengrocer", "The greengrocer" },
    par [[
Just as he recognizes the ineptitude of political means as a solution for moral
questions, Havel also does not assign blame (or salvation) to any particular
faction.  Instead, his central "characters" are everyday people: a greengrocer,
an office worker, a brewer, etc.
]],
    blockquote [[
The manager of a fruit-and-vegetable shop places in his window, among the onions
and carrots, the slogan: “Workers of the world, unite!”.  Why does he do it?
What is he trying to communicate to the world?  Is he genuinely enthusiastic
about the idea of unity among the workers of the world?  Is his enthusiasm so
great that he feels an irrepressible impulse to acquaint the public with his
ideals?  Has he really given more than a moment's thought to how such a
unification might occur and what it would mean?
]],
    par [[
The apathy and complacency of those who choose to display signs of their
conformance and obedience &mdash; a spectacle as common today as it was in 1978
&mdash; is where the blame is to fall: on those who willingly let themselves be
normalized and trivialized.  This cuts across all of society, it is not "the
product of some diabolical higher will"; as Solzhenitsyn famously wrote, "the
line separating good and evil passes not through states, nor between classes,
nor between political parties either &mdash; but right through every human heart
&mdash; and through all human hearts".  Prime-minister and greengrocer are
equally "unfree" in their ignominy.
]],
    blockquote [[
Let us take note: if the greengrocer had been instructed to display the slogan
"I am afraid and therefore unquestioningly obedient", he would not be nearly as
indifferent to its semantics, even though the statement would reflect the truth.
The greengrocer would be embarrassed and ashamed to put such an unequivocal
statement of his own degradation in the shop window, and quite naturally so, for
he is a human being and thus has a sense of his own dignity.
]],
    par [[
It is through their failures, and because of them, that such an ideological
system develops.  Only in this condition of moral degeneration can other forces
take command.  But it is also their willing participation that provides the
conditions for the perpetuation of this system, as Havel incisively identifies.
It vests their dishonorable conduct with a semblance of morality, and that
conduct is rewarded with something which on the surface resembles character,
without requiring any real virtue.  A co-dependence is created between the
system and those involved in it.  Life becomes a "world of appearances trying to
pass for reality".
]],
    blockquote [[
Ideology is a specious way of relating to the world.  It offers human beings the
illusion of an identity, of dignity, and of morality while making it easier for
them to <em>part</em> with them.  As the repository of something suprapersonal
and objective, it enables people to deceive their conscience and conceal their
true position and their inglorious <i>modus vivendi</i>, both from the world and
from themselves.  [&hellip;] It is directed toward people and toward God.  It is
a veil behind which human beings can hide their own fallen existence, their
trivialization, and their adaptation to the status quo.
]],
    h2_link { "truth", "Truth" },
    par [[
The brilliant turn of the book happens in chapter VII, where Havel begins to
show how the very same people who, by their own actions, create and perpetuate
the system, are the ones who alone posses the power to combat it.
]],
    blockquote [[
Let us now imagine that one day something in our greengrocer snaps and he stops
putting up the slogans merely to ingratiate himself.  He stops voting in
elections he knows are a farce.  He begins to say what he really thinks at
political meetings.  And he even finds the strength in himself to express
solidarity with those whom his conscience commands him to support.  In this
revolt the greengrocer steps out of living within the lie.  He rejects the
ritual and breaks the rules of the game.  He discovers once more his suppressed
identity and dignity. He gives his freedom a concrete significance. His revolt
is an attempt to <em>live within the truth</em>.
]],
    par [[
The impetus of this choice is the same "inherent humanity" he recognizes in
every person, and it can only be manifested as an expression of their
<i>authentic existence</i>.  It has an intrinsic morality, since it is rooted in
the sense of duty felt for one's self and his fellow citizens.
]],
    blockquote(lines {
        par [[
The profound crisis of human identity brought on by living within a lie, a
crisis which in turn makes such a life possible, certainly possesses a moral
dimension as well; it appears, among other things, as <em>a deep moral crisis in
society</em>.  A person who has been seduced by the consumer value system, whose
identity is dissolved in an amalgam of the accouterments of mass civilization,
and who has no roots in the order of being, no sense of responsibility for
anything higher than his own personal survival, is a <em>demoralized</em>
person.  The system depends on this demoralization, deepens it, is in fact a
projection of it into society.
]],
        par [[
Living within the truth, as humanity's revolt against an enforced position, is,
on the contrary, an attempt to regain control over one's own sense of
responsibility.  In other words, it is clearly a moral act, not only because one
must pay so dearly for it, but principally because it is not self-serving: the
risk may bring rewards in the form of a general amelioration in the situation,
or it may not.
]],
    }),
    par [[
His proposition, however, is far from being delusionally naive: there is no
attempt to disguise the fact that the consequences of such revolt are dire and
possibly fatal.  In fact, the book is dedicated to Jan Patočka, a philosopher
who died following police interrogation.  The "world of appearances" has to be
maintained by force, since it is not rooted in reality.  It is only because it
is so pervasive as to form the "panorama of everyday life" that it can continue
to exist virtually unnoticed, and any attempt of self-determination is an attack
against it.
]],
    blockquote [[
The greengrocer has not committed a simple, individual offense, isolated in its
own uniqueness, but something incomparably more serious.  By breaking the rules
of the game, he has disrupted the game as such.  He has exposed it as a mere
game.  He has shattered the world of appearances, the fundamental pillar of the
system.  He has upset the power structure by tearing apart what holds it
together.  He has demonstrated that living a lie is living a lie.  He has broken
through the exalted facade of the system and exposed the real, base foundations
of power.  He has said that the emperor is naked.  And because the emperor is in
fact naked, something extremely dangerous has happened: by his action, the
greengrocer has addressed the world.  He has enabled everyone to peer behind the
curtain.  He has shown everyone that it is possible to live within the truth.
Living within the lie can constitute the system only if it is universal.  The
principle must embrace and permeate everything.  There are no terms whatsoever
on which it can co-exist with living within the truth, and therefore everyone
who steps out of line <em>denies it in principle and threatens it in its
entirety</em>.
]],
    par [[
Truth is <em>antithetical</em> to a life of lies, and it cannot be tolerated in
that environment.  The entire system must dismiss or suppress it; and because it
is in the end a projection of the will of those who compose it, this means those
very people will revolt against this truthful existence.  As the inhabitants of
Plato's cave, they will turn against those who would point the way to freedom
from their own prison.
]],
    blockquote [[
This is understandable: as long as appearance is not confronted with reality, it
does not seem to be appearance.  As long as living a lie is not confronted with
living the truth, the perspective needed to expose its mendacity is lacking.  As
soon as the alternative appears, however, it threatens the very existence of
appearance and living a lie in terms of what they are, both their essence and
their all-inclusiveness.  And at the same time, it is utterly unimportant how
large a space this alternative occupies: its power does not consist in its
physical attributes but in the light it casts on those pillars of the system and
on its unstable foundations.  After all, the greengrocer was a threat to the
system not because of any physical or actual power he had, but because his
action went beyond itself, because it illuminated its surroundings and, of
course, because of the incalculable consequences of that illumination.  In the
post-totalitarian system, therefore, living within the truth has more than a
mere existential dimension (returning humanity to its inherent nature), or a
noetic dimension (revealing reality as it is), or a moral dimension (setting an
example for others).  It also has an unambiguous <em>political</em> dimension.
If the main pillar of the system is living a lie, then it is not surprising that
the fundamental threat to it is living the truth.  This is why it must be
suppressed more severely than anything else.
]],
    h2_link { "only-a-god-can-save-us", "Only a god can save us" },
    par [[
This "authentic existence" is the ultimate power that every human being
possesses.  Here the perfect example is Solzhenitsyn's expulsion from Russia: he
had no political or military power, his only force was his "dreadful wellspring
of truth".  With this point Havel begins to illustrate that in the same spirit
lies the answer to the moral crisis he identifies at the beginning of the book.
Man can recognize that he was created in the image of something higher than
himself and strive in that direction.
]],
    blockquote [[
The greengrocer may begin to do something concrete, something that goes beyond
an immediately personal self-defensive reaction against manipulation, something
that will manifest his newfound sense of higher responsibility.
]],
    blockquote [[
The point where living within the truth ceases to be a mere negation of living
with a lie and becomes articulate in a particular way is the point at which
something is born that might be called the "the independent spiritual, social,
and political life of society".
]],
    par [[
It is in this movement towards truth that individuals can find <em>true</em>
authenticity and meaning.  The satisfaction provided by adherence to ideology is
illusory and in truth degrading (as Socrates says, "for they fill themselves
with that which is not substantial", to quote the <i>Republic</i> again),
compared to this mode of living which is a sincere manifestation of their own
individuality.
]],
    blockquote [[
If the basic job of the "dissident" movements is to serve truth, that is, to
serve the real aims of life, and if that necessarily develops into a defense of
individuals and their right to a free and truthful life (that is, a defense of
human rights and a struggle to see the laws respected), then another stage of
this approach, perhaps the most mature stage so far, is what Václav Benda called
the development of “parallel structures”.
]],
    par [[
In this "second culture" or "parallel polis", writers, philosophers, historians,
sociologists, teachers, clergymen, painters, musicians, singers, etc. all become
"dissidents" (which Havel makes a point of always writing in quotes) by the mere
fact that they refuse to yield to the demoralizing force of the main "culture".
However, he emphatically warns that an "authentic existence" is not an
endorsement of elitism or radical individualism (never has this been a more
important point than in our own times).
]],
    blockquote [[
Historical experience teaches us that any genuinely meaningful point of
departure in an individuals life usually has an element of universality about
it.  In other words, it is not something partial, accessible only to a
restricted community, and not transferable to any other.  On the contrary, it
must be potentially accessible to everyone; it must foreshadow a general
solution and, thus, it is not just the expression of an introverted,
self-contained responsibility that individuals have to and for themselves alone,
but responsibility to and for the <em>world</em>.  Thus it would be quite wrong
to understand the parallel structures and the parallel <i>polis</i> as a retreat
into a ghetto and as an act of isolation, addressing itself only to the welfare
of those who had decided on such a course, and who are indifferent to the rest.
It would be wrong, in short, to consider it an essentially group solution that
has nothing to do with the general situation.  Such a concept would, from the
start, alienate the notion of living within the truth from its proper point of
departure, which is concern for others, transforming it ultimately into just
another more sophisticated version of living within a lie.
]],
    par [[
While it is each individual's mission to act in accordance with their own
convictions, that still happens in the realm of objective reality.  Throughout
the text, living in a lie has been contrasted with living within <em>the</em>
truth (the definite article is crucial).  This "second culture" still has an
obligation to the common social sphere, and in fact can only derive its meaning
from it: if it isolated itself in its own reality, it would be no less
"schizophrenic" than the people acting in accordance with the system.
The relation to Christian morality ("catholic", from the Greek <span
lang="grc">κᾰθολῐκός</span>, means literally "universal" or "general") is
obvious and it is used here as a model.
]],
    blockquote [[
Patočka used to say that the most interesting thing about responsibility is that
we carry it with us everywhere.  That means that responsibility is ours, that we
must accept it and grasp it here, now, in this place in time and space where the
Lord has set us down, and that we cannot lie our way out of it by moving
somewhere else, whether it be to an Indian ashram or to a parallel <i>polis</i>.
If Western young people so often discover that retreat to an Indian monastery
fails them as an individual or group solution, then this is obviously because,
and only because, it lacks that element of universality, since not everyone can
retire to an ashram.  Christianity is an example of an opposite way out: it is a
point of departure for me here and now &mdash; but only because anyone,
anywhere, at any time, may avail themselves of it.  In other words, the parallel
<i>polis</i> points beyond itself and makes sense only as an act of deepening
one's responsibility to and for the whole, as a way of discovering the most
appropriate locus for this responsibility, not as an escape from it.
]],
    par [[
This is his proposition for our moral crisis.  Citing Martin Heidegger's
proclamation that "only a god can save us" from it, he points not to politics,
or economics, or law, or technology, but to individual responsibility, beyond
the self, towards humanity's rightful dignity, as the God who can indeed save
us.
]],
    blockquote [[
I have long since come to realize, however, that it is just not that simple and
that no opposition party in and of itself, just as no new electoral laws in and
of themselves, could make society proof against some new form of violence. No
"dry" organizational measures in themselves can provide that guarantee, and we
would be hard-pressed to find in them that God who alone can save us.
]],
    blockquote [[
These are all areas where the consequences of an existential revolution can and
must be felt; but their most intrinsic locus can only be human existence in the
profoundest sense of the word. It is only from that basis that it can become a
generally ethical — and, of course, ultimately a political — reconstitution of
society.
]],
    par [[
<i>And ye shall know the truth</i>,<br/>
<i>and the truth shall make you free</i>
]],
}

local content_pt <const> = lines {
    par [[
Algumas obras literárias são consideradas grandiosas somente pelo seu conteúdo,
mas algumas poucas podem também ser creditadas por alterar o curso da história.
No caso dos horrores do século XX, o <i>Arquipélago Gulag</i> de Aleksandr
Solzhenitsyn é considerado "o livro que derrubou a União Soviética"; certamente
merece o título, mas foi um numa vasta rede de <span lang="ru">самиздат</span>
(<i>samizdat</i>), livros de publicação própria e oculta que subverteram a
censura pesada do bloco soviético.
]],
    par [[
Václav Havel, um poeta e dramaturgo que mais tarde se tornou o último presidente
da Tchecoslováquia, e subsequentemente o primeiro da recém-formada República
Tcheca, foi o autor de uma dessas obras.  Seu foco não é em ideias políticas
grandiosas: ao contrário, sua tese é que é nas pessoas ordinárias, os
aparentemente <i>impotentes</i>, que na verdade todo o poder reside.  Sistemas
ideológicos como esses são uma reflexão de suas próprias falhas, do <i>viver
numa mentira</i>, e por isso é sua capacidade, e sua responsabilidade, oporem-se
a eles <i>vivendo na verdade</i>.
]],
    h2_link { "crise-moral", "Crise moral" },
    par [[
Uma das maiores preocupações do livro é a identificação correta das condições
que permitiram o estabelecimento do sistema soviético.  Para isso, rejeita as
proposições "messiânicas" de teorias políticas.  Não tem um "projeto ideal" que
deve ser imposto às massas "inconscientes".  Pelo contrário, Havel se concentra
no que chama de <i>pré-político</i>: sua luta não é política, social, ou
militar, mas acontece na "arena obscura do próprio ser".
]],
    par [[
Na época em que o ensaio foi escrito, o heroísmo da revolução comunista já havia
há muito desvanecido, e mesmo as tentativas de ressuscitar alguns daqueles
ideais via meios políticos (em alguns dos quais Havel teve participação direta)
haviam falhado.  A ideologia era perpetuada por causa de, em suas palavras, uma
<i>profunda crise moral</i>.
]],
    blockquote [[
[Nosso sistema] comanda um ideologia incomparavelmente mais precisa, logicamente
estruturada, geralmente compreendida, e, em essência, extremamente flexível que,
na sua elaboração e completude, é quase uma religião secular.  Oferece respostas
prontas para qualquer questão em absoluto; dificilmente pode ser aceita somente
em parte, e aceitá-la tem implicações profundas para a vida humana.  Numa era em
que certezas metafísicas e existenciais estão num estado de crise, em que
pessoas são extirpadas e alienadas e perdem seu senso do que esse mundo
significa, essa ideologia inevitavelmente tem um certo encanto hipnótico.  Para
a humanidade errante oferece um lar imediatamente disponível: tudo o que alguém
deve fazer é aceitá-la, e de súbito tudo fica claro novamente, a vida adquire um
novo significado, e todos os mistérios, perguntas não respondidas, ansiedades, e
solidões se esvaem.  Certamente, paga-se caro por esse lar barato: o preço é a
abdicação da própria razão, consciência, e responsabilidade, porque um aspecto
essencial dessa ideologia é a consignação da razão e consciência para uma
autoridade maior.
]],
    par [[
É isso que mais que qualquer coisa tornou o livro relevante mesmo fora da esfera
do oriente na época (quando era, por esse motivo, também uma crítica das
democracias ocidentais) e ainda o faz hoje, quase cinquenta anos depois.  Apesar
de discutir um ponto particular da história política, muito dele pode ser lido
&mdash; como é o caso na grande literatura &mdash; como se tivesse sido escrito
hoje: seu tema é a luta eterna da alma humana.
]],
    blockquote(lines {
        par [[
Dessa forma não só o sistema aliena a humanidade, mas ao mesmo tempo a
humanidade alienada suporta esse sistema como seu próprio plano mestre
involuntário, como uma imagem degenerada da sua própria degeneração, como um
registro das falhas das próprias pessoas como indivíduos.
]],
        par [[
Os objetivos essenciais da vida estão presentes naturalmente em todas as
pessoas.  Em todas há uma ânsia pela dignidade legítima da humanidade, pela
integridade moral, pela liberdade de expressão do ser e um senso de
transcendência sobre o mundo da existência.  Ainda assim, ao mesmo tempo, cada
pessoa é capaz de, num grau maior ou menor, contentar-se em viver na mentira.
Cada pessoa de alguma forma sucumbe à trivialização profana de sua humanidade
inerente, e ao utilitarianismo.  Em todos há uma disposição para se juntar à
massa anônima e flutuar confortavelmente pelo rio da pseudo-vida.  Isso é muito
mais que um simples conflito entre duas identidades.  É algo muito pior: é um
desafio à própria noção de identidade.
]],
    }),
    h2_link { "o-verdureiro", "O verdureiro" },
    par [[
Assim como reconhece a inaptidão dos meios políticos como solução para questões
morais, Havel também não atribui culpa (ou salvação) a nenhuma facção em
particular.  Ao invés disso, seus "personagens" centrais são pessoas ordinárias:
um verdureiro, uma empregada de escritório, um cervejeiro, etc.
]],
    blockquote [[
O gerenciador de um mercado de frutas e vegetais põe em sua janela, junto às
cebolas e cenouras, a citação: "Trabalhadores do mundo, uni-vos!".  Por que faz
isso?  O que está tentando comunicar ao mundo?  Está genuinamente entusiástico
sobre a ideia de união entre os trabalhadores do mundo?  Seu entusiasmo é tão
grande que sente o impulso irrepressível de familiarizar o público com seus
ideais?  Ele realmente pensou por mais de um momento em como essa unificação
poderia ocorrer e o que significaria?
]],
    par [[
A apatia e complacência daqueles que escolhem mostrar sinais de sua conformidade
e obediência &mdash; um espetáculo tão comum hoje quanto era em 1978 &mdash; é
onde a culpa deve ser posta: naqueles que por vontade própria se deixam ser
normalizados e trivializados.  Isso corta a sociedade como um todo, não é "o
produto de alguma vontade diabólica superior"; como Solzhenitsyn famosamente
escreveu: "a linha separando o bem do mal passa não por estados, ou por classes,
ou sequer entre partidos políticos &mdash; mas por todo coração humano &mdash; e
por todos os corações humanos".  Primeiro-ministro e verdureiro são igualmente
"não-livres" em sua ignomínia.
]],
    blockquote [[
Notemos: se o verdureiro tivesse sido instruído a mostrar a declaração "eu sou
covarde e por isso inquestionavelmente obediente", não seria remotamente
indiferente à sua semântica, mesmo a declaração refletindo a verdade.  O
verdureiro se sentiria embaraçado e envergonhado pondo uma declaração tão
inequívoca da sua própria degradação na janela de sua loja, muito naturalmente,
porque é um ser humano e por isso tem um senso de sua própria dignidade.
]],
    par [[
É através de suas falhas, e por causa delas, que um sistema ideológico como esse
se desenvolve.  Só nessa condição de degeneração moral podem outras forças tomar
o comando.  Mas é também a sua participação voluntária que provê as condições
necessárias para a perpetuação desse sistema, como Havel incisivamente
identifica.  Veste a sua conduta desonrosa de um semblante de moralidade, e essa
conduta é recompensada com algo que na superfície se assemelha a caráter, sem
requerer qualquer virtude real.  Uma co-dependência é criada entre o sistema e
aqueles envolvidos nele.  A vida se torna um "mundo de aparências tentando
passar por realidade".
]],
    blockquote [[
A ideologia é uma forma especiosa de se relacionar com o mundo.  Oferece aos
seres humanos a ilusão de uma identidade, de dignidade, e de moralidade enquanto
torna mais fácil para eles <em>se separarem</em> delas.  Como o repositório de
algo supra-pessoal e objetivo, habilita as pessoas a enganarem sua própria
consciência e disfarçarem sua posição verdadeira e seu <i>modus vivendi</i>
inglório, tanto do mundo quanto delas mesmas.  [&hellip;] É direcionada às
pessoas e a Deus.  É um véu por trás do qual seres humanos podem esconder sua
própria existência caída, sua trivialização, e sua adaptação ao status quo.
]],
    h2_link { "verdade", "Verdade" },
    par [[
A volta brilhante do livro acontece no capítulo VII, onde Havel começa a mostrar
como as próprias pessoas que, por suas ações, criam e perpetuam o sistema, são
aquelas que possuem nelas mesmas o poder de combatê-lo.
]],
    blockquote [[
Imaginemos que um dia algum estalo ocorre em nosso verdureiro e ele para de
exibir declarações meramente como forma de agrado.  Para de votar em eleições
que sabe serem uma farsa.  Começa a dizer o que realmente pensa em reuniões
políticas.  E mesmo encontra a força em si mesmo para expressar solidariedade
com aqueles que sua consciência comanda que suporte.  Nessa revolta o verdureiro
deixa a vida na mentira.  Rejeita o ritual e quebra as regras do jogo.  Descobre
mais uma vez sua identidade e dignidade suprimidas.  Dá à sua liberdade uma
significância concreta.  Sua revolta é uma tentativa de <em>viver na
verdade</em>.
]],
    par [[
O ímpeto dessa escolha é a mesma "humanidade inerente" que ele reconhece em
todas as pessoas, e só pode se manifestar como a expressão de sua <i>existência
autêntica</i>.  Tem uma moralidade intrínseca, já que é enraizada no senso de
obrigação sentido por si próprio e por seus concidadãos.
]],
    blockquote(lines {
        par [[
A profunda crise da identidade humana trazida pela vida numa mentira, uma crise
que por sua vez torna esse tipo de vida possível, certamente possui também uma
dimensão moral; aparece, entre outras coisas, como <em>uma profunda crise moral
na sociedade</em>.  Uma pessoa que foi seduzida pelo sistema de valor
consumista, cuja identidade é dissolvida num amálgama dos aparatos da
civilização em massa, e que não tem nenhuma raiz na ordem do ser, nenhum senso
de responsabilidade por qualquer coisa além da sua sobrevivência pessoal, é uma
pessoa <em>desmoralizada</em>.  O sistema depende dessa desmoralização,
aprofunda-a, e é de fato uma projeção dela na sociedade.
]],
        par [[
Viver na verdade, como a revolta da humanidade contra uma posição forçada, é,
pelo contrário, uma tentativa de reconquistar o controle sobre o próprio senso
de responsabilidade.  Em outras palavras, é claramente um ato moral, não só
porque se paga tão caro por ele, mas principalmente porque não é egoísta: o
risco pode trazer recompensas na forma de uma melhora geral na situação, ou não.
]],
    }),
    par [[
Sua proposição, no entanto, está longe de ser delirantemente ingênua: não há
qualquer tentativa de disfarçar o fato de que as consequências dessa revolta são
terríveis e potencialmente fatais.  De fato, o livro é dedicado a Jan Patočka,
filósofo que morreu após interrogação da polícia.  O "mundo de aparências" tem
que ser mantido pela força, já que não é radicado na realidade.  É só porque é
tão permeante a ponto de formar o "panorama da vida quotidiana" que pode
continuar a existir virtualmente despercebido, e qualquer tentativa de
autodeterminação é um ataque contra ele.
]],
    blockquote [[
O verdureiro não cometeu uma ofensa simples, individual, isolada em sua
singularidade, mas algo incomparavelmente mais sério.  Quebrando as regras do
jogo, perturbou o jogo em si.  Expôs o jogo como um mero jogo.  Estilhaçou o
mundo de aparências, o pilar fundamental do sistema.  Perturbou a estrutura de
poder destruindo o que a mantém junta.  Demonstrou que viver numa mentira é
viver numa mentira.  Penetrou a fachada exaltada do sistema e expôs as reais,
baixas fundações do poder.  Disse que o imperador está nu.  E porque o imperador
de fato está nu, algo extremamente perigoso aconteceu: por sua ação, o
verdureiro se endereçou ao mundo.  Habilitou todos a verem por trás da cortina.
Mostrou a todos que é possível viver na verdade.  Viver numa mentira só pode
constituir o sistema se for universal.  O princípio deve abraçar e permear tudo.
Não existem quaisquer termos em que pode coexistir com o viver na verdade, e por
isso todos os que saem da linha <em>rejeitam-no em princípio e ameaçam-no em sua
totalidade</em>.
]],
    par [[
A verdade é <em>antitética</em> a uma vida de mentiras, e não pode ser tolerada
nesse ambiente.  O sistema inteiro tem que dispensá-la ou suprimi-la; e porque é
finalmente uma projeção da vontade daqueles que o compõem, isso significa que
essas próprias pessoas se revoltarão contra a existência verdadeira.  Como os
habitantes da caverna de Platão, vão se voltar contra aqueles que apontam o
caminho para a liberdade de sua própria prisão.
]],
    blockquote [[
Isso é entendível: enquanto as aparências não são confrontadas com a realidade,
não parecem ser aparências.  Enquanto viver numa mentira não é confrontado com
viver na verdade, a perspectiva necessária para expôr sua mendácia não existe.
Assim que a alternativa aparece, no entanto, ameaça a própria existência das
aparências e da vida numa mentira em termos do que são, tanto em sua essência
quanto em seu alcance absoluto.  E ao mesmo tempo, é totalmente irrelevante quão
grande é o espaço ocupado por essa alternativa: seu poder não consiste nos seus
atributos físicos mas na luz que projeta naqueles pilares do sistema e em suas
fundações instáveis.  Enfim, o verdureiro era uma ameaça ao sistema não por
qualquer poder físico ou de fato que tinha, mas porque sua ação foi além dele,
porque iluminou seus arredores e, é claro, por causa das consequências
incalculáveis dessa iluminação.  No sistema pós-totalitário, dessa forma, viver
na verdade tem mais que uma dimensão existencial (retornando a humanidade à sua
natureza inerente), ou uma dimensão noética (revelando a realidade como é), ou
uma dimensão moral (estabelecendo um exemplo aos outros).  Também tem uma
dimensão inequivocamente <em>política</em>.  Se o pilar principal do sistema é
viver numa mentira, então não é surpresa que a principal ameaça a ela seja viver
na verdade.  É por isso que deve ser suprimido mais severamente que qualquer
outra coisa.
]],
    h2_link {
        "apenas-um-deus-pode-nos-salvar",
        "Apenas um deus pode nos salvar",
    },
    par [[
Essa "existência autêntica" é o poder supremo que todo ser humano possui.  Aqui
o exemplo perfeito é a expulsão de Solzhenitsyn da Rússia: não tinha qualquer
poder político ou militar, sua única força era a sua "temível fonte de verdade".
Com esse ponto Havel começa a ilustrar que no mesmo espírito se encontra a
resposta para a crise moral que identifica no início do livro.  O homem pode
reconhecer que foi criado à imagem de algo superior a ele mesmo e se empenhar
nessa direção.
]],
    blockquote [[
O verdureiro pode começar a fazer algo concreto, algo que vai além de uma reação
de autodefesa pessoal imediata contra a manipulação, algo que vai manifestar seu
senso recém encontrado de responsabilidade superior.
]],
    blockquote [[
O ponto em que viver na verdade cessa de ser uma mera negação de viver numa
mentira e se torna articulado de alguma forma é o ponto em que algo nasce que
pode ser chamado da "vida independente espiritual, social, e política da
sociedade".
]],
    par [[
É nesse movimento para a verdade que indivíduos podem encontrar autenticidade e
significado <em>verdadeiros</em>.  A satisfação provida pela aderência à
ideologia é ilusória e em verdade degradante (como diz Sócrates, "porque se
preenchem com aquilo que não é substancial", citando a <i>República</i>
novamente), comparada a esse modo de vida que é uma manifestação sincera da sua
própria individualidade.
]],
    blockquote [[
Se a tarefa básica dos movimentos "dissidentes" é servir à verdade, isso é,
servir aos reais objetivos da vida, e se isso necessariamente se desenvolve numa
defesa de indivíduos e seu direito a uma vida livre e verdadeira (isso é, uma
defesa dos direitos humanos e uma luta para que as leis sejam respeitadas),
então outro estágio dessa abordagem, talvez o estágio mais maduro até agora, é o
que Václav Benda chamou do desenvolvimento de "estruturas paralelas".
]],
    par [[
Nessa "segunda cultura" ou "polis paralela", escritores, filósofos,
historiadores, sociologistas, professores, clérigos, pintores, músicos,
cantores, etc. se tornam "dissidentes" (que Havel sempre escreve
intencionalmente entre aspas) pelo simples fato de se recusarem a se renderem à
força desmoralizante da "cultura" principal.  No entanto, ele enfaticamente
alerta que uma "existência autêntica" não é uma recomendação ao elitismo ou
individualismo radical (e esse ponto nunca foi mais importante que no nosso
tempo).
]],
    blockquote [[
Experiência histórica nos ensina que qualquer ponto de partida genuinamente
significativo na vida de um indivíduo geralmente tem um elemento de
universalidade sobre ele.  Em outras palavras, não é algo parcial, acessível
somente a uma comunidade restrita, e não-transferível a qualquer outra.  Pelo
contrário, deve ser potencialmente acessível a todos; deve prever uma solução
geral e, assim, não é só a expressão de uma responsabilidade introvertida e
auto-contida que indivíduos têm por e para eles mesmos somente, mas
responsabilidade por e para o <em>mundo</em>.  Assim seria muito errado entender
as estruturas paralelas e a polis paralela como um retiro a uma periferia e como
um ato de isolamento, endereçando a si mesmo somente para o bem-estar daqueles
que decidiram seguir tal curso, e que é indiferente ao resto.  Seria errado,
brevemente, considerá-las uma solução de grupo que não tem relação com a
situação geral.  Tal conceito, do início, alienaria a noção de viver na verdade
de seu ponto de partida apropriado, que é a preocupação com os outros,
transformando-a ultimamente em apenas outra versão mais sofisticada da vida numa
mentira.
]],
    par [[
Apesar de ser a missão de cada indivíduo agir de acordo com suas próprias
convicções, isso ainda ocorre no campo da realidade objetiva.  Por todo o texto,
viver numa mentira foi contrastado com viver <em>na</em> verdade (o artigo
definido é crucial).  Essa "segunda cultura" ainda tem uma obrigação para a
esfera social comum, e de fato só pode derivar seu significado dela: se se
isolasse em sua própria "realidade", não seria menos "esquizofrênica" que as
pessoas agindo de acordo com o sistema.  A relação com o cristianismo
("católico", do grego <span lang="grc">κᾰθολῐκός</span>, significa literalmente
"universal" ou "geral") é óbvia e ele é usado aqui como modelo.
]],
    blockquote [[
Patočka costumava dizer que o mais interessante na responsabilidade é que a
carregamos conosco sempre.  Isso significa que a responsabilidade é nossa, que
devemos aceitá-la e tomá-la aqui, agora, nesse ponto do tempo e espaço onde o
Senhor nos colocou, e que não podemos escapar por mentiras ou nos mudando para
outro lugar, seja um ashram indiano ou uma polis paralela.  Se jovens ocidentais
frequentemente descobrem que um retiro para um monastério indiano os falha como
solução individual ou em grupo, então é obviamente porque, e somente porque, não
têm esse elemento de universalidade, já que nem todos podem se retirar a um
ashram.  O cristianismo é um exemplo do caminho oposto de saída: é um ponto de
partida para mim aqui e agora &mdash; mas somente porque qualquer um, em
qualquer lugar, a qualquer tempo, pode fazer uso dele.  Em outras palavras, a
polis paralela aponta além de si mesma e só faz sentido como um ato que
aprofunda a própria responsabilidade por e para o todo, e como uma forma de
descobrir o local dessa responsabilidade, não como um escape dela.
]],
    par [[
Essa é a sua proposição para nossa crise moral.  Citando a proclamação de Martin
Heidegger de que "apenas um deus pode nos salvar" dela, ele aponta não para a
política, ou economia, ou direito, ou tecnologia, mas para a responsabilidade
individual, além do ego, em direção à dignidade legítima da humanidade, como o
Deus que pode de fato nos salvar.
]],
    blockquote [[
Há muito percebi, no entanto, que não é tão simples e que nenhum partido de
oposição por si só, assim como nenhuma lei eleitoral por si só, pode tornar a
sociedade imune a uma nova forma de violência.  Nenhuma medida organizacional
"seca" por si só pode prover essa garantia, e teríamos muita dificuldade em
encontrar nelas aquele deus que pode nos salvar.
]],
    blockquote [[
Essas são todas áreas onde as consequências de uma revolução existencial podem e
devem ser sentidas; mas o seu local mais intrínseco só pode ser a existência
humana no sentido mais profundo da palavra.  É só com essa base que pode se
tornar uma reconstituição ética em geral &mdash; e, é claro, ultimamente
política &mdash; da sociedade.
]],
    par [[
<i>E conhecereis a verdade,</i><br />
<i>e a verdade vos libertará</i>
]],
}

local citations <const> = {{
    id = "II",
    source = "II",
    title = "Ideology as secularized religion",
    content = par [[
One legacy of that original "correct understanding" is a third peculiarity that
makes our systems different from other modern dictatorships: it commands an
incomparably more precise, logically structured, generally comprehensible and,
in essence, extremely flexible ideology that, in its elaborateness and
completeness, is almost a secularized religion.  It offers a ready answer to any
question whatsoever; it can scarcely be accepted only in part, and accepting it
has profound implications for human life.  In an era when metaphysical and
existential certainties are in a state of crisis, when people are being uprooted
and alienated and are losing their sense of what this world means, this ideology
inevitably has a certain hypnotic charm.  To wandering humankind it offers an
immediately available home: all one has to do is accept it, and suddenly
everything becomes clear once more, life takes on new meaning, and all
mysteries, unanswered questions, anxiety, and loneliness vanish.  Of course, one
pays dearly for this low-rent home: the price is abdication of one's own reason,
conscience, and responsibility, for an essential aspect of this ideology is the
consignment of reason and conscience to a higher authority.  The principle
involved here is that the center of power is identical with the center of truth.
]],
}, {
    id = "III-9",
    source = "III",
    title = "The greengrocer",
    content = lines {
        par [[
The manager of a fruit-and-vegetable shop places in his window, among the onions
and carrots, the slogan: "Workers of the world, unite!".  Why does he do it?
What is he trying to communicate to the world?  Is he genuinely enthusiastic
about the idea of unity among the workers of the world?  Is his enthusiasm so
great that he feels an irrepressible impulse to acquaint the public with his
ideals? Has he really given more than a moments thought to how such a
unification might occur and what it would mean?
]],
        par [[
I think it can safely be assumed that the overwhelming majority of shopkeepers
never think about the slogans they put in their windows, nor do they use them to
express their real opinions.  That poster was delivered to our greengrocer from
the enterprise head-quarters along with the onions and carrots.  He put them all
into the window simply because it has been done that way for years, because
everyone does it, and because that is the way it has to be.  If he were to
refuse, there could be trouble.  He could be reproached for not having the
proper decoration in his window; someone might even accuse him of disloyalty.
He does it because these things must be done if one is to get along in life.  It
is one of the thousands of details that guarantee him a relatively tranquil life
``in harmony with society'', as they say.
]],
        par [[
Obviously the greengrocer is indifferent to the semantic content of the slogan
on exhibit; he does not put the slogan in his window from any personal desire to
acquaint the public with the ideal it expresses.  This, of course, does not mean
that his action has no motive or significance at all, or that the slogan
communicates nothing to anyone.  The slogan is really a <em>sign</em>, and as
such it contains a subliminal but very definite message.  Verbally, it might be
expressed this way: "I, the greengrocer XY, live here and I know what I must do.
I behave in the manner expected of me.  I can be depended upon and am beyond
reproach.  I am obedient and therefore I have the right to be left in peace".
This message, of course, has an addressee: it is directed above, to the
greengrocer's superior, and at the same time it is a shield that protects the
greengrocer from potential informers.  The slogan's real meaning, therefore, is
rooted firmly in the greengrocer's existence.  It reflects his vital interests.
But what are those vital interests?
        ]],
        par [[
Let us take note: if the greengrocer had been instructed to display the slogan
"I am afraid and therefore unquestioningly obedient", he would not be nearly as
indifferent to its semantics, even though the statement would reflect the truth.
The greengrocer would be embarrassed and ashamed to put such an unequivocal
statement of his own degradation in the shop window, and quite naturally so, for
he is a human being and thus has a sense of his own dignity.  To overcome this
complication, his expression of loyalty must take the form of a sign which, at
least on its textual surface, indicates a level of disinterested conviction.  It
must allow the greengrocer to say, "What's wrong with the workers of the world
uniting"'.  Thus the sign helps the greengrocer to conceal from himself the low
foundations of his obedience, at the same time concealing the low foundations of
power.  It hides them behind the facade of something high.  And that something
is <em>ideology</em>.
]],
    },
}, {
    id = "III-1",
    source = "III",
    title = "Ideology",
    content = lines {
        par [[
Ideology is a specious way of relating to the world.  It offers human beings the
illusion of an identity, of dignity, and of morality while making it easier for
them to <em>part</em> with them.  As the repository of something suprapersonal
and objective, it enables people to deceive their conscience and conceal their
true position and their inglorious <i>modus vivendi</i>, both from the world and
from themselves.  It is a very pragmatic but, at the same time, an apparently
dignified way of legitimizing what is above, below, and on either side.  It is
directed toward people and toward God.  It is a veil behind which human beings
can hide their own fallen existence, their trivialization, and their adaptation
to the status quo.  It is an excuse that everyone can use, from the greengrocer,
who conceals his fear of losing his job behind an alleged interest in the
unification of the workers of the world, to the highest functionary, whose
interest in staying in power can be cloaked in phrases about service to the
working class.  The primary excusatory function of ideology, therefore, is to
provide people, both as victims and pillars of the post-totalitarian system,
with the illusion that the system is in harmony with the human order and the
order of the universe.
]],
        par [[
The smaller a dictatorship and the less stratified by modernization the society
under it, the more directly the will of the dictator can be exercised,  In other
words, the dictator can employ more or less naked discipline, avoiding the
complex processes of relating to the world and of self-justification which
ideology involves. But the more complex the mechanisms of power become, the
larger and more stratified the society they embrace, and the longer they have
operated historically, the more individuals must be connected to them from
outside, and the greater the importance attached to the ideological excuse.  It
acts as a kind of bridge between the regime and the people, across which the
regime approaches the people and the people approach the regime.  This explains
why ideology plays such an important role in the post-totalitarian system: that
complex machinery of units, hierarchies, transmission belts, and indirect
instruments of manipulation which ensure in countless ways the integrity of the
regime, leaving nothing to chance, would be quite simply unthinkable without
ideology acting as its all-embracing excuse and as the excuse for each of its
parts.
]],
    },
}, {
    id = "IV",
    source = "IV",
    title = "The aims of life",
    content = lines {
        par [[
Between the aims of the post-totalitarian system and the aims of life there is a
yawning abyss: while life, in its essence, moves toward plurality, diversity,
independent self-constitution, and self organization, in short, toward the
fulfillment of its own freedom, the post-totalitarian system demands conformity,
uniformity, and discipline.  While life ever strives to create new and
improbable structures, the post-totalitarian system contrives to force life into
its most probable states. The aims of the system reveal its most essential
characteristic to be introversion, a movement toward being ever more completely
and unreservedly <em>itself</em>, which means that the radius of its influence
is continually widening as well.  This system serves people only to the extent
necessary to ensure that people will serve it.  Anything beyond this, that is to
say, anything which leads people to overstep their predetermined roles is
regarded by the system as an attack upon itself.  And in this respect it is
correct: every instance of such transgression is a genuine denial of the system.
It can be said, therefore, that the inner aim of the post-totalitarian system is
not mere preservation of power in the hands of a ruling clique, as appears to be
the case at first sight.  Rather, the social phenomenon of self-preservation is
subordinated to something higher, to a kind of blind automatism which drives the
system.  No matter what position individuals hold in the hierarchy of power,
they are not considered by the system to be worth anything in themselves, but
only as things intended to fuel and serve this automatism.  For this reason, an
individuals desire for power is admissible only in so far as its direction
coincides with the direction of the automatism of the system.
]],
        par [[
Ideology, in creating a bridge of excuses between the system and the individual,
spans the abyss between the aims of the system and the aims of life.  It
pretends that the requirements of the system derive from the requirements of
life.  It is a world of appearances trying to pass for reality.
]],
        par [[
The post-totalitarian system touches people at every step, but it does so with
its ideological gloves on.  This is why life in the system is so thoroughly
permeated with hypocrisy and lies: government by bureaucracy is called popular
government; the working class is enslaved in the name of the working class; the
complete degradation of the individual is presented as his ultimate liberation;
depriving people of information is called making it available; the use of power
to manipulate is called the public control of power, and the arbitrary abuse of
power is called observing the legal code; the repression of culture is called
its development; the expansion of imperial influence is presented as support for
the oppressed; the lack of free expression becomes the highest form of freedom;
farcical elections become the highest form of democracy; banning independent
thought becomes the most scientific of world views; military occupation becomes
fraternal assistance.  Because the regime is captive to its own lies, it must
falsify everything.  It falsifies the past.  It falsifies the present, and it
falsifies the future.  It falsifies statistics.  It pretends not to possess an
omnipotent and unprincipled police apparatus.  It pretends to respect human
rights.  It pretends to persecute no one.  It pretends to fear nothing.  It
pretends to pretend nothing.
]],
        par [[
Individuals need not believe all these mystifications, but they must behave as
though they did, or they must at least tolerate them in silence, or get along
well with those who work with them.  For this reason, however, they must
<em>live within a lie</em>.  They need not accept the lie.  It is enough for
them to have accepted their life with it and in it.  For by this very fact,
individuals confirm the system, fulfill the system, make the system,
<em>are</em> the system.
]],
    },
}, {
    id = "V-0",
    source = "V",
    title = "The individual as a component of the system",
    content = lines {
        par [[
We have seen that the real meaning of the greengrocer's slogan has nothing to do
with what the text of the slogan actually says.  Even so, this real meaning is
quite clear and generally comprehensible because the code is so familiar: the
greengrocer declares his loyalty (and he can do no other if his declaration is
to be accepted) in the only way the regime is capable of hearing; that is, by
accepting the prescribed <em>ritual</em>, by accepting appearances as reality,
by accepting the given rules of the game.  In doing so, however, he has himself
become a player in the game, thus making it possible for the game to go on, for
it to exist in the first place.
]],
        par [[
If ideology was originally a bridge between the system and the individual as an
individual, then the moment he steps on to this bridge it becomes at the same
time a bridge between the system and the individual as a component of the
system.  That is, if ideology originally facilitated (by acting outwardly) the
constitution of power by serving as a psychological excuse, then from the moment
that excuse is accepted, it constitutes power inwardly, becoming an active
component of that power.  It begins to function as the principal instrument of
ritual communication <em>within</em> the system of power.
]],
    },
}, {
    id = "V-1",
    source = "V",
    title = "World of appearances",
    content = par [[
As the interpretation of reality by the power structure, ideology is always
subordinated ultimately to the interests of the structure.  Therefore, it has a
natural tendency to disengage itself from reality, to create a world of
appearances, to become ritual.  In societies where there is public competition
for power and therefore public control of that power, there also exists quite
    naturally public control of the way that power legitimates itself
    ideologically.  Consequently, in such conditions there are always certain
    correctives that effectively prevent ideology from abandoning reality
    altogether.  Under totalitarianism, however, these correctives disappear,
    and thus there is nothing to prevent ideology from becoming more and more
    removed from reality, gradually turning into what it has already become in
    the post-totalitarian system: a world of appearances, a mere ritual, a
    formalized language deprived of semantic contact with reality and
    transformed into a system of ritual signs that replace reality with
    pseudo-reality.
]],
}, {
    id = "VI-0",
    source = "VI",
    title = "The panorama of everyday life",
    content = lines {
        par [[
Why in fact did our greengrocer have to put his loyalty on display in the shop
window?  Had he not already displayed it sufficiently in various internal or
semipublic ways?  At trade union meetings, after all, he had always voted as he
should.  He had always taken part in various competitions.  He voted in
elections like a good citizen.  He had even signed the ``anti-Charter''.  Why,
on top of all that, should he have to declare his loyalty publicly?  After all,
the people who walk past his window will certainly not stop to read that, in the
greengrocer's opinion, the workers of the world ought to unite.  The fact of the
matter is, they don't read the slogan at all, and it can be fairly assumed they
don't even see it.  If you were to ask a woman who had stopped in front of his
shop what she saw in the window, she could certainly tell whether or not they
had tomatoes today, but it is highly unlikely that she noticed the slogan at
all, let alone what it said.
]],
        par [[
It seems senseless to require the greengrocer to declare his loyalty publicly.
But it makes sense nevertheless.  People ignore his slogan, but they do so
because such slogans are also found in other shop windows, on lampposts,
bulletin boards, in apartment windows, and on buildings; they are everywhere, in
fact.  They form part of the panorama of everyday life.  Of course, while they
ignore the details, people are very aware of that panorama as a whole.  And what
else is the greengrocer's slogan but a small component in that huge backdrop to
    daily life?
]],
        par [[
The greengrocer had to put the slogan in his window, therefore, not in the hope
that someone might read it or be persuaded by it, but to contribute, along with
thousands of other slogans, to the panorama that everyone is very much aware of.
This panorama, of course, has a subliminal meaning as well: it reminds people
where they are living and what is expected of them. It tells them what everyone
else is doing, and indicates to them what they must do as well, if they don't
want to be excluded, to fall into isolation, alienate themselves from society,
break the rules of the game, and risk the loss of their peace and tranquility
and security.
]],
        par [[
The woman who ignored the greengrocer's slogan may well have hung a similar
slogan just an hour before in the corridor of the office where she works.  She
did it more or less without thinking, just as our greengrocer did, and she could
do so precisely because she was doing it against the background of the general
panorama and with some awareness of it, that is, against the background of the
panorama of which the greengrocer's shop window forms a part.  When the
greengrocer visits her office, he will not notice her slogan either, just as she
failed to notice his.  Nevertheless, their slogans are mutually dependent: both
were displayed with some awareness of the general panorama and, we might say,
under its <i>diktat</i>.  Both, however, assist in the creation of that
panorama, and therefore they assist in the creation of that <i>diktat</i> as
well.  The greengrocer and the office worker have both adapted to the conditions
in which they live, but in doing so, they help to create those conditions.  They
do what is done, what is to be done, what must be done, but at the same time
&mdash; by that very token &mdash; they confirm that it must be done in fact.
They conform to a particular requirement and in so doing they themselves
perpetuate that requirement.  Metaphysically speaking, without the greengrocer's
slogan the office workers slogan could not exist, and vice versa.  Each proposes
to the other that something be repeated and each accepts the others proposal.
Their mutual indifference to each others slogans is only an illusion: in
reality, by exhibiting their slogans, each compels the other to accept the rules
of the game and to confirm thereby the power that requires the slogans in the
first place.  Quite simply, each helps the other to be obedient.  Both are
objects in a system of control, but at the same time they are its subjects as
well.  They are both victims of the system and its instruments.
]],
    },
}, {
    id = "VI-1",
    source = "VI",
    title = "A degenerate image of its own degeneration",
    content = lines {
        par [[
The fact that human beings have created, and daily create, this self-directed
system through which they divest themselves of their innermost identity is not
therefore the result of some incomprehensible misunderstanding of history, nor
is it history somehow gone off its rails.  Neither is it the product of some
diabolical higher will which has decided, for reasons unknown, to torment a
portion of humanity in this way.  It can happen and did happen only because
there is obviously in modern humanity a certain tendency toward the creation, or
at least the toleration, of such a system.  There is obviously something in
human beings which responds to this system, something they reflect and
accommodate, something within them which paralyzes every effort of their better
selves to revolt.  Human beings are compelled to live within a lie, but they can
be compelled to do so only because they are in fact capable of living in this
way.  Therefore not only does the system alienate humanity, but at the same time
alienated humanity supports this system as its own involuntary masterplan, as a
degenerate image of its own degeneration, as a record of peoples own failure as
individuals.
]],
        par [[
The essential aims of life are present naturally in every person.  In everyone
there is some longing for humanity's rightful dignity, for moral integrity, for
free expression of being and a sense of transcendence over the world of
existence.  Yet, at the same time, each person is capable, to a greater or
lesser degree, of coming to terms with living within the lie.  Each person
somehow succumbs to a profane trivialization of his inherent humanity, and to
utilitarianism.  In everyone there is some willingness to merge with the
anonymous crowd and to flow comfortably along with it down the river of
pseudolife.  This is much more than a simple conflict between two identities.
It is something far worse: it is a challenge to the very notion of identity
itself.
]],
        par [[
In highly simplified terms, it could be said that the post-totalitarian system
has been built on foundations laid by the historical encounter between
dictatorship and the consumer society.  Is it not true that the far-reaching
adaptability to living a lie and the effortless spread of social auto-totality
have some connection with the general unwillingness of consumption-oriented
people to sacrifice some material certainties for the sake of their own
spiritual and moral integrity?  With their willingness to surrender higher
values when faced with the trivializing temptations of modern civilization? With
their vulnerability to the attractions of mass indifference?  And in the end, is
not the grayness and the emptiness of life in the post-totalitarian system only
an inflated caricature of modern life in general?  And do we not in fact stand
(although in the external measures of civilization, we are far behind) as a kind
of warning to the West, revealing to its own latent tendencies?
]],
    },
}, {
    id = "VII",
    source = "VII",
    title = "Live within the truth",
    content = lines {
        par [[
Let us now imagine that one day something in our greengrocer snaps and he stops
putting up the slogans merely to ingratiate himself.  He stops voting in
elections he knows are a farce.  He begins to say what he really thinks at
political meetings.  And he even finds the strength in himself to express
solidarity with those whom his conscience commands him to support.  In this
revolt the greengrocer steps out of living within the lie.  He rejects the
ritual and breaks the rules of the game.  He discovers once more his suppressed
identity and dignity. He gives his freedom a concrete significance. His revolt
is an attempt to <em>live within the truth</em>.
]],
        par [[
The bill is not long in coming. He will be relieved of his post as manager of
the shop and transferred to the warehouse.  His pay will be reduced.  His hopes
for a holiday in Bulgaria will evaporate.  His children's access to higher
education will be threatened.  His superiors will harass him and his fellow
workers will wonder about him.  Most of those who apply these sanctions,
however, will not do so from any authentic inner conviction but simply under
pressure from conditions, the same conditions that once pressured the
greengrocer to display the official slogans.  They will persecute the
greengrocer either because it is expected of them, or to demonstrate their
loyalty, or simply as part of the general panorama, to which belongs an
awareness that this is how situations of this sort are dealt with, that this, in
fact, is how things are always done, particularly if one is not to become
suspect oneself.  The executors, therefore, behave essentially like everyone
else, to a greater or lesser degree: as components of the post-totalitarian
system, as agents of its automatism, as petty instruments of the social
auto-totality.
]],
        par [[
Thus the power structure, through the agency of those who carry out the
sanctions, those anonymous components of the system, will spew the greengrocer
from its mouth.  The system, through its alienating presence in people, will
punish him for his rebellion.  It must do so because the logic of its automatism
and self-defense dictate it.  The greengrocer has not committed a simple,
individual offense, isolated in its own uniqueness, but something incomparably
more serious.  By breaking the rules of the game, he has disrupted the game as
such.  He has exposed it as a mere game.  He has shattered the world of
appearances, the fundamental pillar of the system.  He has upset the power
structure by tearing apart what holds it together.  He has demonstrated that
living a lie is living a lie. He has broken through the exalted facade of the
system and exposed the real, base foundations of power.  He has said that the
emperor is naked.  And because the emperor is in fact naked, something extremely
dangerous has happened: by his action, the greengrocer has addressed the world.
He has enabled everyone to peer behind the curtain.  He has shown everyone that
it is possible to live within the truth.  Living within the lie can constitute
the system only if it is universal.  The principle must embrace and permeate
everything.  There are no terms whatsoever on which it can co-exist with living
within the truth, and therefore everyone who steps out of line <em>denies it in
principle and threatens it in its entirety</em>.
]],
        par [[
This is understandable: as long as appearance is not confronted with reality, it
does not seem to be appearance.  As long as living a lie is not confronted with
living the truth, the perspective needed to expose its mendacity is lacking.  As
soon as the alternative appears, however, it threatens the very existence of
appearance and living a lie in terms of what they are, both their essence and
their all-inclusiveness.  And at the same time, it is utterly unimportant how
large a space this alternative occupies: its power does not consist in its
physical attributes but in the light it casts on those pillars of the system and
on its unstable foundations.  After all, the greengrocer was a threat to the
system not because of any physical or actual power he had, but because his
action went beyond itself, because it illuminated its surroundings and, of
course, because of the incalculable consequences of that illumination.  In the
post-totalitarian system, therefore, living within the truth has more than a
mere existential dimension (returning humanity to its inherent nature), or a
noetic dimension (revealing reality as it is), or a moral dimension (setting an
example for others).  It also has an unambiguous <em>political</em> dimension.
If the main pillar of the system is living a lie, then it is not surprising that
the fundamental threat to it is living the truth.  This is why it must be
suppressed more severely than anything else.
]],
    },
}, {
    id = "VIII-0",
    source = "VIII",
    title = "Authentic existence",
    content = lines {
        par [[
Individuals can be alienated from themselves only because there is
<em>something</em> in them to alienate.  The terrain of this violation is their
authentic existence.  Living the truth is thus woven directly into the texture
of living a lie.  It is the repressed alternative, the authentic aim to which
living a lie is an inauthentic response.  Only against this background does
living a lie make any sense: it exists <em>because</em> of that background.  In
its excusatory, chimerical rootedness in the human order, it is a response to
nothing other than the human predisposition to truth.  Under the orderly surface
of the life of lies, therefore, there slumbers the hidden sphere of life in its
real aims, of its hidden openness to truth.
]],
        par [[
The singular, explosive, incalculable political power of living within the truth
resides in the fact that living openly within the truth has an ally, invisible
to be sure, but omnipresent: this hidden sphere.  It is from this sphere that
life lived openly in the truth grows; it is to this sphere that it speaks, and
in it that it finds understanding.  This is where the potential for
communication exists.  But this place is hidden and therefore, from the
perspective of power, very dangerous.  The complex ferment that takes place
within it goes on in semidarkness, and by the time it finally surfaces into the
light of day as an assortment of shocking surprises to the system, it is usually
too late to cover them up in the usual fashion.  Thus they create a situation in
which the regime is confounded, invariably causing panic and driving it to react
in inappropriate ways.
]],
        par [[
It seems that the primary breeding ground for what might, in the widest possible
sense of the word, be understood as an opposition in the post-totalitarian
system is living within the truth.  The confrontation between these opposition
forces and the powers that be, of course, will obviously take a form essentially
different from that typical of an open society or a classical dictatorship.
Initially, this confrontation does not take place on the level of real,
institutionalized, quantifiable power which relies on the various instruments of
power, but on a different level altogether: the level of human consciousness and
conscience, the existential level.  The effective range of this special power
cannot be measured in terms of disciples, voters, or soldiers, because it lies
spread out in the fifth column of social consciousness, in the hidden aims of
life, in human beings repressed longing for dignity and fundamental rights, for
the realization of their real social and political interests.  Its power,
therefore, does not reside in the strength of definable political or social
groups, but chiefly in the strength of a potential, which is hidden throughout
the whole of society, including the official power structures of that society.
Therefore this power does not.rely on soldiers of its own, but on the soldiers
of the enemy as it were --- that is to say, on everyone who is living within the
lie and who may be struck at any moment (in theory, at least) by the force of
truth (or who, out of an instinctive desire to protect their position, may at
least adapt to that force).  It is a bacteriological weapon, so to speak,
utilized when conditions are ripe by a single civilian to disarm an entire
division. This power does not participate in any direct struggle for power;
rather, it makes its influence felt in the obscure arena of being itself.  The
hidden movements it gives rise to there, however, can issue forth (when, where,
under what circumstances, and to what extent are difficult to predict) in
something visible: a real political act or event, a social movement, a sudden
explosion of civil unrest, a sharp conflict inside an apparently monolithic
power structure, or simply an irrepressible transformation in the social and
intellectual climate.  And since all genuine problems and matters of critical
importance are hidden beneath a thick crust of lies, it is never quite clear
when the proverbial last straw will fall, or what that straw will be.  This,
too, is why the regime prosecutes, almost as a reflex action preventively, even
the most modest attempts to live within the truth.
]],
    },
}, {
    id = "VIII-1",
    source = "VIII",
    title = "Solzhenitsyn",
    content = par [[
Why was Solzhenitsyn driven out of his own country?  Certainly not because he
represented a unit of real power, that is, not because any of the regimes
representatives felt he might unseat them and take their place in government.
Solzhenitsyn's expulsion was something else: a desperate attempt to plug up the
dreadful wellspring of truth, a truth which might cause incalculable
transformations in social consciousness, which in turn might one day produce
political debacles unpredictable in their consequences.  And so the
post-totalitarian system behaved in a characteristic way: it defended the
integrity of the world of appearances in order to defend itself.  For the crust
presented by the life of lies is made of strange stuff.  As long as it seals off
hermetically the entire society, it appears to be made of stone.  But the moment
someone breaks through in one place, when one person cries out, "The emperor is
naked!" &mdash; when a single person breaks the rules of the game, thus exposing
it as a game &mdash; everything suddenly appears in another light and the whole
crust seems then to be made of a tissue on the point of tearing and
disintegrating uncontrollably.
]],
}, {
    id = "IX",
    source = "IX",
    title = "Moral crisis",
    content = lines {
        par [[
The profound crisis of human identity brought on by living within a lie, a
crisis which in turn makes such a life possible, certainly possesses a moral
dimension as well; it appears, among other things, as <em>a deep moral crisis in
society</em>.  A person who has been seduced by the consumer value system, whose
identity is dissolved in an amalgam of the accouterments of mass civilization,
and who has no roots in the order of being, no sense of responsibility for
anything higher than his own personal survival, is a <em>demoralized</em>
person.  The system depends on this demoralization, deepens it, is in fact a
projection of it into society.
]],
        par [[
Living within the truth, as humanity's revolt against an enforced position, is,
on the contrary, an attempt to regain control over one's own sense of
responsibility.  In other words, it is clearly a moral act, not only because one
must pay so dearly for it, but principally because it is not self-serving: the
risk may bring rewards in the form of a general amelioration in the situation,
or it may not.  In this regard, as I stated previously, it is an all-or-nothing
gamble, and it is difficult to imagine a reasonable person embarking on such a
course merely because he reckons that sacrifice today will bring rewards
tomorrow, be it only in the form of general gratitude.  (By the way, the
representatives of power invariably come to terms with those who live within the
truth by persistently ascribing utilitarian motivations to them &mdash; a lust
for power or fame or wealth &mdash; and thus they try, at least, to implicate
    them in their own world, the world of general demoralization.)
]],
        par [[
If living within the truth in the post-totalitarian system becomes the chief
breeding ground for independent, alternative political ideas, then all
considerations about the nature and future prospects of these ideas must
necessarily reflect this moral dimension as a political phenomenon.  (And if the
revolutionary Marxist belief about morality as a product of the "superstructure"
inhibits any of our friends from realizing the full significance of this
dimension and, in one way or another, from including it in their view of the
world, it is to their own detriment: an anxious fidelity to the postulates of
that world view prevents them from properly understanding the mechanisms of
their own political influence, thus paradoxically making them precisely what
they, as Marxists, so often suspect others of being &mdash; victims of "false
consciousness".)  The very special political significance of morality in the
post-totalitarian system is a phenomenon that is at the very least unusual in
modern political history, a phenomenon that might well have &mdash; as I shall
soon attempt to show &mdash; far-reaching consequences.
]],
    },
}, {
    id = "XIV-0",
    source = "XIV",
    title = "Masaryk",
    content = lines {
        par [[
At the time when the Czech lands and Slovakia were an integral part of the
Austro-Hungarian Empire, and when there existed neither the historical nor the
political, psychological, nor social conditions that would have enabled the
Czechs and Slovaks to seek their identity outside the framework of this empire,
Tomáš Garrigue Masaryk established a Czechoslovak national program based on the
notion of "small-scale work" (<i>drobná prace</i>).  By that he meant honest and
responsible work in widely different areas of life but within the existing
social order, work that would stimulate national creativity and national
self-confidence.  Naturally he placed particular emphasis on intelligent and
enlightened upbringing and education, and on the moral and humanitarian aspects
of life.  Masaryk believed that the only possible starting point for a more
dignified national destiny was humanity itself.  Humanity's first task was to
create the conditions for a more human life; and in Masaryk's view, the task of
transforming the stature of the nation began with the transformation of human
beings.
]],
        par [[
This notion of "working for the good of the nation" took root in Czechoslovak
society and in many ways it was successful and is still alive today.  Along with
those who exploit the notion as a sophisticated excuse for collaborating with
the regime, there are still many, even today, who genuinely uphold the ideal
and, in some areas at least, can point to indisputable achievements.  It is hard
to say how much worse things would be if there were not many hard-working people
who simply refuse to give up and try constantly to do the best they can, paying
an unavoidable minimum to living within a lie so that they might give their
utmost to the authentic needs of society.  These people assume, correctly, that
every piece of good work is an indirect criticism of bad politics, and that
there are situations where it is worthwhile going this route, even though it
means surrendering one's natural right to make direct criticisms.
]],
    },
}, {
    id = "XIV-1",
    source = "XIV",
    title = "Š, the dissident of the Eastern Bohemian Brewery",
    content = lines {
        par [[
In 1974, when I was employed in a brewery, my immediate superior was a certain
Š, a person well versed in the art of making beer.  He was proud of his
profession and he wanted our brewery to brew good beer.  He spent almost all his
time at work, continually thinking up improvements, and he frequently made the
rest of us feel uncomfortable because he assumed that we loved brewing as much
as he did.  In the midst of the slovenly indifference to work that socialism
encourages, a more constructive worker would be difficult to imagine.
]],
        par [[
The brewery itself was managed by people who understood their work less and were
less fond of it, but who were politically more influential.  They were bringing
the brewery to ruin and not only did they fail to react to any of ?s
suggestions, but they actually became increasingly hostile toward him and tried
in every way to thwart his efforts to do a good job.  Eventually the situation
became so bad that Š felt compelled to write a lengthy letter to the managers
superior, in which he attempted to analyze the brewery's difficulties.  He
explained why it was the worst in the district and pointed to those responsible.
]],
        par [[
His voice might have been heard. The manager, who was politically powerful but
otherwise ignorant of beer, a man who loathed workers and was given to intrigue,
might have been replaced and conditions in the brewery might have been improved
on the basis of Š's suggestions.  Had this happened, it would have been a
perfect example of small-scale work in action.  Unfortunately, the precise
opposite occurred: the manager of the brewery, who was a member of the Communist
Party’s district committee, had friends in higher places and he saw to it that
the situation was resolved in his favor.  Š's analysis was described as a
"defamatory document" and Š himself was labeled a "political saboteur".  He was
thrown out of the brewery and shifted to another one where he was given a job
requiring no skill.  Here the notion of small-scale work had come up against the
wall of the post-totalitarian system.  By speaking the truth, Š had stepped out
of line, broken the rules, cast himself out, and he ended up as a sub-citizen,
stigmatized as an enemy.  He could now say anything he wanted, but he could
never, as a matter of principle, expect to be heard.  He had become the
"dissident" of the Eastern Bohemian Brewery.
]],
    },
}, {
    id = "XV",
    source = "XV",
    title = "The independent spiritual, social, and political life of society",
    content = lines {
        par [[
Our greengrocer's attempt to live within the truth may be confined to not doing
certain things.  He decides not to put flags in his window when his only motive
for putting them there in the first place would have been to avoid being
reported by the house warden; he does not vote in elections that he considers
false; he does not hide his opinions from his superiors.  In other words, he may
go no further than "merely" refusing to comply with certain demands made on him
by the system (which of course is not an insignificant step to take).  This may,
however, grow into something more.  The greengrocer may begin to do something
concrete, something that goes beyond an immediately personal self-defensive
reaction against manipulation, something that will manifest his newfound sense
of higher responsibility.  He may, for example, organize his fellow
greengrocer's to act together in defense of their interests.  He may write
letters to various institutions, drawing their attention to instances of
disorder and injustice around him.  He may seek out unofficial literature, copy
it, and lend it to his friends.
]],
        par [[
If what I have called living within the truth is a basic existential (and of
course potentially political) starting point for all those "independent citizens
initiatives" and "dissident" or "opposition" movements this does not mean that
every attempt to live within the truth automatically belongs in this category.
On the contrary, in its most original and broadest sense, living within the
truth covers a vast territory whose outer limits are vague and difficult to map,
a territory full of modest expressions of human volition, the vast majority of
which will remain anonymous and whose political impact will probably never be
felt or described any more concretely than simply as a part of a social climate
or mood.  Most of these expressions remain elementary revolts against
manipulation: you simply straighten your backbone and live in greater dignity as
an individual.
]],
        par [[
Here and there &mdash; thanks to the nature, the assumptions, and the
professions of some people, but also thanks to a number of accidental
circumstances such as the specific nature of the local milieu, friends, and so
on &mdash; a more coherent and visible initiative may emerge from this wide and
anonymous hinterland, an initiative that transcends "merely" individual revolt
and is transformed into more conscious, structured, and purposeful work.  The
point where living within the truth ceases to be a mere negation of living with
a lie and becomes articulate in a particular way is the point at which something
is born that might be called the "independent spiritual, social, and political
life of society".  This independent life is not separated from the rest of life
("dependent life") by some sharply defined line.  Both types frequently co-exist
in the same people.  Nevertheless, its most important focus is marked by a
relatively high degree of inner emancipation.  It sails upon the vast ocean of
the manipulated life like little boats, tossed by the waves but always bobbing
back as visible messengers of living within the truth, articulating the
suppressed aims of life.
]],
        par [[
What is this independent life of society?  The spectrum of its expressions and
activities is naturally very wide. It includes everything from self education
and thinking about the world, through free creative activity and its
communication to others, to the most varied free, civic attitudes, including
instances of independent social self-organization.  In short, it is an area in
which living within the truth becomes articulate and materializes in a visible
way.  Thus what will later be referred to as "citizens initiatives", "dissident
movements", or even "oppositions", emerge, like the proverbial one tenth of the
iceberg visible above the water, from that area, from the independent life of
society.  In other words, just as the independent life of society develops out
of living within the truth in the widest sense of the word, as the distinct,
articulated expression of that life, so "dissent" gradually emerges from the
independent life of society.  Yet there is a marked difference: if the
independent life of society, externally at least, can be understood as a higher
form of living within the truth, it is far less certain that "dissident"
movements are necessarily a higher form of the independent life of society.
They are simply one manifestation of it and, though they may be the most visible
and, at first glance, the most political (and most clearly articulated)
expression of it, they are far from necessarily being the most mature or even
the most important, not only in the general social sense but even in terms of
direct political influence.  After all, "dissent" has been artificially removed
from its place of birth by having been given a special name.  In fact, however,
it is not possible to think of it separated from the whole background out of
which it develops, of which it is an integral part, and from which it draws all
its vital strength.  In any case, it follows from what has already been said
about the peculiarities of the post-totalitarian system that what
<em>appears</em> to be the most political of forces in a given moment, and what
thinks of itself in such terms, need not necessarily in fact <em>be</em> such a
force.  The extent to which it is a real political force is due exclusively to
its pre-political context.
]],
        par [[
What follows from this description?  Nothing more and nothing less than this: it
is impossible to talk about what in fact ``dissidents'' do and the effect of
their work without first talking about the work of all those who, in one way or
an other, take part in the independent life of society and who are not
necessarily "dissidents" at all.  They may be writers who write as they wish
without regard for censorship or official demands and who issue their work
&mdash; when official publishers refuse to print it &mdash; as <i>samizdat</i>.
They may be philosophers, historians, sociologists, and all those who practice
independent scholarship and, if it is impossible through official or
semi-official channels, who also circulate their work in <i>samizdat</i> or who
organize private discussions, lectures, and seminars.  They may be teachers who
privately teach young people things that are kept from them in the state
schools; clergymen who either in office or, if they are deprived of their
charges, outside it, try to carry on a free religious life; painters, musicians,
and singers who practice their work regardless of how it is looked upon by
official institutions; everyone who shares this independent culture and helps to
spread it; people who, using the means available to them, try to express and
defend the actual social interests of workers, to put real meaning back into
trade unions or to form independent ones; people who are not afraid to call the
attention of officials to cases of injustice and who strive to see that the laws
are observed; and the different groups of young people who try to extricate
themselves from manipulation and live in their own way, in the spirit of their
own hierarchy of values.  The list could go on.
]],
        par [[
Very few would think of calling all these people "dissidents".  And yet are not
the well-known "dissidents" simply people like them?  Are not all these
activities in fact what "dissidents" do as well?  Do they not produce scholarly
work and publish it in <i>samizdat</i>?  Do they not write plays and novels and
poems?  Do they not lecture to students in private "universities"?  Do they not
struggle against various forms of injustice and attempt to ascertain and express
the genuine social interests of various sectors of the population?  After having
tried to indicate the sources, the inner structure, and some aspects of the
"dissident" attitude as such, I have clearly shifted my viewpoint from outside,
as it were, to an investigation of what these "dissidents" <em>actually</em> do,
how their initiatives are manifested, and where they lead.
]],
        par [[
The first conclusion to be drawn, then, is that the original and most important
sphere of activity, one that predetermines all the others, is simply an attempt
to create and support the independent life of society as an articulated
expression of living within the truth.  In other words, serving truth
consistently, purposefully, and articulately, and organizing this service.  This
is only natural, after all: if living within the truth is an elementary starting
point for every attempt made by people to oppose the alienating pressure of the
system, if it is the only meaningful basis of any independent act of political
import, and if, ultimately, it is also the most intrinsic existential source of
the "dissident" attitude, then it is difficult to imagine that even manifest
"dissent" could have any other basis than the service of truth, the truthful
life, and the attempt to make room for the genuine aims of life.
]],
    },
}, {
    id = "XVII-0",
    source = "XVII",
    title = "Marxism vs. the post-totalitarian system",
    content = par [[
Some people, faithful to the classical Marxist doctrines of the nineteenth
century, understand our system as the hegemony of an exploiting class over an
exploited class and, operating from the postulate that exploiters never
surrender their power voluntarily, they see the only solution in a revolution to
sweep away the exploiters.  Naturally, they regard such things as the struggle
for human rights as something hopelessly legalistic, illusory, opportunistic,
and ultimately misleading because it makes the doubtful assumption that you can
negotiate in good faith with your exploiters on the basis of a false legality.
The problem is that they are unable to find anyone determined enough to carry
out this revolution, with the result that they become bitter, skeptical,
passive, and ultimately apathetic &mdash; in other words, they end up precisely
where the system wants them to be.  This is one example of how far one can be
misled by mechanically applying, in post-totalitarian circumstances, ideological
models from another world and another time.
]],
}, {
    id = "XVII-1",
    source = "XVII",
    title = "The excuse of legality",
    content = lines {
        par [[
In a narrower sense the legal code serves the post-totalitarian system in this
direct way as well, that is, it too forms a part of the world of regulations and
prohibitions.  At the same time, however, it performs the same service in
another indirect way, one that brings it remarkably closer &mdash; depending on
which level of the law is involved &mdash; to ideology and in some cases makes
it a direct component of that ideology.
]],
        par [[
Like ideology, the legal code functions as an excuse.  It wraps the base
exercise of power in the noble apparel of the letter of the law; it creates the
pleasing illusion that justice is done, society protected, and the exercise of
power objectively regulated.  All this is done to conceal the real essence of
post-totalitarian legal practice: the total manipulation of society.  If an
outside observer who knew nothing at all about life in Czechoslovakia were to
study only its laws, he would be utterly incapable of understanding what we were
complaining about.  The hidden political manipulation of the courts and of
public prosecutors, the limitations placed on lawyers ability to defend their
clients, the closed nature, <i>de facto</i>, of trials, the arbitrary actions of
the security forces, their position of authority over the judiciary, the
absurdly broad application of several deliberately vague sections of that code,
and of course the states utter disregard for the positive sections of that code
(the rights of citizens): all of this would remain hidden from our outside
observer.  The only thing he would take away would be the impression that our
legal code is not much worse than the legal code of other civilized countries,
and not much different either, except perhaps for certain curiosities, such as
the entrenchment in the constitution of a single political party's eternal rule
and the states love for a neighboring superpower.  But that is not all: if our
observer had the opportunity to study the formal side of the policing and
judicial procedures and practices, how they look "on paper", he would discover
that for the most part the common rules of criminal procedure are observed:
charges are laid within the prescribed period following arrest, and it is the
same with detention orders.  Indictments are properly delivered, the accused has
a lawyer, and so on.  In other words, everyone has an excuse: <i>they have all
observed the law</i>.  In reality, however, they have cruelly and pointlessly
ruined a young persons life, perhaps for no other reason than because he made
<i>samizdat</i> copies of a novel written by a banned writer, or because the
police deliberately falsified their testimony (as everyone knows, from the judge
on down to the defendant).  Yet all of this somehow remains in the background.
The falsified testimony is not necessarily obvious from the trial documents and
the section of the Criminal Code dealing with incitement does not formally
exclude the application of that charge to the copying of a banned novel.  In
other words, the legal code &mdash; at least in several areas &mdash; is no more
than a facade, an aspect of the world of appearances.  Then why is it there at
all?  For exactly the same reason as ideology is there: it provides a bridge of
excuses between the system and individuals, making it easier for them to enter
the power structure and serve the arbitrary deceives history itself.
]],
    },
}, {
    id = "XVII-2",
    source = "XVII",
    title = "Insufficiency of laws",
    content = par [[
This section would be incomplete without stressing certain internal limitations
to the policy of taking them at their own word.  The point is this: even in the
most ideal of cases, the law is only one of several imperfect and more or less
external ways of defending what is better in life against what is worse.  By
itself, the law can never create anything better.  Its purpose is to render a
service and its meaning does not lie in the law itself.  Establishing respect
for the law does not automatically ensure a better life for that, after all, is
a job for people and not for laws and institutions.  It is possible to imagine a
society with good laws that are fully respected but in which it is impossible to
live.  Conversely, one can imagine life being quite bearable even where the laws
are imperfect and imperfectly applied.  The most important thing is always the
quality of that life and whether or not the laws enhance life or repress it, not
merely whether they are upheld or not.  (Often strict observance of the law
could have a disastrous impact on human dignity.)  The key to a humane,
dignified, rich, and happy life does not lie either in the constitution or in
the Criminal Code.  These merely establish what may or may not be done and,
thus, they can make life easier or more difficult.  They limit or permit, they
punish, tolerate, or defend, but they can never give life substance or meaning.
The struggle for what is called "legality" must constantly keep this legality in
perspective against the background of life as it really is.  Without keeping
one's eyes open to the real dimensions of life's beauty and misery, and without
a moral relationship to life, this struggle will sooner or later come to grief
on the rocks of some self-justifying system of scholastics.  Without really
wanting to, one would thus become more and more like the observer who comes to
conclusions about our system only on the basis of trial documents and is
satisfied if all the appropriate regulations have been observed.
]],
}, {
    id = "XVIII",
    source = "XVIII",
    title = "Parallel <i>polis</i>",
    content = lines {
        par [[
Is the basic job of the "dissident" movements is to serve truth, that is, to
serve the real aims of life, and if that necessarily develops into a defense of
individuals and their right to a free and truthful life (that is, a defense of
human rights and a struggle to see the laws respected), then another stage of
this approach, perhaps the most mature stage so far, is what Václav Benda called
the development of "parallel structures".
]],
        par [[
When those who have decided to live within the truth have been denied any direct
influence on the existing social structures, not to mention the opportunity to
participate in them, and when these people begin to create what I have called
the independent life of society, this independent life begins, of itself, to
become structured in a certain way.  Sometimes there are only very embryonic
indications of this process of structuring; at other times, the structures are
already quite well developed.  Their genesis and evolution are inseparable from
the phenomenon of "dissent", even though they reach far beyond the arbitrarily
defined area of activity usually indicated by that term.
]],
        par [[
What are these structures? Ivan Jirous was the first in Czechoslovakia to
formulate and apply in practice the concept of a "second culture".  Although at
first he was thinking chiefly of nonconformist rock music and only certain
literary, artistic, or performance events close to the sensibilities of those
nonconformist musical groups, the term second culture very rapidly came to be
used for the whole area of independent and repressed culture, that is, not only
for art and its various currents but also for the humanities, the social
sciences, and philosophical thought.  This second culture, quite naturally, has
created elementary organizational forms: <i>samizdat</i> editions of books and
magazines, private performances and concerts, seminars, exhibitions, and so on.
(In Poland all of this is vastly more developed: there are independent
publishing houses and many more periodicals, even political periodicals; they
have means of proliferation other than carbon copies, and so on.  In the Soviet
Union, <i>samizdat</i> has a longer tradition and clearly its forms are quite
different.)  Culture, therefore, is a sphere in which the parallel structures
can be observed in their most highly developed form. Benda, of course, gives
thought to potential or embryonic forms.of such structures in other spheres as
well: from a parallel information network to parallel forms of education
(private universities), parallel trade unions, parallel foreign contacts, to a
kind of hypothesis on a parallel economy. On the basis of these parallel
structures, he then develops the notion of a "parallel <i>polis</i>" or state
or, rather, he sees the rudiments of such a <i>polis</i> in these structures.
]],
        par [[
At a certain stage in its development, the independent life of society and the
"dissident" movements cannot avoid a certain amount of organization and
institutionalization.  This is a natural development, and unless this
independent life of society is somehow radically suppressed and eliminated, the
tendency will grow.  Along with it, a parallel political life will also
necessarily evolve, and to a certain extent it exists already in Czechoslovakia.
Various groupings of a more or less political nature will continue to define
themselves politically, to act and confront each other.  These parallel
structures, it may be said, represent the most articulated expressions so far of
living within the truth.  One of the most important tasks the "dissident"
movements have set themselves is to support and develop them.  Once again, it
confirms the fact that all attempts by society to resist the pressure of the
system have their essential beginnings in the "pre-political" area.  For what
else are parallel structures than an area where a different life can be lived, a
life that is in harmony with its own aims and which in turn structures itself in
harmony with those aims?  What else are those initial attempts at social self
organization than the efforts of a certain part of society to live &mdash; as a
society &mdash; within the truth, to rid itself of the self-sustaining aspects
of totalitarianism and, thus, to extricate itself radically from its involvement
in the post-totalitarian system?  What else is it but a nonviolent attempt by
people to negate the system within themselves and to establish their lives on a
new basis, that of their own proper identity?  And does this tendency not
confirm once more the principle of returning the focus to actual individuals?
After all, the parallel structures do not grow <i>a priori</i> out of a
theoretical vision of systemic changes (there are no political sects involved),
but from the aims of life and the authentic needs of real people.  In fact, all
eventual changes in the system, changes we may observe here in their rudimentary
forms, have come about as it were <i>de facto</i>, from "below", because life
compelled them to, not because they came before life, somehow directing it or
forcing some change on it.
]],
        par [[
Historical experience teaches us that any genuinely meaningful point of
departure in an individuals life usually has an element of universality about
it.  In other words, it is not something partial, accessible only to a
restricted community, and not transferable to any other.  On the contrary, it
must be potentially accessible to everyone; it must foreshadow a general
solution and, thus, it is not just the expression of an introverted,
self-contained responsibility that individuals have to and for themselves alone,
but responsibility to and for the <em>world</em>.  Thus it would be quite wrong
to understand the parallel structures and the parallel <i>polis</i> as a retreat
into a ghetto and as an act of isolation, addressing itself only to the welfare
of those who had decided on such a course, and who are indifferent to the rest.
It would be wrong, in short, to consider it an essentially group solution that
has nothing to do with the general situation.  Such a concept would, from the
start, alienate the notion of living within the truth from its proper point of
departure, which is concern for others, transforming it ultimately into just
another more sophisticated version of living within a lie.  In doing so, of
course, it would cease to be a genuine point of departure for individuals and
groups and would recall the false notion of "dissidents" as an exclusive group
with exclusive interests, carrying on their own exclusive dialogue with the
powers that be.  In any case, even the most highly developed forms of life in
the parallel structures, even that most mature form of the parallel <i>polis</i>
can only exist &mdash; at least in post-totalitarian circumstances &mdash; when
the individual is at the same time lodged in the "first", official structure by
a thousand different relationships, even though it may only be the fact that one
buys what one needs in their stores, uses their money, and obeys their laws.
Certainly one can imagine life in its baser aspects flourishing in the parallel
<i>polis</i>, but would not such a life, lived deliberately that way, as a
program, be merely another version of the schizophrenic life within a lie which
everyone else must live in one way or another?  Would it not just be further
evidence that a point of departure that is not a model solution, that is not
applicable to others, cannot be meaningful for an individual either?  Patočka
used to say that the most interesting thing about responsibility is that we
carry it with us everywhere.  That means that responsibility is ours, that we
must accept it and grasp it <em>here</em>, <em>now</em>, in this place in time
and space where the Lord has set us down, and that we cannot lie our way out of
it by moving somewhere else, whether it be to an Indian ashram or to a parallel
<i>podis</i>.  If Western young people so often discover that retreat to an
Indian monastery fails them as an individual or group solution, then this is
obviously because, and only because, it lacks that element of universality,
since not everyone can retire to an ashram.  Christianity is an example of an
opposite way out: it is a point of departure for me here and now &mdash; but
only because anyone, anywhere, at any time, may avail themselves of it.  In
other words, the parallel <i>polis</i> points beyond itself and makes sense only
as an act of deepening one's responsibility to and for the whole, as a way of
discovering the most appropriate locus for this responsibility, not as an escape
from it.
]],
    },
}, {
    id = "XIX",
    source = "XIX",
    title = "Messianic role",
    content = lines {
        par [[
The primary purpose of the outward direction of these movements is always, as we
have seen, to have an impact on society, not to affect the power structure, at
least not directly and immediately.  Independent initiatives address the hidden
sphere; they demonstrate that living within the truth is a human and social
alternative and they struggle to expand the space available for that life; they
help &mdash; even though it is, of course, indirect help &mdash; to raise the
confidence of citizens; they shatter the world of appearances and unmask the
real nature of power.  They do not assume a messianic role; they are not a
social avant-garde or elite that alone knows best, and whose task it is to
"raise the consciousness" of the "unconscious" masses (that arrogant
self-projection is, once again, intrinsic to an essentially different way of
thinking, the kind that feels it has a patent on some ideal project and
therefore that it has the right to impose it on society).  Nor do they want to
lead anyone.  They leave it up to each individual to decide what he will or will
not take from their experience and work.  (If official Czechoslovak propaganda
described the Chartists as "self-appointees", it was not in order to emphasize
any real avant-garde ambitions on their part, but rather a natural expression of
how the regime thinks, its tendency to judge others according to itself, since
behind any expression of criticism it automatically sees the desire to cast the
mighty from their seats and rule in their places "in the name of the people",
the same pretext the regime itself has used for years.)
]],
        par [[
These movements, therefore, always affect the power structure as such
indirectly, as a part of society as a whole, for they are primarily addressing
the hidden spheres of society, since it is not a matter of confronting the
regime on the level of actual power.
]],
        par [[
I have already indicated one of the ways this can work: an awareness of the laws
and the responsibility for seeing that they are upheld is indirectly
strengthened.  That, of course, is only a specific instance of a far broader
influence, the indirect pressure felt from living within the truth: the pressure
created by free thought, alternative values and alternative behavior, and by
independent social self-realization.
]],
    },
}, {
    id = "XX-0",
    source = "XX",
    title = "Being and existing",
    content = lines {
        par [[
The specific nature of post-totalitarian conditions &mdash; with their absence
of a normal political life and the fact that any far-reaching political change
is utterly unforeseeable &mdash; has one positive aspect: it compels us to
examine our situation in terms of its deeper coherences and to consider our
future in the context of global, long-range prospects of the world of which we
are a part.  The fact that the most intrinsic and fundamental confrontation
between human beings and the system takes place at a level incomparably more
profound than that of traditional politics would seem, at the same time, to
determine as well the direction such considerations will take.
]],
        par [[
Our attention, therefore, inevitably turns to the most essential matter: the
crisis of contemporary technological society as a whole, the crisis that
Heidegger describes as the ineptitude of humanity face to face with the
planetary power of technology.  Technology &mdash; that child of modern science,
which in turn is a child of modern metaphysics &mdash; is out of humanity's
control, has ceased to serve us, has enslaved us and compelled us to participate
in the preparation of our own destruction.  And humanity can find no way out: we
have no idea and no faith, and even less do we have a political conception to
help us bring things back under human control.  We look on helplessly as that
coldly functioning machine we have created inevitably engulfs us, tearing us
away from our natural affiliations (for instance, from our habitat in the widest
sense of that word, including our habitat in the biosphere) just as it removes
us from the experience of "being" and casts us into the world of "existences".
]],
    },
}, {
    id = "XX-1",
    source = "XX",
    title = "Only (a) God can save us now",
    content = lines {
        par [[
"Only a God can save us now", Heidegger says, and he emphasizes the necessity of
"a different way of thinking", that is, of a departure from what philosophy has
been for centuries, and a radical change in the way in which humanity
understands itself, the world, and its position in it.  He knows no way out and
all he can recommend is "preparing expectations".
]],
        par [[
Various thinkers and movements feel that this as yet unknown way out might be
most generally characterized as a broad "existential revolution".  I share this
view, and I also share the opinion that a solution cannot be sought in some
technological sleight of hand, that is, in some external proposal for change, or
in a revolution that is merely philosophical, merely social, merely
technological, or even merely political.  These are all areas where the
consequences of an existential revolution can and must be felt; but their most
intrinsic locus can only be human existence in the profoundest sense of the
word.  It is only from that basis that it can become a generally ethical &mdash;
and, of course, ultimately a political &mdash; reconstitution of society.
]],
        par [[
What we call the consumer and industrial (or postindustrial) society, and Ortega
y Gasset once understood as "the revolt of the masses", as well as the
intellectual, moral, political, and social misery in the world today: all of
this is perhaps merely an aspect of the deep crisis in which humanity, dragged
helplessly along by the automatism of global technological civilization, finds
itself.  The post-totalitarian system is only one aspect &mdash; a particularly
drastic aspect and thus all the more revealing of its real origins &mdash; of
this general inability of modern humanity to be the master of its own situation.
The automatism of the post-totalitarian system is merely an extreme version of
the global automatism of technological civilization.  The human failure that it
mirrors is only one variant of the general failure of modern humanity.
]],
        par [[
This planetary challenge to the position of human beings in the world is, of
course, also taking place in the Western world, the only difference being the
social and political forms it takes.  Heidegger refers expressly to a crisis of
democracy.  There is no real evidence that Western democracy, that is, democracy
of the traditional parliamentary type, can offer solutions that are any more
profound.  It may even be said that the more room there is in the Western
democracies (compared to our world) for the genuine aims of life, the better the
crisis is hidden from people and the more deeply do they become immersed in it.
]],
        par [[
It would appear that the traditional parliamentary democracies can offer no
fundamental opposition to the automatism of technological civilization and the
industrial-consumer society, for they, too, are being dragged helplessly along
by it.  People are manipulated in ways that are infinitely more subtle and
refined than the brutal methods used in the post-totalitarian societies.  But
this static complex of rigid, conceptually sloppy, and politically pragmatic
mass political parties run by professional apparatuses and releasing the citizen
from all forms of concrete and personal responsibility; and those complex
focuses of capital accumulation engaged in secret manipulations and expansion;
the omnipresent dictatorship of consumption, production, advertising, commerce,
consumer culture, and all that flood of information: all of it, so often
analyzed and described, can only with great difficulty be imagined as the source
of humanity's rediscovery of itself.  In his June 1978 Harvard lecture,
Solzhenitsyn describes the illusory nature of freedoms not based on personal
responsibility and the chronic inability of the traditional democracies, as a
result, to oppose violence and totalitarianism.  In a democracy, human beings
may enjoy many .personal freedoms and securities that are unknown to us, but in
the end they do them no good, for they too are ultimately victims of the same
automatism, and are incapable of defending their concerns about their own
identity or preventing their superficialization or transcending concerns about
their own personal survival to become proud and responsible members of the
<i>polis</i>, making a genuine contribution to the creation of its destiny.
]],
        par [[
Because all our prospects for a significant change for the better are very long
range indeed, we are obliged to take note of this deep crisis of traditional
democracy.  Certainly, if conditions were to be created for democracy in some
countries in the Soviet bloc (although this is becoming increasingly
improbable), it might be an appropriate transitional solution that would help to
restore the devastated premise of civic awareness, to renew democratic
discussion, to allow for the crystallization of an elementary political
plurality, an essential expression of the aims of life.  But to cling to the
notion of traditional parliamentary democracy as one's political ideal and to
succumb to the illusion that only this tried and true form is capable of
guaranteeing human beings enduring dignity and an independent role in society
would, in my opinion, be at the very least shortsighted.
]],
        par [[
I see a renewed focus of politics on real people as something far more profound
than merely returning to the everyday mechanisms of Western (or, if you like,
bourgeois) democracy.  In 1968, I felt that our problem could be solved by
forming an opposition party that would compete publicly for power with the
Communist Party.  I have long since come to realize, however, that it is just
not that simple and that no opposition party in and of itself,just as no new
electoral laws in and of themselves, could make society proof against some new
form of violence.  No "dry" organizational measures in themselves can provide
that guarantee, and we would be hard-pressed to find in them that God who alone
can save us.
]],
    },
}}

return {
    title = {
        en = "The power of the powerless",
        pt = "O poder dos impotentes",
    },
    link = "https://shop.vaclavhavel.cz/cs/00117",
    cover = "the_power_of_the_powerless.jpg",
    author = {
        en = "Václav Havel",
        pt = "Václav Havel",
    },
    timestamp = { 1694444767, "2023-09-11T15:06:07" },
    category = "general",
    languages = { "en", "pt" },
    description = table.concat(description, " "),
    intro = intro,
    content = {
        en = content,
        pt = content_pt,
    },
    citations = citations,
}
