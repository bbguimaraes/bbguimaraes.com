local description <const> = [[
A book which should be mandatory reading for every man entering adult life.
With deep roots in classical Greek and early Christian philosophy, these notes
by Marcus Aurelius (the last of the "Good Emperors", maintainers of the Pax
Romana in the first two centuries A.D.), written in the last third of his life,
describe his conception of masculine virtue.
]]

local intro <const> = lines {
    par(description),
    par [[
Never intended to be published (the original is unnamed, but the Greek title
means literally "those to one's self"), the text has a strongly personal tone,
and an abundance of incisive aphorisms:
]],
}

local content <const> = lines {
    blockquote(lines {
        par [[
Nothing is either bad or good which can happen equally to the bad man and the
good.
]],
        hr(),
        par [[
I seek the truth by which no man has ever injured, but he is injured who abides
in his error and ignorance.
]],
        hr(),
        par [[
Cast away opinion: thou art saved.  Who then hinders thee from casting it away?
]],
    }),
    par [[
A perfect encapsulation of Stoic thought, with the constant emphasis that
resilience is to be found in living according to the precepts of nature and in
adhering to and maintaining the purity of the "divinity planted in every man"
(<i>eudaimonia</i>).
]],
    link {
        href = "https://standardebooks.org/ebooks/marcus-aurelius/meditations/george-long",
        content = "English",
    },
    link {
        href = "https://web.archive.org/web/20070426050533/http://zipper.paco.net/~yury/LL/aurel.html.utf8",
        content = "Greek (archived)",
    },
}

local content_pt <const> = lines {
        par [[
Um livro que deveria ser leitura obrigatória para todo homem adentrando à vida
adulta.  Com raízes profundas na filosofia grega clássica e do início do
cristianismo, essas notas de Marcus Aurelius (o último dos "Bons Imperadores",
mantenedores da Pax Romana nos dois primeiros séculos A.D.), escritas no último
terço de sua vida, descrevem a sua concepção da virtude masculina.
]],
        par [[
Sem ter tido a intenção de ser publicado (o original não foi nomeado, mas o
título em grego significa literalmente "as [coisas] para si mesmo"), o texto tem
um forte tom pessoal, e uma abundância de aforismos incisivos:
]],
    blockquote(lines {
        par [[
Nada é ruim ou bom que pode acontecer igualmente ao homem ruim e ao bom.
]],
        hr(),
        par [[
Eu busco a verdade pela qual nenhum homem já foi ferido, mas é ferido quem
persiste em seu erro e ignorância.
]],
        hr(),
        par [[
Rejeite a opinião: és salvo.  Quem então tem impede de rejeitá-la?
]],
    }),
    par [[
Um encapsulamento perfeito do pensamento estóico, com a ênfase constante que a
resiliência será encontrada no viver de acordo com os preceitos da natureza e na
aderência à, e na preservação da, pureza da "divindade plantada em cada homem"
(<i>eudaimonia</i>).
]],
    link {
        href = "https://standardebooks.org/ebooks/marcus-aurelius/meditations/george-long",
        content = "Inglês",
    },
    link {
        href = "https://web.archive.org/web/20070426050533/http://zipper.paco.net/~yury/LL/aurel.html.utf8",
        content = "Grego (arquivado)",
    },
}

