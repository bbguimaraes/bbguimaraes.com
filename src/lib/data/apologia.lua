local description <const> = [[
One of the Platonic dialogues which depicts the last days of Socrates (together
with <i>Euthyphro</i>, <i>Crito</i>, <i>Phaedo</i>, and Xenophon's
<i>Apology</i>).  Having been accused of "corrupting the youth" and teaching men
"not to receive the gods whom the city receives", and knowing what his fate is,
the philosopher consults his δαιμόνιον (<i lang="grc">daimonion</i>, his "divine
faculty") and decides that, rather than desisting and escaping from his trial,
as his prosecutors would have him do, he is to deliver his defense in front of
the court and face the ultimate consequence.
]]

local intro <const> = lines {
    blockquote(par "The unexamined life is not worth living.\n"),
    par(description),
}

local content <const> = lines {
    par [[
This can be considered the quintessential Socratic dialogue: it contains many of
the idiosyncratic elements he is most renowned for.  His traditional manner of
speaking (the eponymous <i>Socratic irony</i>) is present from the opening and
made almost mythical in the famous account of the pronunciation by the oracle of
Delphi that he was the wisest man.  This he discovers to be not for what he
knows ("for I know that I have no wisdom, small or great"), but because the
awareness of his ignorance ensures his humility, and his subsequent search and
examination of truly wise men so that she could be refuted leads to the
discovery that none was indeed wise, but only thought himself to be.
]],
    par [[
A few centuries later, Cicero would write that in his trial Socrates spoke
<i lang="la">ut non supplex aut reus, sed magister, aut dominus videretur esse
iudicum</i> ("as to be seen not supplicant as a defendant, but great as a master
of the judges").  He is the embodiment of the <em>free</em> man, in the
classical (and true) sense: liberated from mundane vices, his life is dedicated,
to the end, to what is truly important, <em>virtue</em>.  In the strength of his
conviction, integrity, and rectitude, not even death is a threat: fear of it is
"pretense of wisdom".  Nothing will injure him: his accusers and adjudicators
have no power, "for a bad man is not permitted to injure a better than himself",
and "no evil can happen to a good man, either in life or after death".
]],
    blockquote(par [[
And now I depart hence condemned by you to suffer the penalty of death &mdash;
they too go their ways condemned by the truth to suffer the penalty of villainy
and wrong.
]]),
    par [[
The source of his fortitude is obstinate devotion, as his duty is eminently
<em>religious</em>: "I shall obey God rather than you".  Similar is his
inference from the Pythian augury: "but the truth is, O men of Athens, that God
only is wise".  And his moral concern is not only for himself, but for the soul
of his fellow citizens, and even of his accusers: he argues not for his sake,
"but for yours, that you may not sin against the God by condemning me".  And as
"God orders me to fulfill the philosopher's mission of searching into myself and
other men", betraying this commandment would be not only immoral, but impious:
]],
    blockquote(lines {
        par [[
I shall never alter my ways, not even if I have to die many times.
]],
    html "<hr />",
    par [[
I would rather die having spoken after my manner, than speak in your manner and
live.
]],
    html "<hr />",
    par [[
A man who is good for anything ought only to consider whether in doing anything
he is doing right or wrong[&hellip;]; he should not think of death or anything
but of disgrace.
]],
    html "<hr />",
    par [[
For if, O men of Athens, by force of persuasion and entreaty I could overpower
your oaths, then I should be teaching you to believe that there are no gods, and
in defending should simply convict myself of the charge of not believing in
them.  But that is not so &mdash; far otherwise.  For I do believe that there
are gods, and in a sense higher than that in which any of my accusers believe in
them.
]],
    }),
    par [[
Socrates was tried and executed in 4th-century B.C. Athens, but in a time when
the trial of public opinion still coerces and silences, when death is to be
avoided at all costs, when freedom is thought to be licentiousness,
incontinence, exemption from consequence, and subordination to nothing and to no
one, in a time of meaninglessness, moral relativism, and confusion, his apology
shows that there are things worth living &mdash; and dying &mdash; for:
<i>wisdom, truth, and the greatest improvement of the soul</i>.
]],
    blockquote(par [[
The hour of departure has arrived, and we go our ways &mdash; I to die, and you
to live. Which is better God only knows.
]]),
    link {
        href = "http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.01.0170:text=Apol.",
        content = "English",
    },
    link {
        href = "http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.01.0169:text=Apol.",
        content = "Greek",
    },
}

local content_pt <const> = lines {
    blockquote(par "A vida não examinada não merece ser vivida.\n"),
    par [[
Um dos diálogos platônicos que retrata os últimos dias de Sócrates (junto com
<i>Euthyphro</i>, <i>Crito</i>, <i>Phaedo</i>, e a <i>Apologia</i> de Xenophon).
Tendo sido acusado de "corromper a juventude" e ensinar aos homens que "não
aceitem os deuses que a cidade aceita", e sabendo qual é seu destino, o filósofo
consulta seu δαιμόνιον (<i lang="grc">daimonion</i>, sua "faculdade divina") e
decide que, ao invés de desistir e escapar de seu julgamento, como os promotores
desejariam que fizesse, ele apresentará sua defesa em frente à corte e encarará
a consequência suprema.
]],
    par [[
Esse pode ser considerado o diálogo socrático quintessencial: contém muitos dos
elementos idiossincráticos pelos quais ele é mais renomado.  Sua maneira
tradicional de falar (a epônima <i>ironia socrática</i>) é presente desde a
abertura e tornada quase mítica no famoso relato do pronunciamento pelo oráculo
de Delphi que ele era o homem mais sábio.  Isso ele descobre ser não pelo que
sabe ("pois sei que não tenho sabedoria, pequena ou grande"), mas porque a
consciência da sua ignorância assegura a sua humildade, e a sua subsequente
busca e examinação de homens verdadeiramente sábios para que ela pudesse ser
refutada leva à descoberta que nenhum era de fato sábio, somente pensava ser.
]],
    par [[
Alguns séculos depois, Cícero escreveria que em seu julgamento Sócrates falou <i
lang="la">ut non supplex aut reus, sed magister, aut dominus videretur esse
iudicum</i> ("a ser visto não suplicante como réu, mas como mestre, senhor de
seus juízes").  Ele é a personificação do homem <i>livre</i>, no sentido
clássico (e verdadeiro): libertado de vícios mundanos, sua vida é dedicada, até
o fim, ao que é verdadeiramente importante, a <em>virtude</em>.  Na força de sua
convicção, integridade, e retidão, nem mesmo a morte é uma ameaça: temor a ela é
"pretensão de sabedoria".  Nada o ferirá: seus acusadores e juízes não tem
poder, "pois a um homem ruim não é permitido ferir alguém melhor que ele", e
"nenhum mal pode acontecer a um homem bom, na vida ou após a morte".
]],
    blockquote(par [[
E agora parto portanto condenado por vocês a sofrer a pena de morte &mdash; eles
também seguem seus caminhos condenados pela verdade a sofrerem a pena da vilania
e injúria.
]]),
    par [[
A fonte de sua fortitude é a devoção obstinada, pois seu dever é eminentemente
<em>religioso</em>: "eu obedecerei a Deus, e não a vocês".  Similar é a sua
inferência do augúrio de Pythia: "mas a verdade é, ó homens de Atenas, que
somente Deus é sábio".  E sua preocupação moral não é só consigo, mas com as
almas de seus concidadãos, e mesmo de seus acusadores: ele argumenta não por sua
causa, "mas pela sua, para que não pequem contra Deus me condenando".  E como
"Deus me ordena a cumprir a missão do filósofo de inquirir a mim mesmo e a
outros homens", trair esse mandamento seria não só imoral, mas ímpio:
]],
    blockquote(lines {
        par [[
Nunca alterarei meu modo, nem que tenha que morrer várias vezes.
]],
    html "<hr />",
    par [[
Preferiria morrer tendo falado da minha maneira, a falar da sua maneira e viver.
]],
    html "<hr />",
    par [[
Um homem que é bom para qualquer coisa deve somente considerar se ao fazer algo
faz o certo ou o errado[&hellip;]; não deve pensar na morte ou em qualquer coisa
senão na desgraça.
]],
    html "<hr />",
    par [[
Porque se, ó homens de Atenas, por força de persuasão e súplica eu pudesse
compelir seus juramentos, então estaria os ensinando a acreditar que não existem
deuses, e em defesa simplesmente me condenaria à acusação de não acreditar
neles.  Mas não é assim &mdash; muito pelo contrário.  Porque eu acredito que
existem deuses, num sentido superior ao que os meus acusadores acreditam.
]],
    }),
    par [[
Sócrates foi julgado e executado na Atenas do século IV A.C., mas num tempo em
que o tribunal da opinão pública ainda coage e silencia, em que a morte é
evitada a qualquer custo, em que se pensa que liberdade é licenciosidade,
incontinência, isenção de consequência, e subordinação a nada e a ninguém, num
tempo de insignificância, relativismo moral, e confusão, a sua apologia mostra
que existem coisas para as quais vale a pena viver &mdash; e morrer:
<i>sabedoria, verdade, e o maior aperfeiçoamento da alma</i>.
]],
    blockquote(par [[
É chegada a hora da partida, e seguimos nossos caminhos &mdash; eu para morrer,
vocês para viverem.  Qual é melhor, só Deus sabe.
]]),
    link {
        href = "http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.01.0170:text=Apol.",
        content = "inglês",
    },
    link {
        href = "http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.01.0169:text=Apol.",
        content = "grego",
    },
}

local citations <const> = {{
    id = "20c",
    source = "20c",
    title = "the wisest man",
    content = {
        lines {
            par [[
I dare say, Athenians, that someone among you will reply, "Yes, Socrates, but
what is the origin of these accusations which are brought against you; there
must have been something strange which you have been doing?  All these rumours
and this talk about you would never have arisen if you had been like other men:
tell us, then, what is the cause of them, for we should be sorry to judge
hastily of you".  Now I regard this as a fair challenge, and I will endeavour to
explain to you the reason why I am called wise and have such an evil fame.
Please to attend then.  And although some of you may think that I am joking, I
declare that I will tell you the entire truth.  Men of Athens, this reputation
of mine has come of a certain sort of wisdom which I possess.  If you ask me
what kind of wisdom, I reply, wisdom such as may perhaps be attained by man, for
to that extent I am inclined to believe that I am wise; whereas the persons of
whom I was speaking have a superhuman wisdom which I may fail to describe,
because I have it not myself; and he who says that I have, speaks falsely, and
is taking away my character.  And here, O men of Athens, I must beg you not to
interrupt me, even if I seem to say something extravagant.  For the word which I
will speak is not mine.  I will refer you to a witness who is worthy of credit;
that witness shall be the God of Delphi &mdash; he will tell you about my
wisdom, if I have any, and of what sort it is.  You must have known Chaerephon;
he was early a friend of mine, and also a friend of yours, for he shared in the
recent exile of the people, and returned with you.  Well, Chaerephon, as you
know, was very impetuous in all his doings, and he went to Delphi and boldly
asked the oracle to tell him whether &mdash; as I was saying, I must beg you not
to interrupt &mdash; he asked the oracle to tell him whether anyone was wiser
than I was, and the Pythian prophetess answered, that there was no man wiser.
Chaerephon is dead himself; but his brother, who is in court, will confirm the
truth of what I am saying.
]],
            par [[
Why do I mention this?  Because I am going to explain to you why I have such an
evil name.  When I heard the answer, I said to myself "What can the god mean,
and what is the interpretation of his riddle?" for I know that I have no wisdom,
small or great.  What then can he mean when he says that I am the wisest of men?
And yet he is a god, and cannot lie; that would be against his nature.  After
long consideration, I thought of a method of trying the question.  I reflected
that if I could only find a man wiser than myself, then I might go to the god
with a refutation in my hand.  I should say to him, "Here is a man who is wiser
than I am; but you said that I was the wisest".
]],
        },
        lines {
            par [[
ὑπολάβοι ἂν οὖν τις ὑμῶν ἴσως: "ἀλλ᾽, ὦ Σώκρατες, τὸ σὸν τί ἐστι πρᾶγμα; πόθεν
αἱ διαβολαί σοι αὗται γεγόνασιν; οὐ γὰρ δήπου σοῦ γε οὐδὲν τῶν ἄλλων
περιττότερον πραγματευομένου ἔπειτα τοσαύτη φήμη τε καὶ λόγος γέγονεν, εἰ μή τι
ἔπραττες ἀλλοῖον ἢ οἱ πολλοί.  λέγε οὖν ἡμῖν τί ἐστιν, ἵνα μὴ ἡμεῖς περὶ σοῦ
αὐτοσχεδιάζωμεν".  ταυτί μοι δοκεῖ δίκαια λέγειν ὁ λέγων, κἀγὼ ὑμῖν πειράσομαι
ἀποδεῖξαι τί ποτ᾽ ἐστὶν τοῦτο ὃ ἐμοὶ πεποίηκεν τό τε ὄνομα καὶ τὴν διαβολήν.
ἀκούετε δή. καὶ ἴσως μὲν δόξω τισὶν ὑμῶν παίζειν: εὖ μέντοι ἴστε, πᾶσαν ὑμῖν τὴν
ἀλήθειαν ἐρῶ.  ἐγὼ γάρ, ὦ ἄνδρες Ἀθηναῖοι, δι᾽ οὐδὲν ἀλλ᾽ ἢ διὰ σοφίαν τινὰ
τοῦτο τὸ ὄνομα ἔσχηκα.  ποίαν δὴ σοφίαν ταύτην; ἥπερ ἐστὶν ἴσως ἀνθρωπίνη σοφία:
τῷ ὄντι γὰρ κινδυνεύω ταύτην εἶναι σοφός.  οὗτοι δὲ τάχ᾽ ἄν, οὓς ἄρτι ἔλεγον,
μείζω τινὰ ἢ κατ᾽ ἄνθρωπον σοφίαν σοφοὶ εἶεν, ἢ οὐκ ἔχω τί λέγω: οὐ γὰρ δὴ ἔγωγε
αὐτὴν ἐπίσταμαι, ἀλλ᾽ ὅστις φησὶ ψεύδεταί τε καὶ ἐπὶ διαβολῇ τῇ ἐμῇ λέγει.  καί
μοι, ὦ ἄνδρες Ἀθηναῖοι, μὴ θορυβήσητε, μηδ᾽ ἐὰν δόξω τι ὑμῖν μέγα λέγειν: οὐ γὰρ
ἐμὸν ἐρῶ τὸν λόγον ὃν ἂν λέγω, ἀλλ᾽ εἰς ἀξιόχρεων ὑμῖν τὸν λέγοντα ἀνοίσω.  τῆς
γὰρ ἐμῆς, εἰ δή τίς ἐστιν σοφία καὶ οἵα, μάρτυρα ὑμῖν παρέξομαι τὸν θεὸν τὸν ἐν
Δελφοῖς.  Χαιρεφῶντα γὰρ ἴστε που.  οὗτος ἐμός τε ἑταῖρος ἦν ἐκ νέου καὶ ὑμῶν τῷ
πλήθει ἑταῖρός τε καὶ συνέφυγε τὴν φυγὴν ταύτην καὶ μεθ᾽ ὑμῶν κατῆλθε.  καὶ ἴστε
δὴ οἷος ἦν Χαιρεφῶν, ὡς σφοδρὸς ἐφ᾽ ὅτι ὁρμήσειεν.  καὶ δή ποτε καὶ εἰς Δελφοὺς
ἐλθὼν ἐτόλμησε τοῦτο μαντεύσασθαι &mdash; καί, ὅπερ λέγω, μὴ θορυβεῖτε, ὦ ἄνδρες
&mdash; ἤρετο γὰρ δὴ εἴ τις ἐμοῦ εἴη σοφώτερος.  ἀνεῖλεν οὖν ἡ Πυθία μηδένα
σοφώτερον εἶναι.  καὶ τούτων πέρι ὁ ἀδελφὸς ὑμῖν αὐτοῦ οὑτοσὶ μαρτυρήσει, ἐπειδὴ
ἐκεῖνος τετελεύτηκεν.
]],
            par [[
σκέψασθε δὴ ὧν ἕνεκα ταῦτα λέγω: μέλλω γὰρ ὑμᾶς διδάξειν ὅθεν μοι ἡ διαβολὴ
γέγονεν.  ταῦτα γὰρ ἐγὼ ἀκούσας ἐνεθυμούμην οὑτωσί: "τί ποτε λέγει ὁ θεός, καὶ
τί ποτε αἰνίττεται; ἐγὼ γὰρ δὴ οὔτε μέγα οὔτε σμικρὸν σύνοιδα ἐμαυτῷ σοφὸς ὤν:
τί οὖν ποτε λέγει φάσκων ἐμὲ σοφώτατον εἶναι; οὐ γὰρ δήπου ψεύδεταί γε: οὐ γὰρ
θέμις αὐτῷ".  καὶ πολὺν μὲν χρόνον ἠπόρουν τί ποτε λέγει: ἔπειτα μόγις πάνυ ἐπὶ
ζήτησιν αὐτοῦ τοιαύτην τινὰ ἐτραπόμην.  ἦλθον ἐπί τινα τῶν δοκούντων σοφῶν
εἶναι, ὡς ἐνταῦθα εἴπερ που ἐλέγξων τὸ μαντεῖον καὶ ἀποφανῶν τῷ χρησμῷ ὅτι
"οὑτοσὶ ἐμοῦ σοφώτερός ἐστι, σὺ δ᾽ ἐμὲ ἔφησθα".
]],
        },
    },
}, {
    id = "21b",
    source = "21b",
    title = "politicians",
    content = {
        lines {
            par [[
Accordingly I went to one who had the reputation of wisdom, and observed him
&mdash; his name I need not mention; he was a politician whom I selected for
examination &mdash; and the result was as follows: when I began to talk with
him, I could not help thinking that he was not really wise, although he was
thought wise by many, and still wiser by himself; and thereupon I tried to
explain to him that he thought himself wise, but was not really wise; and the
consequence was that he hated me, and his enmity was shared by several who were
present and heard me.  So I left him, saying to myself, as I went away: "Well,
although I do not suppose that either of us knows anything really beautiful and
good, I am better off than he is &mdash; for he knows nothing, and thinks that
he knows; I neither know nor think that I know".  In this latter particular,
then, I seem to have slightly the advantage of him.  Then I went to another who
had still higher pretensions to wisdom, and my conclusion was exactly the same.
Whereupon I made another enemy of him, and of many others besides him.
]],
            par [[
Then I went to one man after another, being not unconscious of the enmity which
I provoked, and I lamented and feared this: but necessity was laid upon me
&mdash; the word of God, I thought, ought to be considered first.  And I said to
myself "go I must to all who appear to know, and find out the meaning of the
oracle".  And I swear to you, Athenians, by the dog I swear!  &mdash; for I must
tell you the truth &mdash; the result of my mission was just this: I found that
the men most in repute were all but the most foolish; and that others less
esteemed were really wiser and better.  I will tell you the tale of my
wanderings and of the "Herculean" labours, as I may call them, which I endured
only to find at last the oracle irrefutable.
]],
        },
        lines {
            par [[
διασκοπῶν οὖν τοῦτον &mdash; ὀνόματι γὰρ οὐδὲν δέομαι λέγειν, ἦν δέ τις τῶν
πολιτικῶν πρὸς ὃν ἐγὼ σκοπῶν τοιοῦτόν τι ἔπαθον, ὦ ἄνδρες Ἀθηναῖοι, καὶ
διαλεγόμενος αὐτῷ &mdash; ἔδοξέ μοι οὗτος ὁ ἀνὴρ δοκεῖν μὲν εἶναι σοφὸς ἄλλοις
τε πολλοῖς ἀνθρώποις καὶ μάλιστα ἑαυτῷ, εἶναι δ᾽ οὔ: κἄπειτα ἐπειρώμην αὐτῷ
δεικνύναι ὅτι οἴοιτο μὲν εἶναι σοφός, εἴη δ᾽ οὔ.  ἐντεῦθεν οὖν τούτῳ τε
ἀπηχθόμην καὶ πολλοῖς τῶν παρόντων: πρὸς ἐμαυτὸν δ᾽ οὖν ἀπιὼν ἐλογιζόμην ὅτι
τούτου μὲν τοῦ ἀνθρώπου ἐγὼ σοφώτερός εἰμι: κινδυνεύει μὲν γὰρ ἡμῶν οὐδέτερος
οὐδὲν καλὸν κἀγαθὸν εἰδέναι, ἀλλ᾽ οὗτος μὲν οἴεταί τι εἰδέναι οὐκ εἰδώς, ἐγὼ δέ,
ὥσπερ οὖν οὐκ οἶδα, οὐδὲ οἴομαι: ἔοικα γοῦν τούτου γε σμικρῷ τινι αὐτῷ τούτῳ
σοφώτερος εἶναι, ὅτι ἃ μὴ οἶδα οὐδὲ οἴομαι εἰδέναι.  ἐντεῦθεν ἐπ᾽ ἄλλον ᾖα τῶν
ἐκείνου δοκούντων σοφωτέρων εἶναι καί μοι ταὐτὰ ταῦτα ἔδοξε, καὶ ἐνταῦθα κἀκείνῳ
καὶ ἄλλοις πολλοῖς ἀπηχθόμην.
]],
            par [[
μετὰ ταῦτ᾽ οὖν ἤδη ἐφεξῆς ᾖα, αἰσθανόμενος μὲν καὶ λυπούμενος καὶ δεδιὼς ὅτι
ἀπηχθανόμην, ὅμως δὲ ἀναγκαῖον ἐδόκει εἶναι τὸ τοῦ θεοῦ περὶ πλείστου ποιεῖσθαι
&mdash; ἰτέον οὖν, σκοποῦντι τὸν χρησμὸν τί λέγει, ἐπὶ ἅπαντας τούς τι δοκοῦντας
εἰδέναι.  καὶ νὴ τὸν κύνα, ὦ ἄνδρες Ἀθηναῖοι &mdash; δεῖ γὰρ πρὸς ὑμᾶς τἀληθῆ
λέγειν &mdash; ἦ μὴν ἐγὼ ἔπαθόν τι τοιοῦτον: οἱ μὲν μάλιστα εὐδοκιμοῦντες ἔδοξάν
μοι ὀλίγου δεῖν τοῦ πλείστου ἐνδεεῖς εἶναι ζητοῦντι κατὰ τὸν θεόν, ἄλλοι δὲ
δοκοῦντες φαυλότεροι ἐπιεικέστεροι εἶναι ἄνδρες πρὸς τὸ φρονίμως ἔχειν.  δεῖ δὴ
ὑμῖν τὴν ἐμὴν πλάνην ἐπιδεῖξαι ὥσπερ πόνους τινὰς πονοῦντος ἵνα μοι καὶ
ἀνέλεγκτος ἡ μαντεία γένοιτο.
]],
        },
    },
}, {
    id = "22a",
    source = "22a",
    title = "poets",
    content = {
        par [[
After the politicians, I went to the poets; tragic, dithyrambic, and all sorts.
And there, I said to myself: "you will be instantly detected; now you will find
out that you are more ignorant than they are".  Accordingly, I took them some of
the most elaborate passages in their own writings, and asked what was the
meaning of them &mdash; thinking that they would teach me something.  Will you
believe me?  I am almost ashamed to confess the truth, but I must say that there
is hardly a person present who would not have talked better about their poetry
than they did themselves.  Then I knew that not by wisdom do poets write poetry,
but by a sort of genius and inspiration; they are like diviners or soothsayers
who also say many fine things, but do not understand the meaning of them.  The
poets appeared to me to be much in the same case; and I further observed that
upon the strength of their poetry they believed themselves to be the wisest of
men in other things in which they were not wise.  So I departed, conceiving
myself to be superior to them for the same reason that I was superior to the
politicians.
]],
        par [[
μετὰ γὰρ τοὺς πολιτικοὺς ᾖα ἐπὶ τοὺς ποιητὰς τούς τε τῶν τραγῳδιῶν καὶ τοὺς τῶν
διθυράμβων καὶ τοὺς ἄλλους, ὡς ἐνταῦθα ἐπ᾽ αὐτοφώρῳ καταληψόμενος ἐμαυτὸν
ἀμαθέστερον ἐκείνων ὄντα.  ἀναλαμβάνων οὖν αὐτῶν τὰ ποιήματα ἅ μοι ἐδόκει
μάλιστα πεπραγματεῦσθαι αὐτοῖς, διηρώτων ἂν αὐτοὺς τί λέγοιεν, ἵν᾽ ἅμα τι καὶ
μανθάνοιμι παρ᾽ αὐτῶν.  αἰσχύνομαι οὖν ὑμῖν εἰπεῖν, ὦ ἄνδρες, τἀληθῆ: ὅμως δὲ
ῥητέον.  ὡς ἔπος γὰρ εἰπεῖν ὀλίγου αὐτῶν ἅπαντες οἱ παρόντες ἂν βέλτιον ἔλεγον
περὶ ὧν αὐτοὶ ἐπεποιήκεσαν.  ἔγνων οὖν αὖ καὶ περὶ τῶν ποιητῶν ἐν ὀλίγῳ τοῦτο,
ὅτι οὐ σοφίᾳ ποιοῖεν ἃ ποιοῖεν, ἀλλὰ φύσει τινὶ καὶ ἐνθουσιάζοντες ὥσπερ οἱ
θεομάντεις καὶ οἱ χρησμῳδοί: καὶ γὰρ οὗτοι λέγουσι μὲν πολλὰ καὶ καλά, ἴσασιν δὲ
οὐδὲν ὧν λέγουσι.  τοιοῦτόν τί μοι ἐφάνησαν πάθος καὶ οἱ ποιηταὶ πεπονθότες, καὶ
ἅμα ᾐσθόμην αὐτῶν διὰ τὴν ποίησιν οἰομένων καὶ τἆλλα σοφωτάτων εἶναι ἀνθρώπων ἃ
οὐκ ἦσαν.  ἀπῇα οὖν καὶ ἐντεῦθεν τῷ αὐτῷ οἰόμενος περιγεγονέναι ᾧπερ καὶ τῶν
πολιτικῶν.
]],
    },
}, {
    id = "22c",
    source = "22c",
    title = "artisans",
    content = {
        par [[
At last I went to the artisans.  I was conscious that I knew nothing at all, as
I may say, and I was sure that they knew many fine things; and here I was not
mistaken, for they did know many things of which I was ignorant, and in this
they certainly were wiser than I was.  But I observed that even the good
artisans fell into the same error as the poets; &mdash; because they were good
workmen they thought that they also knew all sorts of high matters, and this
defect in them overshadowed their wisdom; and therefore I asked myself on behalf
of the oracle, whether I would like to be as I was, neither having their
knowledge nor their ignorance, or like them in both; and I made answer to myself
and to the oracle that I was better off as I was.
]],
        par [[
τελευτῶν οὖν ἐπὶ τοὺς χειροτέχνας ᾖα: ἐμαυτῷ γὰρ συνῄδη οὐδὲν ἐπισταμένῳ ὡς ἔπος
εἰπεῖν, τούτους δέ γ᾽ ᾔδη ὅτι εὑρήσοιμι πολλὰ καὶ καλὰ ἐπισταμένους.  καὶ τούτου
μὲν οὐκ ἐψεύσθην, ἀλλ᾽ ἠπίσταντο ἃ ἐγὼ οὐκ ἠπιστάμην καί μου ταύτῃ σοφώτεροι
ἦσαν.  ἀλλ᾽, ὦ ἄνδρες Ἀθηναῖοι, ταὐτόν μοι ἔδοξαν ἔχειν ἁμάρτημα ὅπερ καὶ οἱ
ποιηταὶ καὶ οἱ ἀγαθοὶ δημιουργοί &mdash; διὰ τὸ τὴν τέχνην καλῶς ἐξεργάζεσθαι
ἕκαστος ἠξίου καὶ τἆλλα τὰ μέγιστα σοφώτατος εἶναι &mdash; καὶ αὐτῶν αὕτη ἡ
πλημμέλεια ἐκείνην τὴν σοφίαν ἀποκρύπτειν: ὥστε με ἐμαυτὸν ἀνερωτᾶν ὑπὲρ τοῦ
χρησμοῦ πότερα δεξαίμην ἂν οὕτως ὥσπερ ἔχω ἔχειν, μήτε τι σοφὸς ὢν τὴν ἐκείνων
σοφίαν μήτε ἀμαθὴς τὴν ἀμαθίαν, ἢ ἀμφότερα ἃ ἐκεῖνοι ἔχουσιν ἔχειν.  ἀπεκρινάμην
οὖν ἐμαυτῷ καὶ τῷ χρησμῷ ὅτι μοι λυσιτελοῖ ὥσπερ ἔχω ἔχειν.
]],
    },
}, {
    id = "22e",
    source = "22e",
    title = "devotion to God",
    content = {
        par [[
This inquisition has led to my having many enemies of the worst and most
dangerous kind, and has given occasion also to many calumnies.  And I am called
wise, for my hearers always imagine that I myself possess the wisdom which I
find wanting in others: but the truth is, O men of Athens, that God only is
wise; and by his answer he intends to show that the wisdom of men is worth
little or nothing; he is not speaking of Socrates, he is only using my name by
way of illustration, as if he said: "He, O men, is the wisest, who, like
Socrates, knows that his wisdom is in truth worth nothing".  And so I go about
the world, obedient to the god, and search and make enquiry into the wisdom of
anyone, whether citizen or stranger, who appears to be wise; and if he is not
wise, then in vindication of the oracle I show him that he is not wise; and my
occupation quite absorbs me, and I have no time to give either to any public
matter of interest or to any concern of my own, but I am in utter poverty by
reason of my devotion to the god.
]],
        par [[
ἐκ ταυτησὶ δὴ τῆς ἐξετάσεως, ὦ ἄνδρες Ἀθηναῖοι, πολλαὶ μὲν ἀπέχθειαί μοι
γεγόνασι καὶ οἷαι χαλεπώταται καὶ βαρύταται, ὥστε πολλὰς διαβολὰς ἀπ᾽ αὐτῶν
γεγονέναι, ὄνομα δὲ τοῦτο λέγεσθαι, σοφὸς εἶναι: οἴονται γάρ με ἑκάστοτε οἱ
παρόντες ταῦτα αὐτὸν εἶναι σοφὸν ἃ ἂν ἄλλον ἐξελέγξω.  τὸ δὲ κινδυνεύει, ὦ
ἄνδρες, τῷ ὄντι ὁ θεὸς σοφὸς εἶναι, καὶ ἐν τῷ χρησμῷ τούτῳ τοῦτο λέγειν, ὅτι ἡ
ἀνθρωπίνη σοφία ὀλίγου τινὸς ἀξία ἐστὶν καὶ οὐδενός.  καὶ φαίνεται τοῦτον λέγειν
τὸν Σωκράτη, προσκεχρῆσθαι δὲ τῷ ἐμῷ ὀνόματι, ἐμὲ παράδειγμα ποιούμενος, ὥσπερ
ἂν εἰ εἴποι ὅτι "οὗτος ὑμῶν, ὦ ἄνθρωποι, σοφώτατός ἐστιν, ὅστις ὥσπερ Σωκράτης
ἔγνωκεν ὅτι οὐδενὸς ἄξιός ἐστι τῇ ἀληθείᾳ πρὸς σοφίαν". ταῦτ᾽ οὖν ἐγὼ μὲν ἔτι
καὶ νῦν περιιὼν ζητῶ καὶ ἐρευνῶ κατὰ τὸν θεὸν καὶ τῶν ἀστῶν καὶ ξένων ἄν τινα
οἴωμαι σοφὸν εἶναι: καὶ ἐπειδάν μοι μὴ δοκῇ, τῷ θεῷ βοηθῶν ἐνδείκνυμαι ὅτι οὐκ
ἔστι σοφός.  καὶ ὑπὸ ταύτης τῆς ἀσχολίας οὔτε τι τῶν τῆς πόλεως πρᾶξαί μοι σχολὴ
γέγονεν ἄξιον λόγου οὔτε τῶν οἰκείων, ἀλλ᾽ ἐν πενίᾳ μυρίᾳ εἰμὶ διὰ τὴν τοῦ θεοῦ
λατρείαν.
]],
    },
}, {
    id = "23c",
    source = "23c",
    title = "angry with themselves",
    content = {
        par [[
There is another thing: &mdash; young men of the richer classes, who have not
much to do, come about me of their own accord; they like to hear the pretenders
examined, and they often imitate me, and proceed to examine others; there are
plenty of persons, as they quickly discover, who think that they know something,
but really know little or nothing; and then those who are examined by them
instead of being angry with themselves are angry with me: "This confounded
Socrates", they say; this villainous misleader of youth! &mdash; and then if
somebody asks them "Why, what evil does he practise or teach?" they do not know,
and cannot tell; but in order that they may not appear to be at a loss, they
repeat the ready-made charges which are used against all philosophers about
teaching things up in the clouds and under the earth, and having no gods, and
making the worse appear the better cause; for they do not like to confess that
their pretence of knowledge has been detected &mdash; which is the truth; and as
they are numerous and ambitious and energetic, and are drawn up in battle array
and have persuasive tongues, they have filled your ears with their loud and
inveterate calumnies.
]],
        par [[
πρὸς δὲ τούτοις οἱ νέοι μοι ἐπακολουθοῦντες &mdash; οἷς μάλιστα σχολή ἐστιν, οἱ
τῶν πλουσιωτάτων &mdash; αὐτόματοι, χαίρουσιν ἀκούοντες ἐξεταζομένων τῶν
ἀνθρώπων, καὶ αὐτοὶ πολλάκις ἐμὲ μιμοῦνται, εἶτα ἐπιχειροῦσιν ἄλλους ἐξετάζειν:
κἄπειτα οἶμαι εὑρίσκουσι πολλὴν ἀφθονίαν οἰομένων μὲν εἰδέναι τι ἀνθρώπων,
εἰδότων δὲ ὀλίγα ἢ οὐδέν.  ἐντεῦθεν οὖν οἱ ὑπ᾽ αὐτῶν ἐξεταζόμενοι ἐμοὶ
ὀργίζονται, οὐχ αὑτοῖς, καὶ λέγουσιν ὡς Σωκράτης τίς ἐστι μιαρώτατος καὶ
διαφθείρει τοὺς νέους: καὶ ἐπειδάν τις αὐτοὺς ἐρωτᾷ ὅτι ποιῶν καὶ ὅτι διδάσκων,
ἔχουσι μὲν οὐδὲν εἰπεῖν ἀλλ᾽ ἀγνοοῦσιν, ἵνα δὲ μὴ δοκῶσιν ἀπορεῖν, τὰ κατὰ
πάντων τῶν φιλοσοφούντων πρόχειρα ταῦτα λέγουσιν, ὅτι "τὰ μετέωρα καὶ τὰ ὑπὸ
γῆς" καὶ "θεοὺς μὴ νομίζειν" καὶ "τὸν ἥττω λόγον κρείττω ποιεῖν".  τὰ γὰρ ἀληθῆ
οἴομαι οὐκ ἂν ἐθέλοιεν λέγειν, ὅτι κατάδηλοι γίγνονται προσποιούμενοι μὲν
εἰδέναι, εἰδότες δὲ οὐδέν.  ἅτε οὖν οἶμαι φιλότιμοι ὄντες καὶ σφοδροὶ καὶ
πολλοί, καὶ συντεταμένως καὶ πιθανῶς λέγοντες περὶ ἐμοῦ, ἐμπεπλήκασιν ὑμῶν τὰ
ὦτα καὶ πάλαι καὶ σφοδρῶς διαβάλλοντες.
]],
    },
}, {
    id = "25c",
    source = "25c",
    title = "to live among good citizens",
    content = {
        lines {
            par [[
&ndash; And now, Meletus, I will ask you another question &mdash; by Zeus I
will: Which is better, to live among bad citizens, or among good ones?  Answer,
friend, I say; the question is one which may be easily answered.  Do not the
good do their neighbours good, and the bad do them evil?
]],
            par [[
&ndash; Certainly.
]],
            par [[
&ndash; And is there anyone who would rather be injured than benefited by those
who live with him?  Answer, my good friend, the law requires you to answer
&mdash; does anyone like to be injured?
]],
            par [[
&ndash; Certainly not.
]],
            par [[
&ndash; And when you accuse me of corrupting and deteriorating the youth, do you
allege that I corrupt them intentionally or unintentionally?
]],
            par [[
&ndash; Intentionally, I say.
]],
            par [[
&ndash; But you have just admitted that the good do their neighbours good, and
the evil do them evil.  Now, is that a truth which your superior wisdom has
recognized thus early in life, and am I, at my age, in such darkness and
ignorance as not to know that if a man with whom I have to live is corrupted by
me, I am very likely to be harmed by him; and yet I corrupt him, and
intentionally, too &mdash; so you say, although neither I nor any other human
being is ever likely to be convinced by you.  But either I do not corrupt them,
or I corrupt them unintentionally; and on either view of the case you lie.  If
my offence is unintentional, the law has no cognizance of unintentional
offences: you ought to have taken me privately, and warned and admonished me;
for if I had been better advised, I should have left off doing what I only did
unintentionally &mdash; no doubt I should; but you would have nothing to say to
me and refused to teach me.  And now you bring me up in this court, which is a
place not of instruction, but of punishment.  It will be very clear to you,
Athenians, as I was saying, that Meletus has no care at all, great or small,
about the matter.
]],
        },
        lines {
            par [[
ἔτι δὲ ἡμῖν εἰπέ, ὦ πρὸς Διὸς Μέλητε, πότερόν ἐστιν οἰκεῖν ἄμεινον ἐν πολίταις
χρηστοῖς ἢ πονηροῖς; ὦ τάν, ἀπόκριναι: οὐδὲν γάρ τοι χαλεπὸν ἐρωτῶ.  οὐχ οἱ μὲν
πονηροὶ κακόν τι ἐργάζονται τοὺς ἀεὶ ἐγγυτάτω αὑτῶν ὄντας, οἱ δ᾽ ἀγαθοὶ ἀγαθόν
τι;
]],
            par [[
πάνυ γε.
]],
            par [[
ἔστιν οὖν ὅστις βούλεται ὑπὸ τῶν συνόντων βλάπτεσθαι μᾶλλον ἢ ὠφελεῖσθαι;
ἀποκρίνου, ὦ ἀγαθέ: καὶ γὰρ ὁ νόμος κελεύει ἀποκρίνεσθαι.  ἔσθ᾽ ὅστις βούλεται
βλάπτεσθαι;
]],
            par [[
οὐ δῆτα.
]],
            par [[
φέρε δή, πότερον ἐμὲ εἰσάγεις δεῦρο ὡς διαφθείροντα τοὺς νέους καὶ πονηροτέρους
ποιοῦντα ἑκόντα ἢ ἄκοντα;
]],
            par [[
ἑκόντα ἔγωγε.
]],
            par [[
τί δῆτα, ὦ Μέλητε; τοσοῦτον σὺ ἐμοῦ σοφώτερος εἶ τηλικούτου ὄντος τηλικόσδε ὤν,
ὥστε σὺ μὲν ἔγνωκας ὅτι οἱ μὲν κακοὶ κακόν τι ἐργάζονται ἀεὶ τοὺς μάλιστα
πλησίον ἑαυτῶν, οἱ δὲ ἀγαθοὶ ἀγαθόν, ἐγὼ δὲ δὴ εἰς τοσοῦτον ἀμαθίας ἥκω ὥστε καὶ
τοῦτ᾽ ἀγνοῶ, ὅτι ἐάν τινα μοχθηρὸν ποιήσω τῶν συνόντων, κινδυνεύσω κακόν τι
λαβεῖν ὑπ᾽ αὐτοῦ, ὥστε τοῦτο τὸ τοσοῦτον κακὸν ἑκὼν ποιῶ, ὡς φῂς σύ; ταῦτα ἐγώ
σοι οὐ πείθομαι, ὦ Μέλητε, οἶμαι δὲ οὐδὲ ἄλλον ἀνθρώπων οὐδένα: ἀλλ᾽ ἢ οὐ
διαφθείρω, ἢ εἰ διαφθείρω, ἄκων, ὥστε σύ γε κατ᾽ ἀμφότερα ψεύδῃ.  εἰ δὲ ἄκων
διαφθείρω, τῶν τοιούτων καὶ ἀκουσίων ἁμαρτημάτων οὐ δεῦρο νόμος εἰσάγειν ἐστίν,
ἀλλὰ ἰδίᾳ λαβόντα διδάσκειν καὶ νουθετεῖν: δῆλον γὰρ ὅτι ἐὰν μάθω, παύσομαι ὅ γε
ἄκων ποιῶ.  σὺ δὲ συγγενέσθαι μέν μοι καὶ διδάξαι ἔφυγες καὶ οὐκ ἠθέλησας, δεῦρο
δὲ εἰσάγεις, οἷ νόμος ἐστὶν εἰσάγειν τοὺς κολάσεως δεομένους ἀλλ᾽ οὐ μαθήσεως.
ἀλλὰ γάρ, ὦ ἄνδρες Ἀθηναῖοι, τοῦτο μὲν ἤδη δῆλον οὑγὼ ἔλεγον, ὅτι Μελήτῳ τούτων
οὔτε μέγα οὔτε μικρὸν πώποτε ἐμέλησεν.
]],
        },
    },
}, {
    id = "26b",
    source = "26b",
    title = "belief in gods",
    content = {
        lines {
            par [[
&ndash; But still I should like to know, Meletus, in what I am affirmed to
corrupt the young.  I suppose you mean, as I infer from your indictment, that I
teach them not to acknowledge the gods which the state acknowledges, but some
other new divinities or spiritual agencies in their stead.  These are the
lessons by which I corrupt the youth, as you say.
]],
            par [[
&ndash; Yes, that I say emphatically.
]],
            par [[
&ndash; Then, by the gods, Meletus, of whom we are speaking, tell me and the
court, in somewhat plainer terms, what you mean!  For I do not as yet understand
whether you affirm that I teach other men to acknowledge some gods, and
therefore that I do believe in gods, and am not an entire atheist &mdash; this
you do not lay to my charge &mdash; but only you say that they are not the same
gods which the city recognizes &mdash; the charge is that they are different
gods.  Or, do you mean that I am an atheist simply, and a teacher of atheism?
]],
            par [[
&ndash; I mean the latter &mdash; that you are a complete atheist.
]],
            par [[
&ndash; What an extraordinary statement!  Why do you think so, Meletus?
]],
        },
        lines {
            par [[
ὅμως δὲ δὴ λέγε ἡμῖν, πῶς με φῂς διαφθείρειν, ὦ Μέλητε, τοὺς νεωτέρους; ἢ δῆλον
δὴ ὅτι κατὰ τὴν γραφὴν ἣν ἐγράψω θεοὺς διδάσκοντα μὴ νομίζειν οὓς ἡ πόλις
νομίζει, ἕτερα δὲ δαιμόνια καινά; οὐ ταῦτα λέγεις ὅτι διδάσκων διαφθείρω;
]],
            par [[
πάνυ μὲν οὖν σφόδρα ταῦτα λέγω.
]],
            par [[
πρὸς αὐτῶν τοίνυν, ὦ Μέλητε, τούτων τῶν θεῶν ὧν νῦν ὁ λόγος ἐστίν, εἰπὲ ἔτι
σαφέστερον καὶ ἐμοὶ καὶ τοῖς ἀνδράσιν τουτοισί.  ἐγὼ γὰρ οὐ δύναμαι μαθεῖν
πότερον λέγεις διδάσκειν με νομίζειν εἶναί τινας θεούς &mdash; καὶ αὐτὸς ἄρα
νομίζω εἶναι θεοὺς καὶ οὐκ εἰμὶ τὸ παράπαν ἄθεος οὐδὲ ταύτῃ ἀδικῶ &mdash; οὐ
μέντοι οὕσπερ γε ἡ πόλις ἀλλὰ ἑτέρους, καὶ τοῦτ᾽ ἔστιν ὅ μοι ἐγκαλεῖς, ὅτι
ἑτέρους, ἢ παντάπασί με φῂς οὔτε αὐτὸν νομίζειν θεοὺς τούς τε ἄλλους ταῦτα
διδάσκειν.
]],
            par [[
ταῦτα λέγω, ὡς τὸ παράπαν οὐ νομίζεις θεούς.
]],
            par [[
ὦ θαυμάσιε Μέλητε, ἵνα τί ταῦτα λέγεις;
]],
        },
    },
}, {
    id = "26e",
    source = "26e",
    content = {
        lines {
            par [[
&ndash; Nobody will believe you, Meletus, and I am pretty sure that you do not
believe yourself.  I cannot help thinking, men of Athens, that Meletus is
reckless and impudent, and that he has written this indictment in a spirit of
mere wantonness and youthful bravado.
]],
            par [[
Has he not compounded a riddle, thinking to try me?  He said to himself: &mdash;
I shall see whether the wise Socrates will discover my facetious contradiction,
or whether I shall be able to deceive him and the rest of them.  For he
certainly does appear to me to contradict himself in the indictment as much as
if he said that Socrates is guilty of not believing in the gods, and yet of
believing in them &mdash; but this is not like a person who is in earnest.
]],
            par [[
I should like you, O men of Athens, to join me in examining what I conceive to
be his inconsistency; and do you, Meletus, answer.  And I must remind the
audience of my request that they would not make a disturbance if I speak in my
accustomed manner:
]],
            par [[
Did ever man, Meletus, believe in the existence of human things, and not of
human beings?  &hellip; I wish, men of Athens, that he would answer, and not be
always trying to get up an interruption.  Did ever any man believe in
horsemanship, and not in horses?  Or in flute-playing, and not in flute-players?
No, my friend; I will answer to you and to the court, as you refuse to answer
for yourself.  There is no man who ever did.  But now please to answer the next
question: Can a man believe in spiritual and divine agencies, and not in spirits
or demigods?
]],
            par [[
&ndash; He cannot.
]],
            par [[
&ndash; How lucky I am to have extracted that answer, by the assistance of the
court!  But then you swear in the indictment that I teach and believe in divine
or spiritual agencies (new or old, no matter for that); at any rate, I believe
in spiritual agencies &mdash; so you say and swear in the affidavit; and yet if
I believe in divine beings, how can I help believing in spirits or demigods;
&mdash; must I not?  To be sure I must; and therefore I may assume that your
silence gives consent.  Now what are spirits or demigods?  Are they not either
gods or the sons of gods?
]],
            par [[
&ndash; Certainly they are.
]],
            par [[
&ndash; But this is what I call the facetious riddle invented by you: the
demigods or spirits are gods, and you say first that I do not believe in gods,
and then again that I do believe in gods; that is, if I believe in demigods.
For if the demigods are the illegitimate sons of gods, whether by the nymphs or
by any other mothers, of whom they are said to be the sons &mdash; what human
being will ever believe that there are no gods if they are the sons of gods?
You might as well affirm the existence of mules, and deny that of horses and
asses.  Such nonsense, Meletus, could only have been intended by you to make
trial of me.  You have put this into the indictment because you had nothing real
of which to accuse me.  But no one who has a particle of understanding will ever
be convinced by you that the same men can believe in divine and superhuman
things, and yet not believe that there are gods and demigods and heroes.
]],
        },
        lines {
            par [[
ἄπιστός γ᾽ εἶ, ὦ Μέλητε, καὶ ταῦτα μέντοι, ὡς ἐμοὶ δοκεῖς, σαυτῷ.  ἐμοὶ γὰρ
δοκεῖ οὑτοσί, ὦ ἄνδρες Ἀθηναῖοι, πάνυ εἶναι ὑβριστὴς καὶ ἀκόλαστος, καὶ ἀτεχνῶς
τὴν γραφὴν ταύτην ὕβρει τινὶ καὶ ἀκολασίᾳ καὶ νεότητι γράψασθαι.
]],
            par [[
ἔοικεν γὰρ ὥσπερ αἴνιγμα συντιθέντι διαπειρωμένῳ "ἆρα γνώσεται Σωκράτης ὁ σοφὸς
δὴ ἐμοῦ χαριεντιζομένου καὶ ἐναντί" ἐμαυτῷ λέγοντος, "ἢ ἐξαπατήσω αὐτὸν καὶ τοὺς
ἄλλους τοὺς ἀκούοντας"; οὗτος γὰρ ἐμοὶ φαίνεται τὰ ἐναντία λέγειν αὐτὸς ἑαυτῷ ἐν
τῇ γραφῇ ὥσπερ ἂν εἰ εἴποι: "ἀδικεῖ Σωκράτης θεοὺς οὐ νομίζων, ἀλλὰ θεοὺς
νομίζων". καίτοι τοῦτό ἐστι παίζοντος.
]],
            par [[
συνεπισκέψασθε δή, ὦ ἄνδρες, ᾗ μοι φαίνεται ταῦτα λέγειν: σὺ δὲ ἡμῖν ἀπόκριναι,
ὦ Μέλητε.  ὑμεῖς δέ, ὅπερ κατ᾽ ἀρχὰς ὑμᾶς παρῃτησάμην, μέμνησθέ μοι μὴ θορυβεῖν
ἐὰν ἐν τῷ εἰωθότι τρόπῳ τοὺς λόγους ποιῶμαι.
]],
            par [[
ἔστιν ὅστις ἀνθρώπων, ὦ Μέλητε, ἀνθρώπεια μὲν νομίζει πράγματ᾽ εἶναι, ἀνθρώπους
δὲ οὐ νομίζει; ἀποκρινέσθω, ὦ ἄνδρες, καὶ μὴ ἄλλα καὶ ἄλλα θορυβείτω: ἔσθ᾽ ὅστις
ἵππους μὲν οὐ νομίζει, ἱππικὰ δὲ πράγματα; ἢ αὐλητὰς μὲν οὐ νομίζει εἶναι,
αὐλητικὰ δὲ πράγματα; οὐκ ἔστιν, ὦ ἄριστε ἀνδρῶν: εἰ μὴ σὺ βούλει ἀποκρίνεσθαι,
ἐγὼ σοὶ λέγω καὶ τοῖς ἄλλοις τουτοισί.  ἀλλὰ τὸ ἐπὶ τούτῳ γε ἀπόκριναι: ἔσθ᾽
ὅστις δαιμόνια μὲν νομίζει πράγματ᾽ εἶναι, δαίμονας δὲ οὐ νομίζει;
]],
            par [[
οὐκ ἔστιν.
]],
            par [[
ὡς ὤνησας ὅτι μόγις ἀπεκρίνω ὑπὸ τουτωνὶ ἀναγκαζόμενος.  οὐκοῦν δαιμόνια μὲν φῄς
με καὶ νομίζειν καὶ διδάσκειν, εἴτ᾽ οὖν καινὰ εἴτε παλαιά, ἀλλ᾽ οὖν δαιμόνιά γε
νομίζω κατὰ τὸν σὸν λόγον, καὶ ταῦτα καὶ διωμόσω ἐν τῇ ἀντιγραφῇ.  εἰ δὲ
δαιμόνια νομίζω, καὶ δαίμονας δήπου πολλὴ ἀνάγκη νομίζειν μέ ἐστιν: οὐχ οὕτως
ἔχει; ἔχει δή: τίθημι γάρ σε ὁμολογοῦντα, ἐπειδὴ οὐκ ἀποκρίνῃ.  τοὺς δὲ δαίμονας
οὐχὶ ἤτοι θεούς γε ἡγούμεθα ἢ θεῶν παῖδας; φῂς ἢ οὔ;
]],
            par [[
πάνυ γε.
]],
            par [[
οὐκοῦν εἴπερ δαίμονας ἡγοῦμαι, ὡς σὺ φῄς, εἰ μὲν θεοί τινές εἰσιν οἱ δαίμονες,
τοῦτ᾽ ἂν εἴη ὃ ἐγώ φημί σε αἰνίττεσθαι καὶ χαριεντίζεσθαι, θεοὺς οὐχ ἡγούμενον
φάναι με θεοὺς αὖ ἡγεῖσθαι πάλιν, ἐπειδήπερ γε δαίμονας ἡγοῦμαι: εἰ δ᾽ αὖ οἱ
δαίμονες θεῶν παῖδές εἰσιν νόθοι τινὲς ἢ ἐκ νυμφῶν ἢ ἔκ τινων ἄλλων ὧν δὴ καὶ
λέγονται, τίς ἂν ἀνθρώπων θεῶν μὲν παῖδας ἡγοῖτο εἶναι, θεοὺς δὲ μή; ὁμοίως γὰρ
ἂν ἄτοπον εἴη ὥσπερ ἂν εἴ τις ἵππων μὲν παῖδας ἡγοῖτο ἢ καὶ ὄνων, τοὺς ἡμιόνους,
ἵππους δὲ καὶ ὄνους μὴ ἡγοῖτο εἶναι.  ἀλλ᾽, ὦ Μέλητε, οὐκ ἔστιν ὅπως σὺ ταῦτα
οὐχὶ ἀποπειρώμενος ἡμῶν ἐγράψω τὴν γραφὴν ταύτην ἢ ἀπορῶν ὅτι ἐγκαλοῖς ἐμοὶ
ἀληθὲς ἀδίκημα: ὅπως δὲ σύ τινα πείθοις ἂν καὶ σμικρὸν νοῦν ἔχοντα ἀνθρώπων, ὡς
οὐ τοῦ αὐτοῦ ἔστιν καὶ δαιμόνια καὶ θεῖα ἡγεῖσθαι, καὶ αὖ τοῦ αὐτοῦ μήτε
δαίμονας μήτε θεοὺς μήτε ἥρωας, οὐδεμία μηχανή ἐστιν.
]],
        },
    },
}, {
    id = "28b",
    source = "28b",
    title = "fear of death",
    content = {
        lines {
            par [[
Someone will say: "And are you not ashamed, Socrates, of a course of life which
is likely to bring you to an untimely end?".  To him I may fairly answer: there
you are mistaken: a man who is good for anything ought not to calculate the
chance of living or dying; he ought only to consider whether in doing anything
he is doing right or wrong &mdash; acting the part of a good man or of a bad.
Whereas, upon your view, the heroes who fell at Troy were not good for much, and
the son of Thetis above all, who altogether despised danger in comparison with
disgrace; and when he was so eager to slay Hector, his goddess mother said to
him, that if he avenged his companion Patroclus, and slew Hector, he would die
himself &mdash; "Fate", she said, in these or the like words, "waits for you
next after Hector"; he, receiving this warning, utterly despised danger and
death, and instead of fearing them, feared rather to live in dishonour, and not
to avenge his friend.  "Let me die forthwith", he replies, "and be avenged of my
enemy, rather than abide here by the beaked ships, a laughingstock and a burden
of the earth".  Had Achilles any thought of death and danger?
]],
            par [[
And this, O men of Athens, is a true saying.  For wherever a man's place is,
whether the place which he has chosen or that in which he has been placed by a
commander, there he ought to remain in the hour of danger; he should not think
of death or of anything but of disgrace.  Strange, indeed, would be my conduct,
O men of Athens, if I who, when I was ordered by the generals whom you chose to
command me at Potidaea and Amphipolis and Delium, remained where they placed me,
like any other man, facing death &mdash; if now, when, as I conceive and
imagine, God orders me to fulfil the philosopher's mission of searching into
myself and other men, I were to desert my post through fear of death, or any
other fear; that would indeed be strange, and I might justly be arraigned in
court for denying the existence of the gods, if I disobeyed the oracle because I
was afraid of death, fancying that I was wise when I was not wise.  For the fear
of death is indeed the pretence of wisdom, and not real wisdom, being a pretence
of knowing the unknown; and no one knows whether death, which men in their fear
apprehend to be the greatest evil, may not be the greatest good.  Is not this
ignorance of a disgraceful sort, the ignorance which is the conceit that a man
knows what he does not know?  And in this respect only I believe myself to
differ from men in general, and may perhaps claim to be wiser than they are:
&mdash; that whereas I know but little of the world below, I do not suppose that
I know: but I do know that injustice and disobedience to a better, whether God
or man, is evil and dishonourable, and I will never fear or avoid a possible
good rather than a certain evil.  And therefore if you let me go now, and are
not convinced by Anytus, who said that since I had been prosecuted I must be put
to death; (or if not that I ought never to have been prosecuted at all); and
that if I escape now, your sons will all be utterly ruined by listening to my
words &mdash; if you say to me, "Socrates, this time we will not mind Anytus,
and you shall be let off, but upon one condition, that you are not to enquire
and speculate in this way any more, and that if you are caught doing so again
you shall die"; &mdash; if this was the condition on which you let me go, I
should reply: men of Athens, I honour and love you; but I shall obey God rather
than you, and while I have life and strength I shall never cease from the
practice and teaching of philosophy, exhorting anyone whom I meet and saying to
him after my manner: You, my friend &mdash; a citizen of the great and mighty
and wise city of Athens &mdash; are you not ashamed of heaping up the greatest
amount of money and honour and reputation, and caring so little about wisdom and
truth and the greatest improvement of the soul, which you never regard or heed
at all?  And if the person with whom I am arguing, says: "Yes, but I do care";
then I do not leave him or let him go at once; but I proceed to interrogate and
examine and cross-examine him, and if I think that he has no virtue in him, but
only says that he has, I reproach him with undervaluing the greater, and
overvaluing the less.  And I shall repeat the same words to everyone whom I
meet, young and old, citizen and alien, but especially to the citizens, inasmuch
as they are my brethren.  For know that this is the command of God; and I
believe that no greater good has ever happened in the state than my service to
the God.  For I do nothing but go about persuading you all, old and young alike,
not to take thought for your persons or your properties, but first and chiefly
to care about the greatest improvement of the soul.  I tell you that virtue is
not given by money, but that from virtue comes money and every other good of
man, public as well as private.  This is my teaching, and if this is the
doctrine which corrupts the youth, I am a mischievous person.  But if anyone
says that this is not my teaching, he is speaking an untruth.  Wherefore, O men
of Athens, I say to you, do as Anytus bids or not as Anytus bids, and either
acquit me or not; but whichever you do, understand that I shall never alter my
ways, not even if I have to die many times.
]],
        },
        lines {
            par [[
ἴσως ἂν οὖν εἴποι τις: "εἶτ᾽ οὐκ αἰσχύνῃ, ὦ Σώκρατες, τοιοῦτον ἐπιτήδευμα
ἐπιτηδεύσας ἐξ οὗ κινδυνεύεις νυνὶ ἀποθανεῖν"; ἐγὼ δὲ τούτῳ ἂν δίκαιον λόγον
ἀντείποιμι, ὅτι "οὐ καλῶς λέγεις, ὦ ἄνθρωπε, εἰ οἴει δεῖν κίνδυνον ὑπολογίζεσθαι
τοῦ ζῆν ἢ τεθνάναι ἄνδρα ὅτου τι καὶ σμικρὸν ὄφελός ἐστιν, ἀλλ᾽ οὐκ ἐκεῖνο μόνον
σκοπεῖν ὅταν πράττῃ, πότερον δίκαια ἢ ἄδικα πράττει, καὶ ἀνδρὸς ἀγαθοῦ ἔργα ἢ
κακοῦ.  φαῦλοι γὰρ ἂν τῷ γε σῷ λόγῳ εἶεν τῶν ἡμιθέων ὅσοι ἐν Τροίᾳ
τετελευτήκασιν οἵ τε ἄλλοι καὶ ὁ τῆς Θέτιδος υἱός, ὃς τοσοῦτον τοῦ κινδύνου
κατεφρόνησεν παρὰ τὸ αἰσχρόν τι ὑπομεῖναι ὥστε, ἐπειδὴ εἶπεν ἡ μήτηρ αὐτῷ
προθυμουμένῳ Ἕκτορα ἀποκτεῖναι, θεὸς οὖσα, οὑτωσί πως, ὡς ἐγὼ οἶμαι: "ὦ παῖ, εἰ
τιμωρήσεις Πατρόκλῳ τῷ ἑταίρῳ τὸν φόνον καὶ Ἕκτορα ἀποκτενεῖς, αὐτὸς ἀποθανῇ
&mdash; αὐτίκα γάρ τοι", φησί, "μεθ᾽ Ἕκτορα πότμος ἑτοῖμος" &mdash; ὁ δὲ τοῦτο
ἀκούσας τοῦ μὲν θανάτου καὶ τοῦ κινδύνου ὠλιγώρησε, πολὺ δὲ μᾶλλον δείσας τὸ ζῆν
κακὸς ὢν καὶ τοῖς φίλοις μὴ τιμωρεῖν, "αὐτίκα", φησί, "τεθναίην, δίκην ἐπιθεὶς
τῷ ἀδικοῦντι, ἵνα μὴ ἐνθάδε μένω καταγέλαστος παρὰ νηυσὶ κορωνίσιν ἄχθος
ἀρούρης".  μὴ αὐτὸν οἴει φροντίσαι θανάτου καὶ κινδύνου";
]],
            par [[
οὕτω γὰρ ἔχει, ὦ ἄνδρες Ἀθηναῖοι, τῇ ἀληθείᾳ: οὗ ἄν τις ἑαυτὸν τάξῃ ἡγησάμενος
βέλτιστον εἶναι ἢ ὑπ᾽ ἄρχοντος ταχθῇ, ἐνταῦθα δεῖ, ὡς ἐμοὶ δοκεῖ, μένοντα
κινδυνεύειν, μηδὲν ὑπολογιζόμενον μήτε θάνατον μήτε ἄλλο μηδὲν πρὸ τοῦ αἰσχροῦ.
ἐγὼ οὖν δεινὰ ἂν εἴην εἰργασμένος, ὦ ἄνδρες Ἀθηναῖοι, εἰ ὅτε μέν με οἱ ἄρχοντες
ἔταττον, οὓς ὑμεῖς εἵλεσθε ἄρχειν μου, καὶ ἐν Ποτειδαίᾳ καὶ ἐν Ἀμφιπόλει καὶ ἐπὶ
Δηλίῳ, τότε μὲν οὗ ἐκεῖνοι ἔταττον ἔμενον ὥσπερ καὶ ἄλλος τις καὶ ἐκινδύνευον
ἀποθανεῖν, τοῦ δὲ θεοῦ τάττοντος, ὡς ἐγὼ ᾠήθην τε καὶ ὑπέλαβον, φιλοσοφοῦντά με
δεῖν ζῆν καὶ ἐξετάζοντα ἐμαυτὸν καὶ τοὺς ἄλλους, ἐνταῦθα δὲ φοβηθεὶς ἢ θάνατον ἣ
ἄλλ᾽ ὁτιοῦν πρᾶγμα λίποιμι τὴν τάξιν.  δεινόν τἂν εἴη, καὶ ὡς ἀληθῶς τότ᾽ ἄν με
δικαίως εἰσάγοι τις εἰς δικαστήριον, ὅτι οὐ νομίζω θεοὺς εἶναι ἀπειθῶν τῇ
μαντείᾳ καὶ δεδιὼς θάνατον καὶ οἰόμενος σοφὸς εἶναι οὐκ ὤν.  τὸ γάρ τοι θάνατον
δεδιέναι, ὦ ἄνδρες, οὐδὲν ἄλλο ἐστὶν ἢ δοκεῖν σοφὸν εἶναι μὴ ὄντα: δοκεῖν γὰρ
εἰδέναι ἐστὶν ἃ οὐκ οἶδεν.  οἶδε μὲν γὰρ οὐδεὶς τὸν θάνατον οὐδ᾽ εἰ τυγχάνει τῷ
ἀνθρώπῳ πάντων μέγιστον ὂν τῶν ἀγαθῶν, δεδίασι δ᾽ ὡς εὖ εἰδότες ὅτι μέγιστον τῶν
κακῶν ἐστι.  καίτοι πῶς οὐκ ἀμαθία ἐστὶν αὕτη ἡ ἐπονείδιστος, ἡ τοῦ οἴεσθαι
εἰδέναι ἃ οὐκ οἶδεν; ἐγὼ δ᾽, ὦ ἄνδρες, τούτῳ καὶ ἐνταῦθα ἴσως διαφέρω τῶν πολλῶν
ἀνθρώπων, καὶ εἰ δή τῳ σοφώτερός του φαίην εἶναι, τούτῳ ἄν, ὅτι οὐκ εἰδὼς ἱκανῶς
περὶ τῶν ἐν Ἅιδου οὕτω καὶ οἴομαι οὐκ εἰδέναι: τὸ δὲ ἀδικεῖν καὶ ἀπειθεῖν τῷ
βελτίονι καὶ θεῷ καὶ ἀνθρώπῳ, ὅτι κακὸν καὶ αἰσχρόν ἐστιν οἶδα.  πρὸ οὖν τῶν
κακῶν ὧν οἶδα ὅτι κακά ἐστιν, ἃ μὴ οἶδα εἰ καὶ ἀγαθὰ ὄντα τυγχάνει οὐδέποτε
φοβήσομαι οὐδὲ φεύξομαι: ὥστε οὐδ᾽ εἴ με νῦν ὑμεῖς ἀφίετε Ἀνύτῳ ἀπιστήσαντες, ὃς
ἔφη ἢ τὴν ἀρχὴν οὐ δεῖν ἐμὲ δεῦρο εἰσελθεῖν ἤ, ἐπειδὴ εἰσῆλθον, οὐχ οἷόν τ᾽
εἶναι τὸ μὴ ἀποκτεῖναί με, λέγων πρὸς ὑμᾶς ὡς εἰ διαφευξοίμην ἤδη ἂν ὑμῶν οἱ
ὑεῖς ἐπιτηδεύοντες ἃ Σωκράτης διδάσκει πάντες παντάπασι διαφθαρήσονται, &mdash;
εἴ μοι πρὸς ταῦτα εἴποιτε: "ὦ Σώκρατες, νῦν μὲν Ἀνύτῳ οὐ πεισόμεθα ἀλλ᾽ ἀφίεμέν
σε, ἐπὶ τούτῳ μέντοι, ἐφ᾽ ᾧτε μηκέτι ἐν ταύτῃ τῇ ζητήσει διατρίβειν μηδὲ
φιλοσοφεῖν: ἐὰν δὲ ἁλῷς ἔτι τοῦτο πράττων, ἀποθανῇ" &mdash; εἰ οὖν με, ὅπερ
εἶπον, ἐπὶ τούτοις ἀφίοιτε, εἴποιμ᾽ ἂν ὑμῖν ὅτι "ἐγὼ ὑμᾶς, ὦ ἄνδρες Ἀθηναῖοι,
ἀσπάζομαι μὲν καὶ φιλῶ, πείσομαι δὲ μᾶλλον τῷ θεῷ ἢ ὑμῖν, καὶ ἕωσπερ ἂν ἐμπνέω
καὶ οἷός τε ὦ, οὐ μὴ παύσωμαι φιλοσοφῶν καὶ ὑμῖν παρακελευόμενός τε καὶ
ἐνδεικνύμενος ὅτῳ ἂν ἀεὶ ἐντυγχάνω ὑμῶν, λέγων οἷάπερ εἴωθα, ὅτι "ὦ ἄριστε
ἀνδρῶν, Ἀθηναῖος ὤν, πόλεως τῆς μεγίστης καὶ εὐδοκιμωτάτης εἰς σοφίαν καὶ ἰσχύν,
χρημάτων μὲν οὐκ αἰσχύνῃ ἐπιμελούμενος ὅπως σοι ἔσται ὡς πλεῖστα, καὶ δόξης καὶ
τιμῆς, φρονήσεως δὲ καὶ ἀληθείας καὶ τῆς ψυχῆς ὅπως ὡς βελτίστη ἔσται οὐκ
ἐπιμελῇ οὐδὲ φροντίζεις"; καὶ ἐάν τις ὑμῶν ἀμφισβητήσῃ καὶ φῇ ἐπιμελεῖσθαι, οὐκ
εὐθὺς ἀφήσω αὐτὸν οὐδ᾽ ἄπειμι, ἀλλ᾽ ἐρήσομαι αὐτὸν καὶ ἐξετάσω καὶ ἐλέγξω, καὶ
ἐάν μοι μὴ δοκῇ κεκτῆσθαι ἀρετήν, " φάναι δέ, ὀνειδιῶ ὅτι τὰ πλείστου ἄξια περὶ
ἐλαχίστου ποιεῖται, τὰ δὲ φαυλότερα περὶ πλείονος.  ταῦτα καὶ νεωτέρῳ καὶ
πρεσβυτέρῳ ὅτῳ ἂν ἐντυγχάνω ποιήσω, καὶ ξένῳ καὶ ἀστῷ, μᾶλλον δὲ τοῖς ἀστοῖς,
ὅσῳ μου ἐγγυτέρω ἐστὲ γένει.  ταῦτα γὰρ κελεύει ὁ θεός, εὖ ἴστε, καὶ ἐγὼ οἴομαι
οὐδέν πω ὑμῖν μεῖζον ἀγαθὸν γενέσθαι ἐν τῇ πόλει ἢ τὴν ἐμὴν τῷ θεῷ ὑπηρεσίαν.
οὐδὲν γὰρ ἄλλο πράττων ἐγὼ περιέρχομαι ἢ πείθων ὑμῶν καὶ νεωτέρους καὶ
πρεσβυτέρους μήτε σωμάτων ἐπιμελεῖσθαι μήτε χρημάτων πρότερον μηδὲ οὕτω σφόδρα
ὡς τῆς ψυχῆς ὅπως ὡς ἀρίστη ἔσται, λέγων ὅτι "οὐκ ἐκ χρημάτων ἀρετὴ γίγνεται,
ἀλλ᾽ ἐξ ἀρετῆς χρήματα καὶ τὰ ἄλλα ἀγαθὰ τοῖς ἀνθρώποις ἅπαντα καὶ ἰδίᾳ καὶ
δημοσίᾳ". εἰ μὲν οὖν ταῦτα λέγων διαφθείρω τοὺς νέους, ταῦτ᾽ ἂν εἴη βλαβερά: εἰ
δέ τίς μέ φησιν ἄλλα λέγειν ἢ ταῦτα, οὐδὲν λέγει.  πρὸς ταῦτα", φαίην ἄν, "ὦ
ἄνδρες Ἀθηναῖοι, ἢ πείθεσθε Ἀνύτῳ ἢ μή, καὶ ἢ ἀφίετέ με ἢ μή, ὡς ἐμοῦ οὐκ ἂν
ποιήσαντος ἄλλα, οὐδ᾽ εἰ μέλλω πολλάκις τεθνάναι".
]],
        },
    },
}, {
    id = "30c",
    source = "30c",
    title = "nothing will injure me",
    content = {
        par [[
I would have you know, that if you kill such an one as I am, you will injure
yourselves more than you will injure me.  Nothing will injure me, not Meletus
nor yet Anytus &mdash; they cannot, for a bad man is not permitted to injure a
better than himself.  I do not deny that Anytus may, perhaps, kill him, or drive
him into exile, or deprive him of civil rights; and he may imagine, and others
may imagine, that he is inflicting a great injury upon him: but there I do not
agree.  For the evil of doing as he is doing &mdash; the evil of unjustly taking
away the life of another &mdash; is greater far.
]],
        par [[
εὖ γὰρ ἴστε, ἐάν με ἀποκτείνητε τοιοῦτον ὄντα οἷον ἐγὼ λέγω, οὐκ ἐμὲ μείζω
βλάψετε ἢ ὑμᾶς αὐτούς: ἐμὲ μὲν γὰρ οὐδὲν ἂν βλάψειεν οὔτε Μέλητος οὔτε Ἄνυτος
&mdash; οὐδὲ γὰρ ἂν δύναιτο &mdash; οὐ γὰρ οἴομαι θεμιτὸν εἶναι ἀμείνονι ἀνδρὶ
ὑπὸ χείρονος βλάπτεσθαι.  ἀποκτείνειε μεντἂν ἴσως ἢ ἐξελάσειεν ἢ ἀτιμώσειεν:
ἀλλὰ ταῦτα οὗτος μὲν ἴσως οἴεται καὶ ἄλλος τίς που μεγάλα κακά, ἐγὼ δ᾽ οὐκ
οἴομαι, ἀλλὰ πολὺ μᾶλλον ποιεῖν ἃ οὑτοσὶ νῦν ποιεῖ, ἄνδρα ἀδίκως ἐπιχειρεῖν
ἀποκτεινύναι.
]],
    },
}, {
    id = "30d",
    source = "30d",
    title = "gadfly",
    content = {
        par [[
And now, Athenians, I am not going to argue for my own sake, as you may think,
but for yours, that you may not sin against the God by condemning me, who am his
gift to you.  For if you kill me you will not easily find a successor to me,
who, if I may use such a ludicrous figure of speech, am a sort of gadfly, given
to the state by God; and the state is a great and noble steed who is tardy in
his motions owing to his very size, and requires to be stirred into life.  I am
that gadfly which God has attached to the state, and all day long and in all
places am always fastening upon you, arousing and persuading and reproaching
you.  You will not easily find another like me, and therefore I would advise you
to spare me.  I dare say that you may feel out of temper (like a person who is
suddenly awakened from sleep), and you think that you might easily strike me
dead as Anytus advises, and then you would sleep on for the remainder of your
lives, unless God in his care of you sent you another gadfly.  When I say that I
am given to you by God, the proof of my mission is this: &mdash; if I had been
like other men, I should not have neglected all my own concerns or patiently
seen the neglect of them during all these years, and have been doing yours,
coming to you individually like a father or elder brother, exhorting you to
regard virtue; such conduct, I say, would be unlike human nature.  If I had
gained anything, or if my exhortations had been paid, there would have been some
sense in my doing so; but now, as you will perceive, not even the impudence of
my accusers dares to say that I have ever exacted or sought pay of anyone; of
that they have no witness.  And I have a sufficient witness to the truth of what
I say &mdash; my poverty.
]],
        par [[
νῦν οὖν, ὦ ἄνδρες Ἀθηναῖοι, πολλοῦ δέω ἐγὼ ὑπὲρ ἐμαυτοῦ ἀπολογεῖσθαι, ὥς τις ἂν
οἴοιτο, ἀλλὰ ὑπὲρ ὑμῶν, μή τι ἐξαμάρτητε περὶ τὴν τοῦ θεοῦ δόσιν ὑμῖν ἐμοῦ
καταψηφισάμενοι.  ἐὰν γάρ με ἀποκτείνητε, οὐ ῥᾳδίως ἄλλον τοιοῦτον εὑρήσετε,
ἀτεχνῶς &mdash; εἰ καὶ γελοιότερον εἰπεῖν &mdash; προσκείμενον τῇ πόλει ὑπὸ τοῦ
θεοῦ ὥσπερ ἵππῳ μεγάλῳ μὲν καὶ γενναίῳ, ὑπὸ μεγέθους δὲ νωθεστέρῳ καὶ δεομένῳ
ἐγείρεσθαι ὑπὸ μύωπός τινος, οἷον δή μοι δοκεῖ ὁ θεὸς ἐμὲ τῇ πόλει προστεθηκέναι
τοιοῦτόν τινα, ὃς ὑμᾶς ἐγείρων καὶ πείθων καὶ ὀνειδίζων ἕνα ἕκαστον οὐδὲν
παύομαι τὴν ἡμέραν ὅλην πανταχοῦ προσκαθίζων.  τοιοῦτος οὖν ἄλλος οὐ ῥᾳδίως ὑμῖν
γενήσεται, ὦ ἄνδρες, ἀλλ᾽ ἐὰν ἐμοὶ πείθησθε, φείσεσθέ μου: ὑμεῖς δ᾽ ἴσως τάχ᾽ ἂν
ἀχθόμενοι, ὥσπερ οἱ νυστάζοντες ἐγειρόμενοι, κρούσαντες ἄν με, πειθόμενοι Ἀνύτῳ,
ῥᾳδίως ἂν ἀποκτείναιτε, εἶτα τὸν λοιπὸν βίον καθεύδοντες διατελοῖτε ἄν, εἰ μή
τινα ἄλλον ὁ θεὸς ὑμῖν ἐπιπέμψειεν κηδόμενος ὑμῶν.  ὅτι δ᾽ ἐγὼ τυγχάνω ὢν
τοιοῦτος οἷος ὑπὸ τοῦ θεοῦ τῇ πόλει δεδόσθαι, ἐνθένδε ἂν κατανοήσαιτε: οὐ γὰρ
ἀνθρωπίνῳ ἔοικε τὸ ἐμὲ τῶν μὲν ἐμαυτοῦ πάντων ἠμεληκέναι καὶ ἀνέχεσθαι τῶν
οἰκείων ἀμελουμένων τοσαῦτα ἤδη ἔτη, τὸ δὲ ὑμέτερον πράττειν ἀεί, ἰδίᾳ ἑκάστῳ
προσιόντα ὥσπερ πατέρα ἢ ἀδελφὸν πρεσβύτερον πείθοντα ἐπιμελεῖσθαι ἀρετῆς.  καὶ
εἰ μέν τι ἀπὸ τούτων ἀπέλαυον καὶ μισθὸν λαμβάνων ταῦτα παρεκελευόμην, εἶχον ἄν
τινα λόγον: νῦν δὲ ὁρᾶτε δὴ καὶ αὐτοὶ ὅτι οἱ κατήγοροι τἆλλα πάντα ἀναισχύντως
οὕτω κατηγοροῦντες τοῦτό γε οὐχ οἷοί τε ἐγένοντο ἀπαναισχυντῆσαι παρασχόμενοι
μάρτυρα, ὡς ἐγώ ποτέ τινα ἢ ἐπραξάμην μισθὸν ἢ ᾔτησα.  ἱκανὸν γάρ, οἶμαι, ἐγὼ
παρέχομαι τὸν μάρτυρα ὡς ἀληθῆ λέγω, τὴν πενίαν.
]],
    },
}, {
    id = "34e",
    source = "34e",
    title = "fear of God",
    content = {
        lines {
            par [[
But, having regard to public opinion, I feel that such conduct would be
discreditable to myself, and to you, and to the whole state.  One who has
reached my years, and who has a name for wisdom, ought not to demean himself.
Whether this opinion of me be deserved or not, at any rate the world has decided
that Socrates is in some way superior to other men.  And if those among you who
are said to be superior in wisdom and courage, and any other virtue, demean
themselves in this way, how shameful is their conduct!  I have seen men of
reputation, when they have been condemned, behaving in the strangest manner:
they seemed to fancy that they were going to suffer something dreadful if they
died, and that they could be immortal if you only allowed them to live; and I
think that such are a dishonour to the state, and that any stranger coming in
would have said of them that the most eminent men of Athens, to whom the
Athenians themselves give honour and command, are no better than women.  And I
say that these things ought not to be done by those of us who have a reputation;
and if they are done, you ought not to permit them; you ought rather to show
that you are far more disposed to condemn the man who gets up a doleful scene
and makes the city ridiculous, than him who holds his peace.
]],
            par [[
But, setting aside the question of public opinion, there seems to be something
wrong in asking a favour of a judge, and thus procuring an acquittal, instead of
informing and convincing him.  For his duty is, not to make a present of
justice, but to give judgment; and he has sworn that he will judge according to
the laws, and not according to his own good pleasure; and we ought not to
encourage you, nor should you allow yourselves to be encouraged, in this habit
of perjury &mdash; there can be no piety in that.  Do not then require me to do
what I consider dishonourable and impious and wrong, especially now, when I am
being tried for impiety on the indictment of Meletus.  For if, O men of Athens,
by force of persuasion and entreaty I could overpower your oaths, then I should
be teaching you to believe that there are no gods, and in defending should
simply convict myself of the charge of not believing in them.  But that is not
so &mdash; far otherwise.  For I do believe that there are gods, and in a sense
higher than that in which any of my accusers believe in them.  And to you and to
God I commit my cause, to be determined by you as is best for you and me.
]],
        },
        lines {
            par [[
πρὸς δ᾽ οὖν δόξαν καὶ ἐμοὶ καὶ ὑμῖν καὶ ὅλῃ τῇ πόλει οὔ μοι δοκεῖ καλὸν εἶναι
ἐμὲ τούτων οὐδὲν ποιεῖν καὶ τηλικόνδε ὄντα καὶ τοῦτο τοὔνομα ἔχοντα, εἴτ᾽ οὖν
ἀληθὲς εἴτ᾽ οὖν ψεῦδος, ἀλλ᾽ οὖν δεδογμένον γέ ἐστί τῳ Σωκράτη διαφέρειν τῶν
πολλῶν ἀνθρώπων.  εἰ οὖν ὑμῶν οἱ δοκοῦντες διαφέρειν εἴτε σοφίᾳ εἴτε ἀνδρείᾳ
εἴτε ἄλλῃ ᾑτινιοῦν ἀρετῇ τοιοῦτοι ἔσονται, αἰσχρὸν ἂν εἴη: οἵουσπερ ἐγὼ πολλάκις
ἑώρακά τινας ὅταν κρίνωνται, δοκοῦντας μέν τι εἶναι, θαυμάσια δὲ ἐργαζομένους,
ὡς δεινόν τι οἰομένους πείσεσθαι εἰ ἀποθανοῦνται, ὥσπερ ἀθανάτων ἐσομένων ἂν
ὑμεῖς αὐτοὺς μὴ ἀποκτείνητε: οἳ ἐμοὶ δοκοῦσιν αἰσχύνην τῇ πόλει περιάπτειν, ὥστ᾽
ἄν τινα καὶ τῶν ξένων ὑπολαβεῖν ὅτι οἱ διαφέροντες Ἀθηναίων εἰς ἀρετήν, οὓς
αὐτοὶ ἑαυτῶν ἔν τε ταῖς ἀρχαῖς καὶ ταῖς ἄλλαις τιμαῖς προκρίνουσιν, οὗτοι
γυναικῶν οὐδὲν διαφέρουσιν.  ταῦτα γάρ, ὦ ἄνδρες Ἀθηναῖοι, οὔτε ὑμᾶς χρὴ ποιεῖν
τοὺς δοκοῦντας καὶ ὁπῃοῦν τι εἶναι, οὔτ᾽, ἂν ἡμεῖς ποιῶμεν, ὑμᾶς ἐπιτρέπειν,
ἀλλὰ τοῦτο αὐτὸ ἐνδείκνυσθαι, ὅτι πολὺ μᾶλλον καταψηφιεῖσθε τοῦ τὰ ἐλεινὰ ταῦτα
δράματα εἰσάγοντος καὶ καταγέλαστον τὴν πόλιν ποιοῦντος ἢ τοῦ ἡσυχίαν ἄγοντος.
]],
            par [[
χωρὶς δὲ τῆς δόξης, ὦ ἄνδρες, οὐδὲ δίκαιόν μοι δοκεῖ εἶναι δεῖσθαι τοῦ δικαστοῦ
οὐδὲ δεόμενον ἀποφεύγειν, ἀλλὰ διδάσκειν καὶ πείθειν.  οὐ γὰρ ἐπὶ τούτῳ κάθηται
ὁ δικαστής, ἐπὶ τῷ καταχαρίζεσθαι τὰ δίκαια, ἀλλ᾽ ἐπὶ τῷ κρίνειν ταῦτα: καὶ
ὀμώμοκεν οὐ χαριεῖσθαι οἷς ἂν δοκῇ αὐτῷ, ἀλλὰ δικάσειν κατὰ τοὺς νόμους.  οὔκουν
χρὴ οὔτε ἡμᾶς ἐθίζειν ὑμᾶς ἐπιορκεῖν οὔθ᾽ ὑμᾶς ἐθίζεσθαι: οὐδέτεροι γὰρ ἂν ἡμῶν
εὐσεβοῖεν.  μὴ οὖν ἀξιοῦτέ με, ὦ ἄνδρες Ἀθηναῖοι, τοιαῦτα δεῖν πρὸς ὑμᾶς
πράττειν ἃ μήτε ἡγοῦμαι καλὰ εἶναι μήτε δίκαια μήτε ὅσια, ἄλλως τε μέντοι νὴ Δία
πάντως καὶ ἀσεβείας φεύγοντα ὑπὸ Μελήτου τουτουΐ.  σαφῶς γὰρ ἄν, εἰ πείθοιμι
ὑμᾶς καὶ τῷ δεῖσθαι βιαζοίμην ὀμωμοκότας, θεοὺς ἂν διδάσκοιμι μὴ ἡγεῖσθαι ὑμᾶς
εἶναι, καὶ ἀτεχνῶς ἀπολογούμενος κατηγοροίην ἂν ἐμαυτοῦ ὡς θεοὺς οὐ νομίζω.
ἀλλὰ πολλοῦ δεῖ οὕτως ἔχειν: νομίζω τε γάρ, ὦ ἄνδρες Ἀθηναῖοι, ὡς οὐδεὶς τῶν
ἐμῶν κατηγόρων, καὶ ὑμῖν ἐπιτρέπω καὶ τῷ θεῷ κρῖναι περὶ ἐμοῦ ὅπῃ μέλλει ἐμοί τε
ἄριστα εἶναι καὶ ὑμῖν.
]],
        },
    },
}, {
    id = "37e",
    source = "37e",
    title = "the unexamined life",
    content = {
        par [[
Someone will say: "Yes, Socrates, but cannot you hold your tongue, and then you
may go into a foreign city, and no one will interfere with you?".  Now I have
great difficulty in making you understand my answer to this.  For if I tell you
that to do as you say would be a disobedience to the God, and therefore that I
cannot hold my tongue, you will not believe that I am serious; and if I say
again that daily to discourse about virtue, and of those other things about
which you hear me examining myself and others, is the greatest good of man, and
that the unexamined life is not worth living, you are still less likely to
believe me.  Yet I say what is true, although a thing of which it is hard for me
to persuade you.
]],
        par [[
ἴσως οὖν ἄν τις εἴποι: "σιγῶν δὲ καὶ ἡσυχίαν ἄγων, ὦ Σώκρατες, οὐχ οἷός τ᾽ ἔσῃ
ἡμῖν ἐξελθὼν ζῆν"; τουτὶ δή ἐστι πάντων χαλεπώτατον πεῖσαί τινας ὑμῶν.  ἐάντε
γὰρ λέγω ὅτι τῷ θεῷ ἀπειθεῖν τοῦτ᾽ ἐστὶν καὶ διὰ τοῦτ᾽ ἀδύνατον ἡσυχίαν ἄγειν,
οὐ πείσεσθέ μοι ὡς εἰρωνευομένῳ: ἐάντ᾽ αὖ λέγω ὅτι καὶ τυγχάνει μέγιστον ἀγαθὸν
ὂν ἀνθρώπῳ τοῦτο, ἑκάστης ἡμέρας περὶ ἀρετῆς τοὺς λόγους ποιεῖσθαι καὶ τῶν ἄλλων
περὶ ὧν ὑμεῖς ἐμοῦ ἀκούετε διαλεγομένου καὶ ἐμαυτὸν καὶ ἄλλους ἐξετάζοντος, ὁ δὲ
ἀνεξέταστος βίος οὐ βιωτὸς ἀνθρώπῳ, ταῦτα δ᾽ ἔτι ἧττον πείσεσθέ μοι λέγοντι.  τὰ
δὲ ἔχει μὲν οὕτως, ὡς ἐγώ φημι, ὦ ἄνδρες, πείθειν δὲ οὐ ῥᾴδιον.
]],
    },
}, {
    id = "38e",
    source = "38e",
    content = {
        par [[
I would rather die having spoken after my manner, than speak in your manner and
live.  For neither in war nor yet at law ought I or any man to use every way of
escaping death. Often in battle there can be no doubt that if a man will throw
away his arms, and fall on his knees before his pursuers, he may escape death;
and in other dangers there are other ways of escaping death, if a man is willing
to say and do anything. The difficulty, my friends, is not to avoid death, but
to avoid unrighteousness; for that runs faster than death.  I am old and move
slowly, and the slower runner has overtaken me, and my accusers are keen and
quick, and the faster runner, who is unrighteousness, has overtaken them.  And
now I depart hence condemned by you to suffer the penalty of death &mdash; they
too go their ways condemned by the truth to suffer the penalty of villainy and
wrong; and I must abide by my award &mdash; let them abide by theirs. I suppose
that these things may be regarded as fated &mdash; and I think that they are
well.
]],
        par [[
ἀλλὰ πολὺ μᾶλλον αἱροῦμαι ὧδε ἀπολογησάμενος τεθνάναι ἢ ἐκείνως ζῆν.  οὔτε γὰρ
ἐν δίκῃ οὔτ᾽ ἐν πολέμῳ οὔτ᾽ ἐμὲ οὔτ᾽ ἄλλον οὐδένα δεῖ τοῦτο μηχανᾶσθαι, ὅπως
ἀποφεύξεται πᾶν ποιῶν θάνατον.  καὶ γὰρ ἐν ταῖς μάχαις πολλάκις δῆλον γίγνεται
ὅτι τό γε ἀποθανεῖν ἄν τις ἐκφύγοι καὶ ὅπλα ἀφεὶς καὶ ἐφ᾽ ἱκετείαν τραπόμενος
τῶν διωκόντων: καὶ ἄλλαι μηχαναὶ πολλαί εἰσιν ἐν ἑκάστοις τοῖς κινδύνοις ὥστε
διαφεύγειν θάνατον, ἐάν τις τολμᾷ πᾶν ποιεῖν καὶ λέγειν.  ἀλλὰ μὴ οὐ τοῦτ᾽ ᾖ
χαλεπόν, ὦ ἄνδρες, θάνατον ἐκφυγεῖν, ἀλλὰ πολὺ χαλεπώτερον πονηρίαν: θᾶττον γὰρ
θανάτου θεῖ.  καὶ νῦν ἐγὼ μὲν ἅτε βραδὺς ὢν καὶ πρεσβύτης ὑπὸ τοῦ βραδυτέρου
ἑάλων, οἱ δ᾽ ἐμοὶ κατήγοροι ἅτε δεινοὶ καὶ ὀξεῖς ὄντες ὑπὸ τοῦ θάττονος, τῆς
κακίας.  καὶ νῦν ἐγὼ μὲν ἄπειμι ὑφ᾽ ὑμῶν θανάτου δίκην ὀφλών, οὗτοι δ᾽ ὑπὸ τῆς
ἀληθείας ὠφληκότες μοχθηρίαν καὶ ἀδικίαν.  καὶ ἐγώ τε τῷ τιμήματι ἐμμένω καὶ
οὗτοι.  ταῦτα μέν που ἴσως οὕτως καὶ ἔδει σχεῖν, καὶ οἶμαι αὐτὰ μετρίως ἔχειν.
]],
    },
}, {
    id = "39c",
    source = "39c",
    content = {
        par [[
And now, O men who have condemned me, I would fain prophesy to you; for I am
about to die, and in the hour of death men are gifted with prophetic power.  And
I prophesy to you who are my murderers, that immediately after my departure
punishment far heavier than you have inflicted on me will surely await you.  Me
you have killed because you wanted to escape the accuser, and not to give an
account of your lives.  But that will not be as you suppose: far otherwise.  For
I say that there will be more accusers of you than there are now; accusers whom
hitherto I have restrained: and as they are younger they will be more
inconsiderate with you, and you will be more offended at them.  If you think
that by killing men you can prevent some one from censuring your evil lives, you
are mistaken; that is not a way of escape which is either possible or
honourable; the easiest and the noblest way is not to be disabling others, but
to be improving yourselves.  This is the prophecy which I utter before my
departure to the judges who have condemned me.
]],
        par [[
τὸ δὲ δὴ μετὰ τοῦτο ἐπιθυμῶ ὑμῖν χρησμῳδῆσαι, ὦ καταψηφισάμενοί μου: καὶ γάρ
εἰμι ἤδη ἐνταῦθα ἐν ᾧ μάλιστα ἄνθρωποι χρησμῳδοῦσιν, ὅταν μέλλωσιν ἀποθανεῖσθαι.
φημὶ γάρ, ὦ ἄνδρες οἳ ἐμὲ ἀπεκτόνατε, τιμωρίαν ὑμῖν ἥξειν εὐθὺς μετὰ τὸν ἐμὸν
θάνατον πολὺ χαλεπωτέραν νὴ Δία ἢ οἵαν ἐμὲ ἀπεκτόνατε: νῦν γὰρ τοῦτο εἴργασθε
οἰόμενοι μὲν ἀπαλλάξεσθαι τοῦ διδόναι ἔλεγχον τοῦ βίου, τὸ δὲ ὑμῖν πολὺ ἐναντίον
ἀποβήσεται, ὡς ἐγώ φημι.  πλείους ἔσονται ὑμᾶς οἱ ἐλέγχοντες, οὓς νῦν ἐγὼ
κατεῖχον, ὑμεῖς δὲ οὐκ ᾐσθάνεσθε: καὶ χαλεπώτεροι ἔσονται ὅσῳ νεώτεροί εἰσιν,
καὶ ὑμεῖς μᾶλλον ἀγανακτήσετε.  εἰ γὰρ οἴεσθε ἀποκτείνοντες ἀνθρώπους ἐπισχήσειν
τοῦ ὀνειδίζειν τινὰ ὑμῖν ὅτι οὐκ ὀρθῶς ζῆτε, οὐ καλῶς διανοεῖσθε: οὐ γάρ ἐσθ᾽
αὕτη ἡ ἀπαλλαγὴ οὔτε πάνυ δυνατὴ οὔτε καλή, ἀλλ᾽ ἐκείνη καὶ καλλίστη καὶ ῥᾴστη,
μὴ τοὺς ἄλλους κολούειν ἀλλ᾽ ἑαυτὸν παρασκευάζειν ὅπως ἔσται ὡς βέλτιστος.
ταῦτα μὲν οὖν ὑμῖν τοῖς καταψηφισαμένοις μαντευσάμενος ἀπαλλάττομαι.
]],
    },
}, {
    id = "40a",
    source = "40a",
    title = "be of good cheer about death",
    content = {
        lines {
            par [[
O my judges &mdash; for you I may truly call judges &mdash; I should like to
tell you of a wonderful circumstance.  Hitherto the divine faculty of which the
internal oracle is the source has constantly been in the habit of opposing me
even about trifles, if I was going to make a slip or error in any matter; and
now as you see there has come upon me that which may be thought, and is
generally believed to be, the last and worst evil.  But the oracle made no sign
of opposition, either when I was leaving my house in the morning, or when I was
on my way to the court, or while I was speaking, at anything which I was going
to say; and yet I have often been stopped in the middle of a speech, but now in
nothing I either said or did touching the matter in hand has the oracle opposed
me.  What do I take to be the explanation of this silence?  I will tell you.  It
is an intimation that what has happened to me is a good, and that those of us
who think that death is an evil are in error.  For the customary sign would
surely have opposed me had I been going to evil and not to good.
]],
            par [[
Let us reflect in another way, and we shall see that there is great reason to
hope that death is a good; for one of two things &mdash; either death is a state
of nothingness and utter unconsciousness, or, as men say, there is a change and
migration of the soul from this world to another.  Now if you suppose that there
is no consciousness, but a sleep like the sleep of him who is undisturbed even
by dreams, death will be an unspeakable gain.  For if a person were to select
the night in which his sleep was undisturbed even by dreams, and were to compare
with this the other days and nights of his life, and then were to tell us how
many days and nights he had passed in the course of his life better and more
pleasantly than this one, I think that any man, I will not say a private man,
but even the great king will not find many such days or nights, when compared
with the others.  Now if death be of such a nature, I say that to die is gain;
for eternity is then only a single night.  But if death is the journey to
another place, and there, as men say, all the dead abide, what good, O my
friends and judges, can be greater than this?  If indeed when the pilgrim
arrives in the world below, he is delivered from the professors of justice in
this world, and finds the true judges who are said to give judgment there, Minos
and Rhadamanthus and Aeacus and Triptolemus, and other sons of God who were
righteous in their own life, that pilgrimage will be worth making.  What would
not a man give if he might converse with Orpheus and Musaeus and Hesiod and
Homer?  Nay, if this be true, let me die again and again.  I myself, too, shall
have a wonderful interest in there meeting and conversing with Palamedes, and
Ajax the son of Telamon, and any other ancient hero who has suffered death
through an unjust judgment; and there will be no small pleasure, as I think, in
comparing my own sufferings with theirs.  Above all, I shall then be able to
continue my search into true and false knowledge; as in this world, so also in
the next; and I shall find out who is wise, and who pretends to be wise, and is
not.  What would not a man give, O judges, to be able to examine the leader of
the great Trojan expedition; or Odysseus or Sisyphus, or numberless others, men
and women too!  What infinite delight would there be in conversing with them and
asking them questions!  In another world they do not put a man to death for
asking questions: assuredly not.  For besides being happier than we are, they
will be immortal, if what is said is true.
]],
            par [[
Wherefore, O judges, be of good cheer about death, and know of a certainty, that
no evil can happen to a good man, either in life or after death.  He and his are
not neglected by the gods; nor has my own approaching end happened by mere
chance.  But I see clearly that the time had arrived when it was better for me
to die and be released from trouble; wherefore the oracle gave no sign.  For
which reason, also, I am not angry with my condemners, or with my accusers; they
have done me no harm, although they did not mean to do me any good; and for this
I may gently blame them.
]],
        },
        lines {
            par [[
ἐμοὶ γάρ, ὦ ἄνδρες δικασταί—ὑμᾶς γὰρ δικαστὰς καλῶν ὀρθῶς ἂν καλοίην—θαυμάσιόν
τι γέγονεν.  ἡ γὰρ εἰωθυῖά μοι μαντικὴ ἡ τοῦ δαιμονίου ἐν μὲν τῷ πρόσθεν χρόνῳ
παντὶ πάνυ πυκνὴ ἀεὶ ἦν καὶ πάνυ ἐπὶ σμικροῖς ἐναντιουμένη, εἴ τι μέλλοιμι μὴ
ὀρθῶς πράξειν.  νυνὶ δὲ συμβέβηκέ μοι ἅπερ ὁρᾶτε καὶ αὐτοί, ταυτὶ ἅ γε δὴ
οἰηθείη ἄν τις καὶ νομίζεται ἔσχατα κακῶν εἶναι: ἐμοὶ δὲ οὔτε ἐξιόντι ἕωθεν
οἴκοθεν ἠναντιώθη τὸ τοῦ θεοῦ σημεῖον, οὔτε ἡνίκα ἀνέβαινον ἐνταυθοῖ ἐπὶ τὸ
δικαστήριον, οὔτε ἐν τῷ λόγῳ οὐδαμοῦ μέλλοντί τι ἐρεῖν. καίτοι ἐν ἄλλοις λόγοις
πολλαχοῦ δή με ἐπέσχε λέγοντα μεταξύ: νῦν δὲ οὐδαμοῦ περὶ ταύτην τὴν πρᾶξιν οὔτ᾽
ἐν ἔργῳ οὐδενὶ οὔτ᾽ ἐν λόγῳ ἠναντίωταί μοι.  τί οὖν αἴτιον εἶναι ὑπολαμβάνω; ἐγὼ
ὑμῖν ἐρῶ: κινδυνεύει γάρ μοι τὸ συμβεβηκὸς τοῦτο ἀγαθὸν γεγονέναι, καὶ οὐκ ἔσθ᾽
ὅπως ἡμεῖς ὀρθῶς ὑπολαμβάνομεν, ὅσοι οἰόμεθα κακὸν εἶναι τὸ τεθνάναι.  μέγα μοι
τεκμήριον τούτου γέγονεν: οὐ γὰρ ἔσθ᾽ ὅπως οὐκ ἠναντιώθη ἄν μοι τὸ εἰωθὸς
σημεῖον, εἰ μή τι ἔμελλον ἐγὼ ἀγαθὸν πράξειν.
]],
            par [[
ἐννοήσωμεν δὲ καὶ τῇδε ὡς πολλὴ ἐλπίς ἐστιν ἀγαθὸν αὐτὸ εἶναι.  δυοῖν γὰρ
θάτερόν ἐστιν τὸ τεθνάναι: ἢ γὰρ οἷον μηδὲν εἶναι μηδὲ αἴσθησιν μηδεμίαν μηδενὸς
ἔχειν τὸν τεθνεῶτα, ἢ κατὰ τὰ λεγόμενα μεταβολή τις τυγχάνει οὖσα καὶ μετοίκησις
τῇ ψυχῇ τοῦ τόπου τοῦ ἐνθένδε εἰς ἄλλον τόπον.  καὶ εἴτε δὴ μηδεμία αἴσθησίς
ἐστιν ἀλλ᾽ οἷον ὕπνος ἐπειδάν τις καθεύδων μηδ᾽ ὄναρ μηδὲν ὁρᾷ, θαυμάσιον κέρδος
ἂν εἴη ὁ θάνατος—ἐγὼ γὰρ ἂν οἶμαι, εἴ τινα ἐκλεξάμενον δέοι ταύτην τὴν νύκτα ἐν
ᾗ οὕτω κατέδαρθεν ὥστε μηδὲ ὄναρ ἰδεῖν, καὶ τὰς ἄλλας νύκτας τε καὶ ἡμέρας τὰς
τοῦ βίου τοῦ ἑαυτοῦ ἀντιπαραθέντα ταύτῃ τῇ νυκτὶ δέοι σκεψάμενον εἰπεῖν πόσας
ἄμεινον καὶ ἥδιον ἡμέρας καὶ νύκτας ταύτης τῆς νυκτὸς βεβίωκεν ἐν τῷ ἑαυτοῦ βίῳ,
οἶμαι ἂν μὴ ὅτι ἰδιώτην τινά, ἀλλὰ τὸν μέγαν βασιλέα εὐαριθμήτους ἂν εὑρεῖν
αὐτὸν ταύτας πρὸς τὰς ἄλλας ἡμέρας καὶ νύκτας—εἰ οὖν τοιοῦτον ὁ θάνατός ἐστιν,
κέρδος ἔγωγε λέγω: καὶ γὰρ οὐδὲν πλείων ὁ πᾶς χρόνος φαίνεται οὕτω δὴ εἶναι ἢ
μία νύξ.  εἰ δ᾽ αὖ οἷον ἀποδημῆσαί ἐστιν ὁ θάνατος ἐνθένδε εἰς ἄλλον τόπον, καὶ
ἀληθῆ ἐστιν τὰ λεγόμενα, ὡς ἄρα ἐκεῖ εἰσι πάντες οἱ τεθνεῶτες, τί μεῖζον ἀγαθὸν
τούτου εἴη ἄν, ὦ ἄνδρες δικασταί; εἰ γάρ τις ἀφικόμενος εἰς Ἅιδου, ἀπαλλαγεὶς
τουτωνὶ τῶν φασκόντων δικαστῶν εἶναι, εὑρήσει τοὺς ὡς ἀληθῶς δικαστάς, οἵπερ καὶ
λέγονται ἐκεῖ δικάζειν, Μίνως τε καὶ Ῥαδάμανθυς καὶ Αἰακὸς καὶ Τριπτόλεμος καὶ
ἄλλοι ὅσοι τῶν ἡμιθέων δίκαιοι ἐγένοντο ἐν τῷ ἑαυτῶν βίῳ, ἆρα φαύλη ἂν εἴη ἡ
ἀποδημία; ἢ αὖ Ὀρφεῖ συγγενέσθαι καὶ Μουσαίῳ καὶ Ἡσιόδῳ καὶ Ὁμήρῳ ἐπὶ πόσῳ ἄν
τις δέξαιτ᾽ ἂν ὑμῶν; ἐγὼ μὲν γὰρ πολλάκις ἐθέλω τεθνάναι εἰ ταῦτ᾽ ἔστιν ἀληθῆ.
ἐπεὶ ἔμοιγε καὶ αὐτῷ θαυμαστὴ ἂν εἴη ἡ διατριβὴ αὐτόθι, ὁπότε ἐντύχοιμι
Παλαμήδει καὶ Αἴαντι τῷ Τελαμῶνος καὶ εἴ τις ἄλλος τῶν παλαιῶν διὰ κρίσιν ἄδικον
τέθνηκεν, ἀντιπαραβάλλοντι τὰ ἐμαυτοῦ πάθη πρὸς τὰ ἐκείνων—ὡς ἐγὼ οἶμαι, οὐκ ἂν
ἀηδὲς εἴη—καὶ δὴ τὸ μέγιστον, τοὺς ἐκεῖ ἐξετάζοντα καὶ ἐρευνῶντα ὥσπερ τοὺς
ἐνταῦθα διάγειν, τίς αὐτῶν σοφός ἐστιν καὶ τίς οἴεται μέν, ἔστιν δ᾽ οὔ.  ἐπὶ
πόσῳ δ᾽ ἄν τις, ὦ ἄνδρες δικασταί, δέξαιτο ἐξετάσαι τὸν ἐπὶ Τροίαν ἀγαγόντα τὴν
πολλὴν στρατιὰν ἢ Ὀδυσσέα ἢ Σίσυφον ἢ ἄλλους μυρίους ἄν τις εἴποι καὶ ἄνδρας καὶ
γυναῖκας, οἷς ἐκεῖ διαλέγεσθαι καὶ συνεῖναι καὶ ἐξετάζειν ἀμήχανον ἂν εἴη
εὐδαιμονίας; πάντως οὐ δήπου τούτου γε ἕνεκα οἱ ἐκεῖ ἀποκτείνουσι: τά τε γὰρ
ἄλλα εὐδαιμονέστεροί εἰσιν οἱ ἐκεῖ τῶν ἐνθάδε, καὶ ἤδη τὸν λοιπὸν χρόνον
ἀθάνατοί εἰσιν, εἴπερ γε τὰ λεγόμενα ἀληθῆ.
]],
            par [[
ἀλλὰ καὶ ὑμᾶς χρή, ὦ ἄνδρες δικασταί, εὐέλπιδας εἶναι πρὸς τὸν θάνατον, καὶ ἕν
τι τοῦτο διανοεῖσθαι ἀληθές, ὅτι οὐκ ἔστιν ἀνδρὶ ἀγαθῷ κακὸν οὐδὲν οὔτε ζῶντι
οὔτε τελευτήσαντι, οὐδὲ ἀμελεῖται ὑπὸ θεῶν τὰ τούτου πράγματα: οὐδὲ τὰ ἐμὰ νῦν
ἀπὸ τοῦ αὐτομάτου γέγονεν, ἀλλά μοι δῆλόν ἐστι τοῦτο, ὅτι ἤδη τεθνάναι καὶ
ἀπηλλάχθαι πραγμάτων βέλτιον ἦν μοι.  διὰ τοῦτο καὶ ἐμὲ οὐδαμοῦ ἀπέτρεψεν τὸ
σημεῖον, καὶ ἔγωγε τοῖς καταψηφισαμένοις μου καὶ τοῖς κατηγόροις οὐ πάνυ
χαλεπαίνω.  καίτοι οὐ ταύτῃ τῇ διανοίᾳ κατεψηφίζοντό μου καὶ κατηγόρουν, ἀλλ᾽
οἰόμενοι βλάπτειν: τοῦτο αὐτοῖς ἄξιον μέμφεσθαι.
]],
        },
    },
}, {
    id = "41e",
    source = "41e",
    title = "last favor",
    content = {
        par [[
Still I have a favour to ask of them.  When my sons are grown up, I would ask
you, O my friends, to punish them; and I would have you trouble them, as I have
troubled you, if they seem to care about riches, or anything, more than about
virtue; or if they pretend to be something when they are really nothing &mdash;
then reprove them, as I have reproved you, for not caring about that for which
they ought to care, and thinking that they are something when they are really
nothing.  And if you do this, both I and my sons will have received justice at
your hands.
]],
        par [[
τοσόνδε μέντοι αὐτῶν δέομαι: τοὺς ὑεῖς μου, ἐπειδὰν ἡβήσωσι, τιμωρήσασθε, ὦ
ἄνδρες, ταὐτὰ ταῦτα λυποῦντες ἅπερ ἐγὼ ὑμᾶς ἐλύπουν, ἐὰν ὑμῖν δοκῶσιν ἢ χρημάτων
ἢ ἄλλου του πρότερον ἐπιμελεῖσθαι ἢ ἀρετῆς, καὶ ἐὰν δοκῶσί τι εἶναι μηδὲν ὄντες,
ὀνειδίζετε αὐτοῖς ὥσπερ ἐγὼ ὑμῖν, ὅτι οὐκ ἐπιμελ ταῦτα ποιῆτε, δίκαια πεπονθὼς
ἐγὼ ἔσομαι ὑφ᾽ ὑμῶν αὐτός τε καὶ οἱ ὑεῖς.
]],
    },
}, {
    id = "42e",
    source = "42e",
    title = "God only knows",
    content = {
        par [[
The hour of departure has arrived, and we go our ways &mdash; I to die, and you
to live.  Which is better God only knows.
]],
        par [[
ἀλλὰ γὰρ ἤδη ὥρα ἀπιέναι, ἐμοὶ μὲν ἀποθανουμένῳ, ὑμῖν δὲ βιωσομένοις: ὁπότεροι
δὲ ἡμῶν ἔρχονται ἐπὶ ἄμεινον πρᾶγμα, ἄδηλον παντὶ πλὴν ἢ τῷ θεῷ.
]],
    },
}}

return {
    id = "apologia",
    short_title = {
        en = "Apology of Socrates",
        pt = "Apologia de Sócrates",
    },
    title = {
        en = '<span lang="grc">Ἀπολογία Σωκράτους</span> (Apology of Socrates)',
        pt = '<span lang="grc">Ἀπολογία Σωκράτους</span> (Apologia de Sócrates)',
    },
    link = "https://standardebooks.org/ebooks/plato/dialogues/benjamin-jowett",
    cover = "apologia.jpg",
    author = {
        en = "Plato",
        pt = "Platão",
    },
    date = { "1689185059", "2023-07-12T18:04:19" },
    languages = { "en", "pt" },
    description = description,
    intro = intro,
    content = {
        en = content,
        pt = content_pt,
    },
    citations = citations,
}
