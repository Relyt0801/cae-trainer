import 'models.dart';

/// CAE Trainer — Fragenbank (1:1 aus der ursprünglichen Spezifikation).
/// 96 Fragen: 3 Passagen × 8 für Parts 1–3, plus 24 Transformations für Part 4.
const List<Category> kCategories = [
  // ===================== PART 1 — Multiple-Choice Cloze =====================
  Category(
    id: 'part1',
    shortName: 'Part 1',
    name: 'Multiple-Choice Cloze',
    type: QType.mc,
    icon: 'MC',
    sessionLength: 8,
    description: 'Wähle aus vier Optionen das beste Wort für jede Lücke.',
    passages: [
      Passage(
        title: 'The Overlooked Power of Small Habits',
        text:
            'Most people drastically {1} the long-term impact of the small habits they perform each day. We tend to {2} for dramatic, sweeping changes when, in reality, modest adjustments repeated consistently produce far more reliable results. Consider physical fitness: someone who exercises for thirty minutes daily will, over the {3} of a year, easily outperform someone who attempts gruelling weekly sessions but soon {4} out. The same principle {5} to learning a language, managing money, and maintaining relationships. The real challenge is that the effect of any single small action remains all but {6}, which makes it tempting to give up. Those who succeed tend to be the ones who {7} on regardless, trusting that the cumulative benefits will eventually {8} themselves felt.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['underestimate', 'underrate', 'underplay', 'understate'], correct: 0, explanation: '"Underestimate the impact" ist die feste Kollokation. "Underrate" passt zu Personen/Talenten.'),
          Question(num: 2, type: QType.mc, options: ['hope', 'wait', 'aim', 'yearn'], correct: 2, explanation: '"Aim for changes" — natürlichste Wendung. "Hope/yearn" zu emotional.'),
          Question(num: 3, type: QType.mc, options: ['duration', 'length', 'course', 'span'], correct: 2, explanation: '"Over the course of a year" — feste Zeitwendung.'),
          Question(num: 4, type: QType.mc, options: ['burns', 'wears', 'gives', 'drops'], correct: 1, explanation: '"Wear out" = sich erschöpfen.'),
          Question(num: 5, type: QType.mc, options: ['fits', 'refers', 'applies', 'suits'], correct: 2, explanation: '"The principle applies to X" — Standardkollokation.'),
          Question(num: 6, type: QType.mc, options: ['imperceptible', 'invisible', 'inaudible', 'unobservable'], correct: 0, explanation: '"All but imperceptible" = kaum wahrnehmbar (alle Sinne).'),
          Question(num: 7, type: QType.mc, options: ['hold', 'forge', 'soldier', 'keep'], correct: 2, explanation: '"Soldier on" = trotz Schwierigkeiten weitermachen.'),
          Question(num: 8, type: QType.mc, options: ['get', 'make', 'have', 'bring'], correct: 1, explanation: '"Make themselves felt" = sich bemerkbar machen.'),
        ],
      ),
      Passage(
        title: 'The Allure of Cities',
        text:
            'For thousands of years, cities have exerted a powerful {1} on the human imagination. Even those who claim to detest urban life often find themselves {2} towards the bright lights and ceaseless activity of the metropolis. Sociologists have long sought to understand why so many people are willing to {3} up with the noise, expense, and crowding that city living entails. Part of the answer {4} in the sheer density of opportunity that cities provide. A museum, a bustling market, and a quiet park may all lie {5} a few minutes’ walk of one another. Cities also tend to {6} creativity, by bringing together people of different backgrounds whose interactions spark fresh ideas. Of course, this comes {7} a price: rents are often crippling, and the pace can be exhausting. Yet for all their drawbacks, cities continue to attract migrants in their millions, drawn by the promise of opportunity that few other environments can {8}.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['influence', 'dominance', 'authority', 'control'], correct: 0, explanation: 'Nur "influence on" idiomatisch — die anderen verlangen "over".'),
          Question(num: 2, type: QType.mc, options: ['gravitating', 'drifting', 'heading', 'steering'], correct: 0, explanation: '"Gravitate towards" = fast unwillkürliche Anziehung.'),
          Question(num: 3, type: QType.mc, options: ['live', 'get', 'put', 'hold'], correct: 2, explanation: '"Put up with sth" = dulden, ertragen.'),
          Question(num: 4, type: QType.mc, options: ['lies', 'sits', 'stands', 'rests'], correct: 0, explanation: '"The answer lies in" — feste Wendung.'),
          Question(num: 5, type: QType.mc, options: ['within', 'inside', 'around', 'under'], correct: 0, explanation: '"Within X minutes’ walk" — idiomatische Distanzangabe.'),
          Question(num: 6, type: QType.mc, options: ['foster', 'impose', 'dictate', 'enforce'], correct: 0, explanation: '"Foster creativity" = fördern (positiv).'),
          Question(num: 7, type: QType.mc, options: ['at', 'for', 'by', 'with'], correct: 0, explanation: '"Come at a price" — feste Wendung.'),
          Question(num: 8, type: QType.mc, options: ['rival', 'equal', 'dispute', 'contradict'], correct: 0, explanation: '"Rival" = ebenbürtig sein, mithalten.'),
        ],
      ),
      Passage(
        title: 'The Joy of Walking',
        text:
            'For most of human history, walking was simply a fact of {1}. It was how people moved between fields, markets, and one another’s homes — an unremarkable activity that {2} no special attention. Today, however, walking has been {3} as something almost extraordinary. Books are written about it. Apps measure it. Health experts {4} its virtues. Some of this enthusiasm is well {5}: regular walking has been shown to reduce stress, improve cardiovascular health, and even {6} creativity. Writers and philosophers have long {7} to the open road when seeking inspiration. But there is something curious about the way modern life has {8} a basic human activity into a kind of optional self-improvement project.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['being', 'life', 'living', 'existence'], correct: 1, explanation: '"A fact of life" — feste Wendung.'),
          Question(num: 2, type: QType.mc, options: ['sent', 'pushed', 'drew', 'carried'], correct: 2, explanation: '"Draw attention" — Standardkollokation.'),
          Question(num: 3, type: QType.mc, options: ['shaped', 'framed', 'formed', 'drawn'], correct: 1, explanation: '"Frame X as Y" = darstellen / einordnen.'),
          Question(num: 4, type: QType.mc, options: ['shout', 'announce', 'declare', 'extol'], correct: 3, explanation: '"Extol the virtues of" — die Vorzüge preisen.'),
          Question(num: 5, type: QType.mc, options: ['seated', 'founded', 'settled', 'ranked'], correct: 1, explanation: '"Well founded" = (gut) begründet.'),
          Question(num: 6, type: QType.mc, options: ['climb', 'surge', 'boost', 'spike'], correct: 2, explanation: 'Nur "boost" ist transitiv und passt zu "creativity".'),
          Question(num: 7, type: QType.mc, options: ['faced', 'turned', 'addressed', 'approached'], correct: 1, explanation: '"Turn to" = sich zuwenden, Zuflucht suchen.'),
          Question(num: 8, type: QType.mc, options: ['yielded', 'brought', 'bent', 'turned'], correct: 3, explanation: '"Turn X into Y" — die anderen Verben kollocieren nicht mit "into".'),
        ],
      ),
    ],
  ),

  // ===================== PART 2 — Open Cloze =====================
  Category(
    id: 'part2',
    shortName: 'Part 2',
    name: 'Open Cloze',
    type: QType.open,
    icon: '___',
    sessionLength: 8,
    description: 'Setze ein einzelnes Wort in jede Lücke (Präpositionen, Phrasal Verbs, Strukturwörter).',
    passages: [
      Passage(
        title: 'Why We Sleep',
        text:
            'For centuries, sleep was largely considered a passive state during {1} very little of significance occurred in the body. Modern science, {2}, has thoroughly overturned this view. Researchers now know that, {3} from being a period of inactivity, sleep is when the brain carries {4} some of its most important maintenance work. Memories are consolidated, toxins are flushed away, and damaged tissues are repaired. {5} a result, even a single night of poor sleep can have noticeable consequences {6} both mental and physical performance. {7} make matters worse, the long-term effects of chronic sleep deprivation include a heightened risk of serious illness. Despite this, many adults continue to {8} by on far less sleep than they need.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['which'], explanation: '"During which" — Relativpronomen nach Präposition.'),
          Question(num: 2, type: QType.open, accept: ['however'], explanation: 'Kontrastmarker.'),
          Question(num: 3, type: QType.open, accept: ['far'], explanation: '"Far from being" = ganz im Gegenteil.'),
          Question(num: 4, type: QType.open, accept: ['out'], explanation: '"Carry out work" — Phrasal Verb.'),
          Question(num: 5, type: QType.open, accept: ['as'], explanation: '"As a result" — feste Wendung.'),
          Question(num: 6, type: QType.open, accept: ['for', 'on'], explanation: '"Consequences for/on" — beide akzeptiert.'),
          Question(num: 7, type: QType.open, accept: ['to'], explanation: '"To make matters worse" — Satzeinstieg.'),
          Question(num: 8, type: QType.open, accept: ['get'], explanation: '"Get by on" = mit etw. auskommen.'),
        ],
      ),
      Passage(
        title: 'The Rise of the Podcast',
        text:
            'Podcasts have become one of the most popular forms of media in recent years, with millions of listeners tuning {1} each week. {2} from being a passing fad, the medium has steadily grown since its emergence {3} the early 2000s. Part of the appeal lies in the fact {4} podcasts can be consumed almost anywhere — on the commute, while exercising, or during household chores. Another factor is the remarkable variety on offer; {5} matter how niche your interests, there is almost certainly a podcast devoted to them. Critics, however, point {6} that the explosion in podcast numbers has made it increasingly difficult for new shows {7} stand out. As the market becomes more crowded, only those producers willing to invest seriously in quality and marketing are likely to {8} noticed.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['in'], explanation: '"Tune in" — einschalten.'),
          Question(num: 2, type: QType.open, accept: ['far'], explanation: '"Far from being" — feste Wendung.'),
          Question(num: 3, type: QType.open, accept: ['in'], explanation: 'Zeitangabe für Jahrzehnte: "in the early 2000s".'),
          Question(num: 4, type: QType.open, accept: ['that'], explanation: '"The fact that" — Konjunktion.'),
          Question(num: 5, type: QType.open, accept: ['no'], explanation: '"No matter how" — Konzessivmuster.'),
          Question(num: 6, type: QType.open, accept: ['out'], explanation: '"Point out (that)" — darauf hinweisen.'),
          Question(num: 7, type: QType.open, accept: ['to'], explanation: '"Difficult for sb to do sth" — to-Infinitiv.'),
          Question(num: 8, type: QType.open, accept: ['get', 'be'], explanation: '"Get/Be noticed" — beide akzeptiert.'),
        ],
      ),
      Passage(
        title: 'The History of Coffee',
        text:
            'The story of coffee begins in the highlands of Ethiopia, {1} legend has it that a goatherd named Kaldi noticed his animals dancing with energy after eating certain red berries. {2} the truth of this tale, coffee soon spread northwards across the Red Sea {3} Yemen, where it was cultivated systematically for the first time. From there, it travelled along trade routes {4} the Ottoman world, becoming central to social life by the 16th century. Coffee houses sprang up in cities {5} as Istanbul, Cairo, and eventually London, providing spaces {6} which people of different backgrounds could meet, debate, and exchange ideas. Critics warned that these establishments encouraged idleness; supporters argued that they were essential {7} a thriving civil society. {8} way one looks at it, coffee transformed how people thought, met, and worked.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['where'], explanation: 'Relativadverb für Ort.'),
          Question(num: 2, type: QType.open, accept: ['whatever'], explanation: '"Whatever the truth of" — Konzessivkonstruktion.'),
          Question(num: 3, type: QType.open, accept: ['to'], explanation: '"Spread to X" — Bewegung zu Zielort.'),
          Question(num: 4, type: QType.open, accept: ['into', 'through'], explanation: '"Into/through" — beide möglich.'),
          Question(num: 5, type: QType.open, accept: ['such'], explanation: '"Such as" = wie zum Beispiel.'),
          Question(num: 6, type: QType.open, accept: ['in'], explanation: '"Spaces in which" — Präposition + Relativpronomen.'),
          Question(num: 7, type: QType.open, accept: ['to', 'for'], explanation: '"Essential to/for" — beide gelten.'),
          Question(num: 8, type: QType.open, accept: ['whichever', 'whatever'], explanation: '"Whichever way one looks at it" — feste Wendung.'),
        ],
      ),
    ],
  ),

  // ===================== PART 3 — Word Formation =====================
  Category(
    id: 'part3',
    shortName: 'Part 3',
    name: 'Word Formation',
    type: QType.word,
    icon: 'WF',
    sessionLength: 8,
    description: 'Forme das Grundwort in GROSSBUCHSTABEN passend zur Lücke um.',
    passages: [
      Passage(
        title: 'The Climate Conundrum',
        text:
            'Climate change presents one of the most {1} issues of our time. Scientists have provided {2} evidence that human activity is responsible for rising global temperatures. Despite this, public response has been {3} slow, partly due to widespread {4} about what individual citizens can actually do. Many feel a deep sense of {5} when faced with such a vast problem. However, experts insist that small {6} changes, when adopted on a large scale, can have a {7} impact. The key, they argue, is to move beyond mere {8} and toward concrete action.',
        questions: [
          Question(num: 1, type: QType.word, base: 'CHALLENGE', accept: ['challenging'], explanation: 'Adjektiv vor "issues".'),
          Question(num: 2, type: QType.word, base: 'OVERWHELM', accept: ['overwhelming'], explanation: '"Overwhelming evidence" — feste Kollokation.'),
          Question(num: 3, type: QType.word, base: 'NOTICE', accept: ['noticeably'], explanation: 'Adverb, modifiziert "slow".'),
          Question(num: 4, type: QType.word, base: 'CONFUSE', accept: ['confusion'], explanation: 'Substantiv nach "widespread".'),
          Question(num: 5, type: QType.word, base: 'HELP', accept: ['helplessness'], explanation: 'Doppelter Suffix: -less + -ness.'),
          Question(num: 6, type: QType.word, base: 'BEHAVE', accept: ['behavioural', 'behavioral'], explanation: 'Adjektiv. UK/US gelten beide.'),
          Question(num: 7, type: QType.word, base: 'MEANING', accept: ['meaningful'], explanation: 'Adjektiv → "meaningful impact".'),
          Question(num: 8, type: QType.word, base: 'AWARE', accept: ['awareness'], explanation: 'Substantiv nach "beyond mere".'),
        ],
      ),
      Passage(
        title: 'Why We Forget',
        text:
            'Forgetting is often viewed as a {1} of the brain, but neuroscientists increasingly regard it as essential to {2} cognitive function. Memory is not designed to be {3}; rather, it operates by selectively eliminating information that lacks emotional {4}. This {5} process is what allows us to focus on truly {6} details. Although forgetting can be {7}, it should not be regarded as a {8}; on the contrary, it is one of the brain’s most sophisticated achievements.',
        questions: [
          Question(num: 1, type: QType.word, base: 'FAIL', accept: ['failure'], explanation: 'Substantiv nach "a".'),
          Question(num: 2, type: QType.word, base: 'HEALTH', accept: ['healthy'], explanation: 'Adjektiv vor "function".'),
          Question(num: 3, type: QType.word, base: 'COMPREHEND', accept: ['comprehensive'], explanation: 'Adjektiv = umfassend.'),
          Question(num: 4, type: QType.word, base: 'SIGNIFY', accept: ['significance'], explanation: 'Substantiv = Bedeutung.'),
          Question(num: 5, type: QType.word, base: 'SELECT', accept: ['selective'], explanation: 'Adjektiv vor "process".'),
          Question(num: 6, type: QType.word, base: 'MEAN', accept: ['meaningful'], explanation: 'Adjektiv → "meaningful details".'),
          Question(num: 7, type: QType.word, base: 'FRUSTRATE', accept: ['frustrating'], explanation: '-ing-Adjektiv für die Wirkung.'),
          Question(num: 8, type: QType.word, base: 'WEAK', accept: ['weakness'], explanation: 'Substantiv, Suffix -ness.'),
        ],
      ),
      Passage(
        title: 'Why We Read Fiction',
        text:
            'For centuries, the {1} of imaginary worlds has captivated human beings. Some have viewed this fascination with {2}, arguing that time spent on fiction is time stolen from more {3} pursuits. Recent psychological research, however, suggests that reading novels may bring {4} cognitive and social benefits. Studies show that readers of literary fiction develop a {5} improvement in their ability to understand the emotions of others. This skill is {6} for navigating complex social situations. Reading also seems to {7} memory and concentration. Far from being a frivolous {8}, the habit of reading fiction may be one of the most valuable mental exercises we can perform.',
        questions: [
          Question(num: 1, type: QType.word, base: 'REAL', accept: ['reality'], explanation: 'Substantiv nach "the".'),
          Question(num: 2, type: QType.word, base: 'SUSPECT', accept: ['suspicion'], explanation: '"With suspicion" = misstrauisch.'),
          Question(num: 3, type: QType.word, base: 'PRODUCT', accept: ['productive'], explanation: 'Adjektiv vor "pursuits".'),
          Question(num: 4, type: QType.word, base: 'CONSIDER', accept: ['considerable'], explanation: 'Adjektiv = beträchtlich.'),
          Question(num: 5, type: QType.word, base: 'NOTICE', accept: ['noticeable'], explanation: 'Adjektiv vor "improvement".'),
          Question(num: 6, type: QType.word, base: 'ESSENCE', accept: ['essential'], explanation: 'Adjektiv vor "for".'),
          Question(num: 7, type: QType.word, base: 'STRONG', accept: ['strengthen'], explanation: 'Verb-Infinitiv nach "to".'),
          Question(num: 8, type: QType.word, base: 'DISTRACT', accept: ['distraction'], explanation: 'Substantiv nach "a frivolous".'),
        ],
      ),
    ],
  ),

  // ===================== PART 4 — Key Word Transformations (Pool 24) =====================
  Category(
    id: 'part4',
    shortName: 'Part 4',
    name: 'Key Word Transformations',
    type: QType.transform,
    icon: '⇄',
    sessionLength: 6,
    description: 'Schreibe den Satz mit dem Schlüsselwort um (2–5 Wörter). Schlüsselwort nicht verändern.',
    pool: [
      Question(num: 0, type: QType.transform, original: 'I regret not studying harder for my exams.', keyword: 'WISH', gapped: 'I _____ for my exams.', accept: ['wish i had studied harder', "wish i'd studied harder"], explanation: '"I wish + Past Perfect" — bedauernder Wunsch in der Vergangenheit.'),
      Question(num: 0, type: QType.transform, original: 'It’s possible that Sarah forgot about the meeting.', keyword: 'HAVE', gapped: 'Sarah _____ about the meeting.', accept: ['may have forgotten', 'might have forgotten', 'could have forgotten'], explanation: 'Modales Perfekt: may/might/could + have + Past Participle.'),
      Question(num: 0, type: QType.transform, original: 'They started building the bridge two years ago.', keyword: 'WORKING', gapped: 'They _____ on the bridge for two years.', accept: ['have been working', "'ve been working"], explanation: 'Present Perfect Continuous + "work on".'),
      Question(num: 0, type: QType.transform, original: 'The teacher made us rewrite the essay.', keyword: 'FORCED', gapped: 'We _____ the essay by the teacher.', accept: ['were forced to rewrite'], explanation: 'Passiv mit "force" + to-Infinitiv.'),
      Question(num: 0, type: QType.transform, original: 'I’m sure he didn’t take the money.', keyword: 'HAVE', gapped: 'He _____ the money.', accept: ["can't have taken", 'cannot have taken', "couldn't have taken"], explanation: '"Can’t/couldn’t have + Past Participle" — sichere Verneinung.'),
      Question(num: 0, type: QType.transform, original: 'Despite his lack of experience, he got the job.', keyword: 'FACT', gapped: 'He got the job _____ he lacked experience.', accept: ['despite the fact that', 'in spite of the fact that'], explanation: '"Despite/In spite of the fact that" + Nebensatz.'),
      Question(num: 0, type: QType.transform, original: 'She didn’t manage to finish the report on time.', keyword: 'SUCCEED', gapped: 'She _____ the report on time.', accept: ["didn't succeed in finishing", 'did not succeed in finishing'], explanation: '"Succeed in + Gerund".'),
      Question(num: 0, type: QType.transform, original: 'It is a long time since they last visited us.', keyword: 'VISITED', gapped: 'They _____ for a long time.', accept: ["haven't visited us", 'have not visited us'], explanation: 'Present Perfect mit Verneinung + Zeitraum.'),
      Question(num: 0, type: QType.transform, original: 'I’d prefer you not to mention this to anyone.', keyword: 'RATHER', gapped: 'I _____ this to anyone.', accept: ["would rather you didn't mention", "'d rather you didn't mention", 'would rather you did not mention'], explanation: '"Would rather + subject + Past Simple" für Präferenz bzgl. anderer.'),
      Question(num: 0, type: QType.transform, original: 'The exhibition was so popular that we had to extend it.', keyword: 'SUCH', gapped: 'It was _____ that we had to extend it.', accept: ['such a popular exhibition'], explanation: '"So + Adj." → "such a + Adj. + Subst.".'),
      Question(num: 0, type: QType.transform, original: 'Tom was about to leave when his phone rang.', keyword: 'POINT', gapped: 'Tom was _____ when his phone rang.', accept: ['on the point of leaving', 'at the point of leaving'], explanation: '"On the point of + Gerund" = im Begriff zu tun.'),
      Question(num: 0, type: QType.transform, original: 'If you don’t apologize, she’ll never speak to you again.', keyword: 'UNLESS', gapped: "She'll never speak to you again _____ apologize.", accept: ['unless you'], explanation: '"Unless" = wenn nicht. Ersetzt "if … not".'),
      Question(num: 0, type: QType.transform, original: 'I haven’t seen Tom for ages.', keyword: 'SINCE', gapped: "It's _____ I last saw Tom.", accept: ['been ages since', 'been a long time since'], explanation: '"It’s been + Zeitraum + since + Past Simple".'),
      Question(num: 0, type: QType.transform, original: 'You should have told me earlier.', keyword: 'WISH', gapped: 'I _____ me earlier.', accept: ['wish you had told', "wish you'd told"], explanation: '"Wish + subject + Past Perfect".'),
      Question(num: 0, type: QType.transform, original: 'Visitors are not allowed to take photographs in the museum.', keyword: 'PROHIBITED', gapped: 'Visitors _____ photographs in the museum.', accept: ['are prohibited from taking'], explanation: '"Be prohibited from + Gerund".'),
      Question(num: 0, type: QType.transform, original: 'I started this project six months ago.', keyword: 'WORKING', gapped: 'I _____ project for six months.', accept: ['have been working on this', "'ve been working on this"], explanation: 'Present Perfect Continuous + "work on".'),
      Question(num: 0, type: QType.transform, original: 'The film is so popular that all the tickets have sold out.', keyword: 'SUCH', gapped: 'It _____ that all the tickets have sold out.', accept: ['is such a popular film'], explanation: '"So + Adj." → "such a + Adj. + Subst.".'),
      Question(num: 0, type: QType.transform, original: 'Don’t blame me for what happened.', keyword: 'FAULT', gapped: 'What happened _____.', accept: ["wasn't my fault", 'was not my fault'], explanation: '"X is/was not my fault" — Past Simple wegen "happened".'),
      Question(num: 0, type: QType.transform, original: 'Without your help, I would never have finished.', keyword: 'BEEN', gapped: 'If _____ for your help, I would never have finished.', accept: ["it hadn't been", 'it had not been'], explanation: '"If it hadn’t been for X" = ohne X.'),
      Question(num: 0, type: QType.transform, original: 'My old phone is faster than my new one.', keyword: 'AS', gapped: 'My new phone _____ my old one.', accept: ['is not as fast as', "isn't as fast as"], explanation: '"Not as + Adj. + as" für Vergleich.'),
      Question(num: 0, type: QType.transform, original: 'It was a mistake to lend him the money.', keyword: "SHOULDN'T", gapped: 'I _____ him the money.', accept: ["shouldn't have lent", 'should not have lent'], explanation: '"Shouldn’t have + Past Participle" — Bedauern.'),
      Question(num: 0, type: QType.transform, original: 'She felt embarrassed when she realised her mistake.', keyword: 'TO', gapped: 'Much _____, she realised her mistake.', accept: ['to her embarrassment'], explanation: '"To my/her + Subst." = sehr zu meinem/ihrem …'),
      Question(num: 0, type: QType.transform, original: 'We didn’t go to the beach because it was raining.', keyword: 'BEEN', gapped: 'If it _____ raining, we would have gone to the beach.', accept: ["hadn't been", 'had not been'], explanation: 'Third Conditional.'),
      Question(num: 0, type: QType.transform, original: 'Andy regrets not buying the house when it was cheap.', keyword: 'WISHES', gapped: 'Andy _____ the house when it was cheap.', accept: ['wishes he had bought', "wishes he'd bought"], explanation: '"Wish + Past Perfect" für Vergangenheitswunsch.'),
    ],
  ),
];