local citations <const> = {{
    id = "II-17",
    source = "II, 17",
    title = "philosophy",
    content = {
        par [[
Of human life the time is a point, and the substance is in a flux, and the
perception dull, and the composition of the whole body subject to putrefaction,
and the soul a whirl, and fortune hard to divine, and fame a thing devoid of
judgement.  And, to say all in a word, everything which belongs to the body is a
stream, and what belongs to the soul is a dream and vapour, and life is a
warfare and a stranger's sojourn, and after-fame is oblivion.  What then is that
which is able to conduct a man?  One thing and only one, philosophy.  But this
consists in keeping the daemon within a man free from violence and unharmed,
superior to pains and pleasures, doing nothing without purpose, nor yet falsely
and with hypocrisy, not feeling the need of another man's doing or not doing
anything; and besides, accepting all that happens, and all that is allotted, as
coming from thence, wherever it is, from whence he himself came; and, finally,
waiting for death with a cheerful mind, as being nothing else than a dissolution
of the elements of which every living being is compounded.  But if there is no
harm to the elements themselves in each continually changing into another, why
should a man have any apprehension about the change and dissolution of all the
elements?  For it is according to nature, and nothing is evil which is according
to nature.
]],
        par [[
Τοῦ ἀνθρωπίνου βίου ὁ μὲν χρόνος στιγμή, ἡ δὲ οὐσία ῥέουσα, ἡ δὲ αἴσθησις
ἀμυδρά, ἡ δὲ ὅλου τοῦ σώματος σύγκρισις εὔσηπτος, ἡ δὲ ψυχὴ ῥόμβος, ἡ δὲ τύχη
δυστέκμαρτον, ἡ δὲ φήμη ἄκριτον· συνελόντι δὲ εἰπεῖν, πάντα τὰ μὲν τοῦ σώματος
ποταμός, τὰ δὲ τῆς ψυχῆς ὄνειρος καὶ τῦφος, ὁ δὲ βίος πόλεμος καὶ ξένου
ἐπιδημία, ἡ δὲ ὑστεροφημία λήθη.  τί οὖν τὸ παραπέμψαι δυνάμενον; ἓν καὶ μόνον
φιλοσοφία· τοῦτο δὲ ἐν τῷ τηρεῖν τὸν ἔνδον δαίμονα ἀνύβριστον καὶ ἀσινῆ, ἡδονῶν
καὶ πόνων κρείττονα, μηδὲν εἰκῇ ποιοῦντα μηδὲ διεψευσμένως καὶ μεθ ὑποκρίσεως,
ἀνενδεῆ τοῦ ἄλλον ποιῆσαί τι ἢ μὴ ποιῆσαι· ἔτι δὲ τὰ συμβαίνοντα καὶ ἀπονεμόμενα
δεχόμενον ὡς ἐκεῖθέν ποθεν ἐρχόμενα, ὅθεν αὐτὸς ἦλθεν· ἐπὶ πᾶσι δὲ τὸν θάνατον
ἵλεῳ τῇ γνώμῃ περιμένοντα ὡς οὐδὲν ἄλλο ἢ λύσιν τῶν στοιχείων, ἐξ ὧν ἕκαστον
ζῷον συγκρίνεται.  εἰ δὲ αὐτοῖς τοῖς στοιχείοις μηδὲν δεινὸν ἐν τῷ ἕκαστον
διηνεκῶς εἰς ἕτερον μεταβάλλειν, διὰ τί ὑπίδηταί τις τὴν πάντων μεταβολὴν καὶ
διάλυσιν; κατὰ φύσιν γάρ· οὐδὲν δὲ κακὸν κατὰ φύσιν.
]],
    },
}, {
    id = "III-6",
    source = "III, 6",
    title = "the deity planted in thee",
    content = {
        par [[
If thou findest in human life anything better than justice, truth, temperance,
fortitude, and, in a word, anything better than thy own mind's self-satisfaction
in the things which it enables thee to do according to right reason, and in the
condition that is assigned to thee without thy own choice; if, I say, thou seest
anything better than this, turn to it with all thy soul, and enjoy that which
thou hast found to be the best.  But if nothing appears to be better than the
deity which is planted in thee, which has subjected to itself all thy appetites,
and carefully examines all the impressions, and, as Socrates said, has detached
itself from the persuasions of sense, and has submitted itself to the gods, and
cares for mankind; if thou findest everything else smaller and of less value
than this, give place to nothing else, for if thou dost once diverge and incline
to it, thou wilt no longer without distraction be able to give the preference to
that good thing which is thy proper possession and thy own; for it is not right
that anything of any other kind, such as praise from the many, or power, or
enjoyment of pleasure, should come into competition with that which is
rationally and politically or practically good.  All these things, even though
they may seem to adapt themselves to the better things in a small degree, obtain
the superiority all at once, and carry us away.  But do thou, I say, simply and
freely choose the better, and hold to it.  &mdash; But that which is useful is
the better.  &mdash; Well then, if it is useful to thee as a rational being,
keep to it; but if it is only useful to thee as an animal, say so, and maintain
thy judgement without arrogance: only take care that thou makest the inquiry by
a sure method.
]],
        par [[
Εἰ μὲν κρεῖττον εὑρίσκεις ἐν τῷ ἀνθρωπίνῳ βίῳ δικαιοσύνης, ἀληθείας, σωφροσύνης,
ἀνδρείας καὶ καθάπαξ τοῦ ἀρκεῖσθαι ἑαυτῇ τὴν διάνοιάν σου, ἐν οἷς κατὰ τὸν λόγον
τὸν ὀρθὸν πράσσοντά σε παρέχεται, καὶ [ἐν] τῇ εἱμαρμένῃ ἐν τοῖς ἀπροαιρέτως
ἀπονεμομένοις· εἰ τούτου, φημί, κρεῖττόν τι ὁρᾷς, ἐπ ἐκεῖνο ἐξ ὅλης τῆς ψυχῆς
τραπόμενος τοῦ ἀρίστου εὑρισκομένου ἀπόλαυε.  εἰ δὲ μηδὲν κρεῖττον φαίνεται
αὐτοῦ τοῦ ἐνιδρυμένου ἐν σοὶ δαίμονος, τάς τε ἰδίας ὁρμὰς ὑποτεταχότος ἑαυτῷ καὶ
τὰς φαντασίας ἐξετάζοντος καὶ τῶν αἰσθητικῶν πείσεων, ὡς ὁ Σωκράτης ἔλεγεν,
ἑαυτὸν ἀφειλκυκότος καὶ τοῖς θεοῖς ὑποτεταχότος ἑαυτὸν καὶ τῶν ἀνθρώπων
προκηδομένου· εἰ τούτου πάντα τὰ ἄλλα μικρότερα καὶ εὐτελέστερα εὑρίσκεις,
μηδενὶ χώραν δίδου ἑτέρῳ, πρὸς ὃ ῥέψας ἅπαξ καὶ ἀποκλίνας οὐκέτι ἀπερισπάστως τὸ
ἀγαθὸν ἐκεῖνο, τὸ ἴδιον καὶ τὸ σόν, προτιμᾶν δυνήσῃ.  ἀντικαθῆσθαι γὰρ τῷ λογικῷ
καὶ πολιτικῷ ἀγαθῷ οὐ θέμις οὐδ ὁτιοῦν ἑτερογενές, οἷον τὸν παρὰ τῶν πολλῶν
ἔπαινον ἢ ἀρχὰς ἢ πλοῦτον ἢ ἀπολαύσεις ἡδονῶν· πάντα ταῦτα, κἂν πρὸς ὀλίγον
ἐναρμόζειν δόξῃ, κατεκράτησεν ἄφνω καὶ παρήνεγκεν.  σὺ δέ, φημί, ἁπλῶς καὶ
ἐλευθέρως ἑλοῦ τὸ κρεῖττον καὶ τούτου ἀντέχου· “κρεῖττον δὲ τὸ συμφέρον.” εἰ μὲν
τὸ ὡς λογικῷ, τοῦτο τήρει· εἰ δὲ τὸ ὡς ζῴῳ, ἀπόφηναι, καὶ ἀτύφως φύλασσε τὴν
κρίσιν· μόνον ὅπως ἀσφαλῶς τὴν ἐξέτασιν ποιήσῃ.
]],
    },
}, {
    id = "III-12",
    source = "III, 12",
    title = "keeping thy divine part pure",
    content = {
        par [[
If thou workest at that which is before thee, following right reason seriously,
vigorously, calmly, without allowing anything else to distract thee, but keeping
thy divine part pure, as if thou shouldst be bound to give it back immediately;
if thou holdest to this, expecting nothing, fearing nothing, but satisfied with
thy present activity according to nature, and with heroic truth in every word
and sound which thou utterest, thou wilt live happy.  And there is no man who is
able to prevent this.
]],
        par [[
Ἐὰν τὸ παρὸν ἐνεργῇς ἑπόμενος τῷ ὀρθῷ λόγῳ, ἐσπουδασμένως, ἐρρωμένως, εὐμενῶς,
καὶ μηδὲν ‹παρίῃς› παρεμπόρευμα, ἀλλὰ τὸν ἑαυτοῦ δαίμονα καθαρὸν ἑστῶτα τηρῇς,
ὡς εἰ καὶ ἤδη ἀποδοῦναι δέοι· ἐὰν τοῦτο συνάπτῃς μηδὲν περιμένων μηδὲ φεύγων,
ἀλλὰ τῇ παρούσῃ κατὰ φύσιν ἐνεργείᾳ καὶ τῇ ὧν λέγεις καὶ φθέγγῃ ἡρωικῇ ἀληθείᾳ
ἀρκούμενος, εὐζωήσεις. ἔστι δὲ οὐδεὶς ὁ τοῦτο κωλῦσαι δυνάμενος.
]],
    },
}, {
    id = "IV-3",
    source = "IV, 3",
    title = "let thy principles be brief",
    content = {
        lines {
            par [[
Men seek retreats for themselves, houses in the country, seashores, and
mountains; and thou too art wont to desire such things very much.  But this is
altogether a mark of the most common sort of men, for it is in thy power
whenever thou shalt choose to retire into thyself.  For nowhere either with more
quiet or more freedom from trouble does a man retire than into his own soul,
particularly when he has within him such thoughts that by looking into them he
is immediately in perfect tranquility; and I affirm that tranquility is nothing
else than the good ordering of the mind.  Constantly then give to thyself this
retreat, and renew thyself; and let thy principles be brief and fundamental,
which, as soon as thou shalt recur to them, will be sufficient to cleanse the
soul completely, and to send thee back free from all discontent with the things
to which thou returnest.  For with what art thou discontented?  With the badness
of men?  Recall to thy mind this conclusion, that rational animals exist for one
another, and that to endure is a part of justice, and that men do wrong
involuntarily; and consider how many already, after mutual enmity, suspicion,
hatred, and fighting, have been stretched dead, reduced to ashes; and be quiet
at last.  &mdash; But perhaps thou art dissatisfied with that which is assigned
to thee out of the universe.  &mdash; Recall to thy recollection this
alternative; either there is providence or atoms, fortuitous concurrence of
things; or remember the arguments by which it has been proved that the world is
a kind of political community, and be quiet at last.  &mdash; But perhaps
corporeal things will still fasten upon thee.  &mdash; Consider then further
that the mind mingles not with the breath, whether moving gently or violently,
when it has once drawn itself apart and discovered its own power, and think also
of all that thou hast heard and assented to about pain and pleasure, and be
quiet at last.  &mdash; But perhaps the desire of the thing called fame will
torment thee.  &mdash; See how soon everything is forgotten, and look at the
chaos of infinite time on each side of the present, and the emptiness of
applause, and the changeableness and want of judgement in those who pretend to
give praise, and the narrowness of the space within which it is circumscribed,
and be quiet at last.  For the whole earth is a point, and how small a nook in
it is this thy dwelling, and how few are there in it, and what kind of people
are they who will praise thee.
]],
            par [[
This then remains: Remember to retire into this little territory of thy own, and
above all do not distract or strain thyself, but be free, and look at things as
a man, as a human being, as a citizen, as a mortal.  But among the things
readiest to thy hand to which thou shalt turn, let there be these, which are
two.  One is that things do not touch the soul, for they are external and remain
immovable; but our perturbations come only from the opinion which is within.
The other is that all these things, which thou seest, change immediately and
will no longer be; and constantly bear in mind how many of these changes thou
hast already witnessed. The universe is transformation: life is opinion.
]],
            par [[
If our intellectual part is common, the reason also, in respect of which we are
rational beings, is common: if this is so, common also is the reason which
commands us what to do, and what not to do; if this is so, there is a common law
also; if this is so, we are fellow-citizens; if this is so, we are members of
some political community; if this is so, the world is in a manner a state.  For
of what other common political community will anyone say that the whole human
race are members?  And from thence, from this common political community comes
also our very intellectual faculty and reasoning faculty and our capacity for
law; or whence do they come?  For as my earthly part is a portion given to me
from certain earth, and that which is watery from another element, and that
which is hot and fiery from some peculiar source (for nothing comes out of that
which is nothing, as nothing also returns to nonexistence), so also the
intellectual part comes from some source.
]],
        },
        lines {
            par [[
Ἀναχωρήσεις αὑτοῖς ζητοῦσιν ἀγροικίας καὶ αἰγιαλοὺς καὶ ὄρη, εἴωθας δὲ καὶ σὺ τὰ
τοιαῦτα μάλιστα ποθεῖν.  ὅλον δὲ τοῦτο ἰδιωτικώτατόν ἐστιν, ἐξόν, ἧς ἂν ὥρας
ἐθελήσῃς, εἰς ἑαυτὸν ἀναχωρεῖν.  οὐδαμοῦ γὰρ οὔτε ἡσυχιώτερον οὔτε
ἀπραγμονέστερον ἄνθρωπος ἀναχωρεῖ ἢ εἰς τὴν ἑαυτοῦ ψυχήν, μάλισθ ὅστις ἔχει
ἔνδον τοιαῦτα, εἰς ἃ ἐγκύψας ἐν πάσῃ εὐμαρείᾳ εὐθὺς γίνεται· τὴν δὲ εὐμάρειαν
οὐδὲν ἄλλο λέγω ἢ εὐκοσμίαν.  συνεχῶς οὖν δίδου σεαυτῷ ταύτην τὴν ἀναχώρησιν καὶ
ἀνανέου σεαυτόν· βραχέα δὲ ἔστω καὶ στοιχειώδη ἃ εὐθὺς ἀπαντήσαντα ἀρκέσει εἰς
τὸ πᾶσαν λύπην ἀποκλύσαι καὶ ἀποπέμψαι σε μὴ δυσχεραίνοντα ἐκείνοις ἐφ ἃ
ἐπανέρχῃ.  τίνι γὰρ δυσχερανεῖς; τῇ τῶν ἀνθρώπων κακίᾳ; ἀναλογισάμενος τὸ κρῖμα,
ὅτι τὰ λογικὰ ζῷα ἀλλήλων ἕνεκεν γέγονε καὶ ὅτι τὸ ἀνέχεσθαι μέρος τῆς
δικαιοσύνης καὶ ὅτι ἄκοντες ἁμαρτάνουσι καὶ πόσοι ἤδη διεχθρεύσαντες,
ὑποπτεύσαντες, μισήσαντες, διαδορατισθέντες ἐκτέτανται, τετέφρωνται, παύου ποτέ.
ἀλλὰ καὶ τοῖς ἐκ τῶν ὅλων ἀπονεμομένοις δυσχερανεῖς; ἀνανεωσάμενος τὸ
διεζευγμένον τό· ἤτοι πρόνοια ἢ ἄτομοι, καὶ ἐξ ὅσων ἀπεδείχθη ὅτι ὁ κόσμος
ὡσανεὶ πόλις.  ἀλλὰ τὰ σωματικά σου ἅψεται ἔτι; ἐννοήσας ὅτι οὐκ ἐπιμίγνυται
λείως ἢ τραχέως κινουμένῳ πνεύματι ἡ διάνοια, ἐπειδὰν ἅπαξ ἑαυτὴν ἀπολάβῃ καὶ
γνωρίσῃ τὴν ἰδίαν ἐξουσίαν, καὶ λοιπὸν ὅσα περὶ πόνου καὶ ἡδονῆς ἀκήκοας καὶ
συγκατέθου.  ἀλλὰ τὸ δοξάριόν σε περισπάσει; ἀπιδὼν εἰς τὸ τάχος τῆς πάντων
λήθης καὶ τὸ χάος τοῦ ἐφ ἑκάτερα ἀπείρου αἰῶνος καὶ τὸ κενὸν τῆς ἀπηχήσεως καὶ
τὸ εὐμετάβολον καὶ ἄκριτον τῶν εὐφημεῖν δοκούντων καὶ τὸ στενὸν τοῦ τόπου, ἐν ᾧ
περιγράφεται· ὅλη τε γὰρ ἡ γῆ στιγμὴ καὶ ταύτης πόστον γωνίδιον ἡ κατοίκησις
αὕτη; καὶ ἐνταῦθα πόσοι καὶ οἷοί τινες οἱ ἐπαινεσόμενοι;
]],
            par [[
λοιπὸν οὖν μέμνησο τῆς ὑποχωρήσεως τῆς εἰς τοῦτο τὸ ἀγρίδιον ἑαυτοῦ καὶ πρὸ
παντὸς μὴ σπῶ μηδὲ κατεντείνου, ἀλλὰ ἐλεύθερος ἔσο καὶ ὅρα τὰ πράγματα ὡς ἀνήρ,
ὡς ἄνθρωπος, ὡς πολίτης, ὡς θνητὸν ζῷον.  ἐν δὲ τοῖς προχειροτάτοις, εἰς ἃ
ἐγκύψεις, ταῦτα ἔστω τὰ δύο· ἕν μέν, ὅτι τὰ πράγματα οὐχ ἅπτεται τῆς ψυχῆς, ἀλλ
ἔξω ἕστηκεν ἀτρεμοῦντα, αἱ δὲ ὀχλήσεις ἐκ μόνης τῆς ἔνδον ὑπολήψεως· ἕτερον δέ,
ὅτι πάντα ταῦτα, ὅσα ὁρᾷς, ὅσον οὐδέπω μεταβαλεῖ καὶ οὐκ ἔτι ἔσται· καὶ ὅσων ἤδη
μεταβολαῖς αὐτὸς παρατετύχηκας, συνεχῶς διανοοῦ.  ὁ κόσμος ἀλλοίωσις, ὁ βίος
ὑπόληψις.
]],
            par [[
Εἰ τὸ νοερὸν ἡμῖν κοινόν, καὶ ὁ λόγος, καθ ὃν λογικοί ἐσμεν, κοινός· εἰ τοῦτο,
καὶ ὁ προστακτικὸς τῶν ποιητέων ἢ μὴ λόγος κοινός· εἰ τοῦτο, καὶ ὁ νόμος κοινός·
εἰ τοῦτο, πολῖταί ἐσμεν· εἰ τοῦτο, πολιτεύματός τινος μετέχομεν· εἰ τοῦτο, ὁ
κόσμος ὡσανεὶ πόλις ἐστί· τίνος γὰρ ἄλλου φήσει τις τὸ τῶν ἀνθρώπων πᾶν γένος
κοινοῦ πολιτεύματος μετέχειν; ἐκεῖθεν δέ, ἐκ τῆς κοινῆς ταύτης πόλεως, καὶ αὐτὸ
τὸ νοερὸν καὶ λογικὸν καὶ νομικὸν ἡμῖν ἢ πόθεν; ὥσπερ γὰρ τὸ γεῶδές μοι ἀπό
τινος γῆς ἀπομεμέρισται καὶ τὸ ὑγρὸν ἀφ ἑτέρου στοιχείου καὶ τὸ πνευματικὸν ἀπὸ
πηγῆς τινος καὶ τὸ θερμὸν καὶ πυρῶδες ἔκ τινος ἰδίας πηγῆς (οὐδὲν γὰρ ἐκ τοῦ
μηδενὸς ἔρχεται, ὥσπερ μηδ εἰς τὸ οὐκ ὂν ἀπέρχεται), οὕτω δὴ καὶ τὸ νοερὸν ἥκει
ποθέν.
]],
        },
    },
}, {
    id = "IV-38",
    source = "IV, 38",
    title = "nothing is either bad or good",
    content = {
        par [[
What is evil to thee does not subsist in the ruling principle of another; nor
yet in any turning and mutation of thy corporeal covering. Where is it then?  It
is in that part of thee in which subsists the power of forming opinions about
evils.  Let this power then not form such opinions, and all is well.  And if
that which is nearest to it, the poor body, is burnt, filled with matter and
rottenness, nevertheless let the part which forms opinions about these things be
quiet, that is, let it judge that nothing is either bad or good which can happen
equally to the bad man and the good.  For that which happens equally to him who
lives contrary to nature and to him who lives according to nature, is neither
according to nature nor contrary to nature.
]],
        par [[
Ἐν ἀλλοτρίῳ ἡγεμονικῷ κακὸν σὸν οὐχ ὑφίσταται οὐδὲ μὴν ἔν τινι τροπῇ καὶ
ἑτεροιώσει τοῦ περιέχοντος. ποῦ οὖν; ὅπου τὸ περὶ κακῶν ὑπολαμβάνον σοί ἐστι.
τοῦτο οὖν μὴ ὑπολαμβανέτω καὶ πάντα εὖ ἔχει. κἂν τὸ ἐγγυτάτω αὐτοῦ, τὸ σωμάτιον,
τέμνηται, καίηται, διαπυίσκηται, σήπηται, ὅμως τὸ ὑπολαμβάνον περὶ τούτων μόριον
ἡσυχαζέτω· τουτέστι, κρινέτω μήτε κακόν τι εἶναι μήτε ἀγαθόν, ὃ ἐπίσης δύναται
κακῷ ἀνδρὶ καὶ ἀγαθῷ συμβαίνειν. ὃ γὰρ ‹καὶ τῷ παρὰ φύσιν› καὶ τῷ κατὰ φύσιν
βιοῦντι ἐπίσης συμβαίνει, τοῦτο οὔτε κατὰ φύσιν ἐστὶν οὔτε παρὰ φύσιν.
]],
    },
}, {
    id = "VI-21",
    source = "VI, 21",
    title = "I seek the truth",
    content = {
        par [[
If any man is able to convince me and show me that I do not think or act right,
I will gladly change; for I seek the truth by which no man was ever injured.
But he is injured who abides in his error and ignorance.
]],
        par [[
Εἴ τίς με ἐλέγξαι καὶ παραστῆσαί μοι, ὅτι οὐκ ὀρθῶς ὑπολαμβάνω ἢ πράσσω,
δύναται, χαίρων μεταθήσομαι· ζητῶ γὰρ τὴν ἀλήθειαν, ὑφ ἧς οὐδεὶς πώποτε ἐβλάβη,
βλάπτεται δὲ ὁ ἐπιμένων ἐπὶ τῆς ἑαυτοῦ ἀπάτης καὶ ἀγνοίας.
]],
    },
}, {
    id = "VI-48",
    source = "VI, 48",
    title = "to bear it nobly is good fortune",
    content = {
        lines {
            par [[
Be like the promontory against which the waves continually break, but it stands
firm and tames the fury of the water around it.
]],
            par [[
Unhappy am I because this has happened to me.  Not so, but happy am I, though
this has happened to me, because I continue free from pain, neither crushed by
the present nor fearing the future.  For such a thing as this might have
happened to every man; but every man would not have continued free from pain on
such an occasion.  Why then is that rather a misfortune than this a good
fortune?  And dost thou in all cases call that a man's misfortune, which is not
a deviation from man's nature?  And does a thing seem to thee to be a deviation
from man's nature, when it is not contrary to the will of man's nature?  Well,
thou knowest the will of nature.  Will then this which has happened prevent thee
from being just, magnanimous, temperate, prudent, secure against inconsiderate
opinions and falsehood; will it prevent thee from having modesty, freedom, and
everything else, by the presence of which man's nature obtains all that is its
own?  Remember too on every occasion which leads thee to vexation to apply this
principle: not that this is a misfortune, but that to bear it nobly is good
fortune.
]],
        },
        lines {
            par [[
Ὅμοιον εἶναι τῇ ἄκρᾳ, ᾗ διηνεκῶς τὰ κύματα προσρήσσεται· ἡ δὲ ἕστηκε καὶ περὶ
αὐτὴν κοιμίζεται τὰ φλεγμήναντα τοῦ ὕδατος.
]],
            par [[
“Ἀτυχὴς ἐγώ, ὅτι τοῦτό μοι συνέβη.” οὐμενοῦν ἀλλ εὐτυχὴς ἐγώ, ὅτι τούτου μοι
συμβεβηκότος ἄλυπος διατελῶ, οὔτε ὑπὸ παρόντος θραυόμενος οὔτε ἐπιὸν φοβούμενος.
συμβῆναι μὲν γὰρ τὸ τοιοῦτο παντὶ ἐδύνατο, ἄλυπος δὲ οὐ πᾶς ἐπὶ τούτῳ ἂν
διετέλεσε. διὰ τί οὖν ἐκεῖνο μᾶλλον ἀτύχημα ἢ τοῦτο εὐτύχημα; λέγεις δὲ ὅλως
ἀτύχημα ἀνθρώπου, ὃ οὐκ ἔστιν ἀπότευγμα τῆς φύσεως τοῦ ἀνθρώπου; ἀπότευγμα δὲ
τῆς φύσεως τοῦ ἀνθρώπου εἶναι δοκεῖ σοι, ὃ μὴ παρὰ τὸ βούλημα τῆς φύσεως αὐτοῦ
ἐστι; τί οὖν; τὸ βούλημα μεμάθηκας· μήτι οὖν τὸ συμβεβηκὸς τοῦτο κωλύει σε
δίκαιον εἶναι, μεγαλόψυχον, σώφρονα, ἔμφρονα, ἀπρόπτωτον, ἀδιάψευστον, αἰδήμονα,
ἐλεύθερον, τἆλλα, ὧν συμπαρόντων ἡ φύσις ἡ τοῦ ἀνθρώπου ἀπέχει τὰ ἴδια; μέμνησο
λοιπὸν ἐπὶ παντὸς τοῦ εἰς λύπην σε προαγομένου τούτῳ χρῆσθαι τῷ δόγματι· ὅτι
οὐχὶ τοῦτο ἀτύχημα, ἀλλὰ τὸ φέρειν αὐτὸ γενναίως εὐτύχημα.
]],
        },
    },
}, {
    id = "IX-1",
    source = "IX, 1",
    title = "he who acts unjustly acts impiously",
    content = {
        par [[
He who acts unjustly acts impiously.  For since the universal nature has made
rational animals for the sake of one another to help one another according to
their deserts, but in no way to injure one another, he who transgresses her
will, is clearly guilty of impiety towards the highest divinity.  And he too who
lies is guilty of impiety to the same divinity; for the universal nature is the
nature of things that are; and things that are have a relation to all things
that come into existence.  And further, this universal nature is named truth,
and is the prime cause of all things that are true.  He then who lies
intentionally is guilty of impiety inasmuch as he acts unjustly by deceiving;
and he also who lies unintentionally, inasmuch as he is at variance with the
universal nature, and inasmuch as he disturbs the order by fighting against the
nature of the world; for he fights against it, who is moved of himself to that
which is contrary to truth, for he had received powers from nature through the
neglect of which he is not able now to distinguish falsehood from truth.  And
indeed he who pursues pleasure as good, and avoids pain as evil, is guilty of
impiety.  For of necessity such a man must often find fault with the universal
nature, alleging that it assigns things to the bad and the good contrary to
their deserts, because frequently the bad are in the enjoyment of pleasure and
possess the things which procure pleasure, but the good have pain for their
share and the things which cause pain.  And further, he who is afraid of pain
will sometimes also be afraid of some of the things which will happen in the
world, and even this is impiety.  And he who pursues pleasure will not abstain
from injustice, and this is plainly impiety.  Now with respect to the things
towards which the universal nature is equally affected &mdash; for it would not
have made both, unless it was equally affected towards both &mdash; towards
these they who wish to follow nature should be of the same mind with it, and
equally affected.  With respect to pain, then, and pleasure, or death and life,
or honour and dishonour, which the universal nature employs equally, whoever is
not equally affected is manifestly acting impiously.  And I say that the
universal nature employs them equally, instead of saying that they happen alike
to those who are produced in continuous series and to those who come after them
by virtue of a certain original movement of Providence, according to which it
moved from a certain beginning to this ordering of things, having conceived
certain principles of the things which were to be, and having determined powers
productive of beings and of changes and of suchlike successions.
]],
        par [[
Ὁ ἀδικῶν ἀσεβεῖ· τῆς γὰρ τῶν ὅλων φύσεως κατεσκευακυίας τὰ λογικὰ ζῷα ἕνεκεν
ἀλλήλων, ὥστε ὠφελεῖν μὲν ἄλληλα κατ ἀξίαν βλάπτειν δὲ μηδαμῶς, ὁ τὸ βούλημα
ταύτης παραβαίνων ἀσεβεῖ δηλονότι εἰς τὴν πρεσβυτάτην τῶν θεῶν.  ἡ γὰρ τῶν ὅλων
φύσις ὄντων ἐστὶ φύσις· τὰ δέ γε ὄντα πρὸς τὰ ὑπάρχοντα πάντα οἰκείως ἔχει.  ἔτι
δὲ καὶ ὁ ψευδόμενος [δὲ] ἀσεβεῖ περὶ τὴν αὐτὴν θεόν· καὶ Ἀλήθεια αὕτη ὀνομάζεται
καὶ τῶν ἀληθῶν ἁπάντων πρώτη αἰτία ἐστιν.  ὁ μὲν οὖν ἑκὼν ψευδόμενος ἀσεβεῖ,
καθόσον ἐξαπατῶν ἀδικεῖ· ὁ δὲ ἄκων, καθόσον διαφωνεῖ τῇ τῶν ὅλων φύσει καὶ
καθόσον ἀκοσμεῖ μαχόμενος τῇ τοῦ κόσμου φύσει· μάχεται γὰρ ὁ ἐπὶ τἀναντία τοῖς
ἀληθέσι φερόμενος παῤ ἑαυτόν· ἀφορμὰς γὰρ προειλήφει παρὰ τῆς φύσεως, ὧν
ἀμελήσας οὐχ οἷός τέ ἐστι νῦν διακρίνειν τὰ ψευδῆ ἀπὸ τῶν ἀληθῶν.  καὶ μὴν καὶ ὁ
τὰς ἡδονὰς ὡς ἀγαθὰ διώκων, τοὺς δὲ πόνους ὡς κακὰ φεύγων ἀσεβεῖ· ἀνάγκη γὰρ τὸν
τοιοῦτον μέμφεσθαι πολλάκις τῇ κοινῇ φύσει ὡς παῤ ἀξίαν τι ἀπονεμούσῃ τοῖς
φαύλοις καὶ τοῖς σπουδαίοις, διὰ τὸ πολλάκις τοὺς μὲν φαύλους ἐν ἡδοναῖς εἶναι
καὶ τὰ ποιητικὰ τούτων κτᾶσθαι, τοὺς δὲ σπουδαίους πόνῳ καὶ τοῖς ποιητικοῖς
τούτου περιπίπτειν.  ἔτι δὲ ὁ φοβούμενος τοὺς πόνους φοβηθήσεταί ποτε καὶ τῶν
ἐσομένων τι ἐν τῷ κόσμῳ, τοῦτο δὲ ἤδη ἀσεβές· ὅ τε διώκων τὰς ἡδονὰς οὐκ
ἀφέξεται τοῦ ἀδικεῖν, τοῦτο δὲ ἐναργῶς ἀσεβές· χρὴ δὲ πρὸς ἃ ἡ κοινὴ φύσις
ἐπίσης ἔχει (οὐ γὰρ ἀμφότερα ἂν ἐποίει, εἰ μὴ πρὸς ἀμφότερα ἐπίσης εἶχε), πρὸς
ταῦτα καὶ τοὺς τῇ φύσει βουλομένους ἕπεσθαι, ὁμογνώμονας ὄντας, ἐπίσης
διακεῖσθαι· ὅστις οὖν πρὸς πόνον καὶ ἡδονὴν ἢ θάνατον καὶ ζωὴν ἢ δόξαν καὶ
ἀδοξίαν, οἷς ἐπίσης ἡ τῶν ὅλων φύσις χρῆται, αὐτὸς οὐκ ἐπίσης ἔχει, δῆλον ὡς
ἀσεβεῖ.  λέγω δὲ τὸ χρῆσθαι τούτοις ἐπίσης τὴν κοινὴν φύσιν ἀντὶ τοῦ κατὰ τὸ
ἑξῆς συμβαίνειν ἐπίσης τοῖς γινομένοις καὶ ἐπιγινομένοις ὁρμῇ τινι ἀρχαίᾳ τῆς
προνοίας, καθ ἣν ἀπό τινος ἀρχῆς ὥρμησεν ἐπὶ τήνδε τὴν διακόσμησιν, συλλαβοῦσά
τινας λόγους τῶν ἐσομένων καὶ δυνάμεις γονίμους ἀφορίσασα ὑποστάσεών τε καὶ
μεταβολῶν καὶ διαδοχῶν τοιούτων.
]],
    },
}, {
    id = "X-36",
    source = "X, 36",
    title = "the healthy understanding",
    content = {
        par [[
The healthy eye ought to see all visible things and not to say, I wish for green
things; for this is the condition of a diseased eye.  And the healthy hearing
and smelling ought to be ready to perceive all that can be heard and smelled.
And the healthy stomach ought to be with respect to all food just as the mill
with respect to all things which it is formed to grind.  And accordingly the
healthy understanding ought to be prepared for everything which happens; but
that which says, Let my dear children live, and let all men praise whatever I
may do, is an eye which seeks for green things, or teeth which seek for soft
things.
]],
        par [[
Τὸν ὑγιαίνοντα ὀφθαλμὸν πάντα ὁρᾶν δεῖ τὰ ὁρατὰ καὶ μὴ λέγειν· τὰ χλωρὰ θέλω·
τοῦτο γὰρ ὀφθαλμιῶντός ἐστιν.  καὶ τὴν ὑγιαίνουσαν ἀκοὴν καὶ ὄσφρησιν εἰς πάντα
δεῖ τὰ ἀκουστὰ καὶ ὀσφραντὰ ἑτοίμην εἶναι, καὶ τὸν ὑγιαίνοντα στόμαχον πρὸς
πάντα τὰ τρόφιμα ὁμοίως ἔχειν ὡς μύλην πρὸς πάντα ὅσα ἀλέσουσα κατεσκεύασται.
καὶ τοίνυν τὴν ὑγιαίνουσαν διάνοιαν πρὸς πάντα δεῖ τὰ συμβαίνοντα ἑτοίμην εἶναι,
ἡ δὲ λέγουσα· τὰ τεκνία σῳ ζέσθω, καί· πάντες ὅ τι ἂν πράξω ἐπαινείτωσαν,
ὀφθαλμός ἐστι τὰ χλωρὰ ζητῶν ἢ ὀδόντες τὰ ἁπαλά.
]],
    },
}, {
    id = "XII-24",
    source = "XII, 24",
    title = "cast away opinion",
    content = {
        lines {
            par [[
Cast away opinion: thou art saved.  Who then hinders thee from casting it away?
]],
            par [[
When thou art troubled about anything, thou hast forgotten this, that all things
happen according to the universal nature; and forgotten this, that a man's
wrongful act is nothing to thee; and further thou hast forgotten this, that
everything which happens, always happened so and will happen so, and now happens
so everywhere; forgotten this too, how close is the kinship between a man and
the whole human race, for it is a community, not of a little blood or seed, but
of intelligence.  And thou hast forgotten this too, that every man's
intelligence is a god, and is an efflux of the deity; and forgotten this, that
nothing is a man's own, but that his child and his body and his very soul came
from the deity; forgotten this, that everything is opinion; and lastly thou hast
forgotten that every man lives the present time only, and loses only this.
]],
        },
        lines {
            par [[
Βάλε ἔξω τὴν ὑπόληψιν· σέσωσαι.  τίς οὖν ὁ κωλύων ἐκβάλλειν;
]],
            par [[
Ὅταν δυσφορῇς ἐπί τινι, ἐπελάθου τοῦ, ὅτι πάντα κατὰ τὴν τῶν ὅλων φύσιν γίνεται,
καὶ τοῦ, ὅτι τὸ ἁμαρτανόμενον ἀλλότριον, καὶ ἐπὶ τούτοις τοῦ, ὅτι πᾶν τὸ
γινόμενον οὕτως ἀεὶ ἐγίνετο καὶ γενήσεται καὶ νῦν πανταχοῦ γίνεται· τοῦ, ὅση ἡ
συγγένεια ἀνθρώπου πρὸς πᾶν τὸ ἀνθρώπειον γένος· οὐ γὰρ αἱματίου ἢ σπερματίου,
ἀλλὰ νοῦ κοινωνία.  ἐπελάθου δὲ καὶ τοῦ, ὅτι ὁ ἑκάστου νοῦς θεὸς καὶ ἐκεῖθεν
ἐρρύηκεν· τοῦ, ὅτι οὐδὲν ἴδιον οὐδενός, ἀλλὰ καὶ τὸ τεκνίον καὶ τὸ σωμάτιον καὶ
αὐτὸ τὸ ψυχάριον ἐκεῖθεν ἐλήλυθεν· τοῦ, ὅτι πάνθ ὑπόληψις· τοῦ, ὅτι τὸ παρὸν
μόνον ἕκαστος ζῇ καὶ τοῦτο ἀποβάλλει.
]],
        },
    },
}}

return {
    short_title = {
        en = 'Meditations',
        pt = 'Meditações',
    },
    title = {
        en = '<span lang="grc">Τὰ εἰς ἑαυτόν</span> (Meditations)',
        pt = '<span lang="grc">Τὰ εἰς ἑαυτόν</span> (Meditações)',
    },
    author = {
        en = "Marcus Aurelius Antoninus Augustus",
        pt = "Marcus Aurelius Antoninus Augustus",
    },
    link = "http://classics.mit.edu/Antoninus/meditations.html",
    cover = "meditations.jpg",
    timestamp = { 1672575683, "2023-01-01T12:21:23" },
    languages = { "en", "pt" },
    description = description,
    intro = intro,
    content = {
        en = content,
        pt = content_pt,
    },
    citations = citations,
}
