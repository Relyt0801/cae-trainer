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
      Passage(
        title: 'The Psychology of Expertise',
        text:
            'For many years, researchers assumed that exceptional performance was largely the result of innate talent. However, more recent studies have challenged this assumption, suggesting that expertise is often the product of sustained effort and deliberate practice. While natural ability may provide an initial advantage, it is rarely sufficient on its own to guarantee long-term success. Experts typically spend thousands of hours refining their skills and analysing their mistakes. Rather than avoiding failure, they actively seek feedback and use it to identify areas that require improvement. This willingness to confront weaknesses directly is one of the characteristics that most clearly {1} high performers from the general population. Another important factor is motivation. Individuals who achieve mastery tend to possess a strong internal drive that enables them to persevere despite setbacks. They are less likely to be discouraged by temporary difficulties and more inclined to view obstacles as challenges to be {2}. As a result, they often maintain a level of commitment that others find difficult to sustain. Researchers have also noted that experts develop sophisticated mental frameworks that allow them to process information more efficiently. Through repeated exposure, they become capable of recognising patterns that would otherwise go unnoticed. This ability enables them to make rapid yet accurate judgments in situations that might {3} less experienced individuals. Nevertheless, expertise should not be regarded as a fixed state. Skills can deteriorate if they are not regularly practised, and even highly accomplished professionals must continue learning in order to remain {4} in their field. In rapidly changing industries, the knowledge that was once considered cutting-edge may soon become {5}. Consequently, many organisations now place greater emphasis on continuous professional development. Employees are encouraged to update their knowledge and acquire new competencies so that they can {6} pace with technological and social changes. Ultimately, expertise is best understood as a dynamic process rather than a final destination. The most successful people are often those who remain curious, adaptable and willing to {7} their assumptions in light of new evidence. Their achievements stem not from a single moment of brilliance but from years of focused effort and intellectual {8}.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['divide', 'separate', 'distinguish', 'differ'], correct: 2, also: [1], explanation: '"distinguish/separate X from Y" — beide korrekt; "differ" wäre intransitiv.'),
          Question(num: 2, type: QType.mc, options: ['overcome', 'defeat', 'suppress', 'withstand'], correct: 0, explanation: '"challenges to be overcome" — feste Wendung.'),
          Question(num: 3, type: QType.mc, options: ['puzzle', 'wonder', 'surprise', 'doubt'], correct: 0, explanation: '"puzzle" = verwirren; passt zum Kontrast erfahren/unerfahren.'),
          Question(num: 4, type: QType.mc, options: ['current', 'relevant', 'applicable', 'appropriate'], correct: 0, also: [1], explanation: '"remain current/relevant in a field" — beide idiomatisch.'),
          Question(num: 5, type: QType.mc, options: ['old-fashioned', 'outdated', 'ancient', 'previous'], correct: 1, explanation: '"become outdated" = veralten (von Wissen).'),
          Question(num: 6, type: QType.mc, options: ['hold', 'keep', 'maintain', 'preserve'], correct: 1, explanation: '"keep pace with" — feste Wendung.'),
          Question(num: 7, type: QType.mc, options: ['review', 'revise', 'inspect', 'alter'], correct: 1, also: [0], explanation: '"revise/review assumptions" — beide möglich.'),
          Question(num: 8, type: QType.mc, options: ['discipline', 'control', 'regulation', 'order'], correct: 0, explanation: '"intellectual discipline" — feste Kollokation.'),
        ],
      ),
      Passage(
        title: 'The Future of Urban Transport',
        text:
            'Modern cities face increasing pressure to develop transport systems capable of accommodating growing populations while reducing environmental impact. Traditional approaches that rely heavily on private vehicles are becoming increasingly difficult to {1}, particularly in densely populated regions where road space is limited. Urban planners are therefore exploring alternative solutions. Public transport networks are being expanded, cycling infrastructure is receiving greater investment, and new technologies are being introduced to improve efficiency. Autonomous vehicles, for example, have the potential to {2} traffic congestion by optimising routes and reducing human error. However, technological innovation alone is unlikely to solve every problem. Effective transport policy must also take account of social and economic factors. Measures that appear beneficial in theory may prove difficult to implement if they fail to gain public {3}. Residents are often reluctant to alter established habits, especially when proposed changes involve additional costs or inconvenience. Environmental considerations are likewise becoming more prominent. Governments are under increasing pressure to {4} emissions and improve air quality. As a result, many cities have introduced restrictions on highly polluting vehicles and offered incentives for cleaner alternatives. The transition towards sustainable transport will undoubtedly require significant investment. Nevertheless, supporters argue that the long-term benefits far {5} the initial expense. Improved mobility can enhance productivity, stimulate economic growth and contribute to a higher quality of life. The challenge lies in developing solutions that are both practical and equitable. Policymakers must ensure that new systems remain accessible to all members of society rather than primarily benefiting those who are already economically {6}. For this reason, experts emphasise the importance of careful planning and ongoing evaluation. Successful policies are typically those that can adapt to changing circumstances and respond effectively to unforeseen {7}. In an era of rapid urbanisation, flexibility may prove to be one of the most valuable assets available to decision-{8}.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['sustain', 'support', 'maintain', 'preserve'], correct: 0, also: [2], explanation: '"sustain/maintain an approach" — beide möglich.'),
          Question(num: 2, type: QType.mc, options: ['ease', 'relax', 'loosen', 'soften'], correct: 0, explanation: '"ease congestion" = lindern.'),
          Question(num: 3, type: QType.mc, options: ['approval', 'permission', 'allowance', 'agreement'], correct: 0, explanation: '"gain public approval" — feste Wendung.'),
          Question(num: 4, type: QType.mc, options: ['lower', 'reduce', 'decline', 'diminish'], correct: 1, also: [0], explanation: '"reduce/lower emissions" — beide idiomatisch; "decline" ist intransitiv.'),
          Question(num: 5, type: QType.mc, options: ['exceed', 'outweigh', 'overtake', 'surpass'], correct: 1, also: [0], explanation: '"benefits outweigh/exceed the cost" — beide möglich.'),
          Question(num: 6, type: QType.mc, options: ['privileged', 'wealthy', 'prosperous', 'fortunate'], correct: 0, explanation: '"economically privileged" — feste Kollokation.'),
          Question(num: 7, type: QType.mc, options: ['developments', 'circumstances', 'outcomes', 'conditions'], correct: 1, also: [0], explanation: '"unforeseen circumstances/developments" — beide möglich.'),
          Question(num: 8, type: QType.mc, options: ['creators', 'makers', 'builders', 'planners'], correct: 1, explanation: '"decision-makers" — fester Begriff.'),
        ],
      ),
      Passage(
        title: 'Behavioural Economics and Human Decision-Making',
        text:
            'Traditional economic theory assumes that individuals act rationally and consistently in pursuit of their own interests. In reality, however, human behaviour often departs significantly from this idealised model. Researchers in behavioural economics have demonstrated that decisions are frequently influenced by psychological factors that can {1} objective reasoning. One of the most widely studied phenomena is known as loss aversion. People generally experience the discomfort of losing something more intensely than the satisfaction of gaining an equivalent amount. As a result, they may make choices that appear irrational when viewed from a purely economic {2}. Investors, for example, sometimes retain declining assets for longer than they should because they are reluctant to acknowledge a loss. Another factor that shapes behaviour is the tendency to rely on mental shortcuts. These cognitive strategies allow individuals to process information efficiently but can occasionally {3} systematic errors in judgment. While such shortcuts are often useful, they may also lead people to overestimate unlikely risks or underestimate more probable dangers. Behavioural economists argue that understanding these patterns can help policymakers design more effective interventions. Rather than attempting to force individuals to change their behaviour, governments may be able to {4} better decisions through subtle modifications to the environment in which choices are made. The practical applications of this research are extensive. From retirement savings schemes to public health campaigns, behavioural insights have increasingly been employed to encourage desirable outcomes. Critics nevertheless warn that such approaches should be used with caution, as they may {5} concerns about personal autonomy and manipulation. Despite these debates, behavioural economics has fundamentally altered the way many experts view decision-making. It highlights the fact that human behaviour is often shaped by factors that operate below the level of conscious awareness. Consequently, the field continues to {6} attention across a wide range of disciplines. Ultimately, its greatest contribution may be its ability to {7} the gap between abstract economic models and the complexities of real-world behaviour. By examining how people actually think and act, researchers are developing a more nuanced {8} of human decision-making.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['undermine', 'weaken', 'damage', 'spoil'], correct: 0, also: [1], explanation: '"undermine/weaken reasoning" — beide möglich.'),
          Question(num: 2, type: QType.mc, options: ['viewpoint', 'perspective', 'position', 'angle'], correct: 1, also: [0], explanation: '"economic perspective/viewpoint" — beide möglich.'),
          Question(num: 3, type: QType.mc, options: ['result', 'produce', 'generate', 'create'], correct: 2, also: [1, 3], explanation: '"generate/produce/create errors" — mehrere möglich; "result" bräuchte "in".'),
          Question(num: 4, type: QType.mc, options: ['prompt', 'persuade', 'force', 'encourage'], correct: 0, also: [3], explanation: '"prompt/encourage better decisions" — beide möglich.'),
          Question(num: 5, type: QType.mc, options: ['rise', 'raise', 'lift', 'create'], correct: 1, explanation: '"raise concerns" — feste Wendung ("rise" ist intransitiv).'),
          Question(num: 6, type: QType.mc, options: ['attract', 'draw', 'gain', 'collect'], correct: 0, also: [1, 2], explanation: '"attract/draw/gain attention" — alle idiomatisch.'),
          Question(num: 7, type: QType.mc, options: ['bridge', 'connect', 'unite', 'join'], correct: 0, explanation: '"bridge the gap" — feste Wendung.'),
          Question(num: 8, type: QType.mc, options: ['appreciation', 'understanding', 'awareness', 'recognition'], correct: 1, also: [0], explanation: '"nuanced understanding/appreciation" — beide möglich.'),
        ],
      ),
      Passage(
        title: 'Scientific Breakthroughs and Serendipity',
        text:
            'Many of the most significant scientific discoveries were not the result of carefully planned investigations but occurred largely by accident. Such findings often emerge when researchers encounter unexpected results and possess the insight to recognise their potential significance. History provides numerous examples. The discovery of penicillin, for instance, arose from an observation that might easily have been {1}. Rather than dismissing the unusual behaviour of a bacterial culture, the scientist involved chose to investigate it further. This willingness to explore anomalies has frequently {2} to major advances. Nevertheless, chance alone is rarely sufficient. Successful researchers must possess the knowledge necessary to interpret unexpected findings and place them within a broader theoretical {3}. Without such expertise, valuable opportunities may pass unnoticed. Modern scientific institutions increasingly attempt to balance structured research programmes with environments that encourage creativity and experimentation. While funding bodies understandably seek predictable outcomes, excessive emphasis on short-term results can sometimes {4} innovation. The relationship between planning and serendipity remains a subject of debate. Some scholars argue that genuine breakthroughs often occur when individuals are free to pursue unconventional ideas. Others maintain that systematic investigation provides the essential foundation upon which accidental discoveries can {5}. Regardless of the precise balance involved, most researchers agree that curiosity plays a crucial role. Scientific progress depends not only on answering existing questions but also on recognising entirely new ones. This requires an openness to uncertainty and a willingness to {6} established assumptions. As science continues to become more specialised, opportunities for unexpected discoveries may increasingly arise at the boundaries between disciplines. Collaboration across traditional fields can expose researchers to unfamiliar perspectives and generate novel insights that might otherwise {7} hidden. For this reason, many institutions are seeking ways to promote interdisciplinary cooperation. Their objective is not merely to increase productivity but to create conditions in which innovation can genuinely {8}.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['overlooked', 'ignored', 'missed', 'forgotten'], correct: 0, also: [2], explanation: '"easily have been overlooked/missed" — beide möglich.'),
          Question(num: 2, type: QType.mc, options: ['caused', 'resulted', 'led', 'produced'], correct: 2, explanation: '"led to advances" — nur "lead to" passt zu "to".'),
          Question(num: 3, type: QType.mc, options: ['framework', 'structure', 'system', 'model'], correct: 0, also: [3], explanation: '"theoretical framework/model" — beide möglich.'),
          Question(num: 4, type: QType.mc, options: ['prevent', 'inhibit', 'stop', 'avoid'], correct: 1, also: [0], explanation: '"inhibit/prevent innovation" — beide möglich.'),
          Question(num: 5, type: QType.mc, options: ['develop', 'evolve', 'emerge', 'arise'], correct: 3, also: [2], explanation: '"discoveries can arise/emerge" — beide möglich.'),
          Question(num: 6, type: QType.mc, options: ['challenge', 'question', 'dispute', 'oppose'], correct: 0, also: [1], explanation: '"challenge/question assumptions" — beide idiomatisch.'),
          Question(num: 7, type: QType.mc, options: ['stay', 'remain', 'persist', 'continue'], correct: 1, also: [0], explanation: '"remain/stay hidden" — beide möglich.'),
          Question(num: 8, type: QType.mc, options: ['flourish', 'bloom', 'spread', 'expand'], correct: 0, explanation: '"innovation can flourish" = gedeihen.'),
        ],
      ),
      Passage(
        title: 'The Evolution of Language',
        text:
            'Languages are constantly changing, although the pace and nature of that change vary considerably across societies and historical periods. While some people regard linguistic evolution as evidence of decline, linguists generally reject this view and instead consider change to be an inevitable aspect of language development. New words frequently enter a language in response to technological and cultural innovations. Terms that would have seemed incomprehensible a century ago are now widely used and readily understood. At the same time, older expressions may gradually fall out of use and eventually become {1}. Pronunciation also changes over time. Historical records reveal that many words were once spoken quite differently from the way they are today. Such shifts rarely occur suddenly; instead, they tend to spread gradually through populations until they become {2}. Social factors exert a powerful influence on linguistic change. Speakers often adapt their language to signal membership of particular groups or communities. In doing so, they contribute to patterns that may eventually become firmly {3}. Globalisation has further accelerated certain forms of linguistic development. Increased contact between cultures facilitates the exchange of vocabulary and expressions, leading to greater linguistic diversity in some contexts and increased standardisation in others. The effects are often complex and difficult to {4}. Despite concerns occasionally expressed by commentators, linguistic change does not generally threaten communication. On the contrary, it often enables languages to remain responsive to the needs of their users. A language that failed to adapt would struggle to {5} new realities and concepts. Researchers continue to investigate the mechanisms that drive these processes. Advances in digital communication have provided unprecedented opportunities to observe language change in real time and analyse how innovations {6} through social networks. Ultimately, language is both a reflection of society and an active force within it. Understanding how it evolves can therefore provide valuable insights into broader cultural and historical {7}. The study of linguistic change remains one of the most dynamic and intellectually {8} areas of modern research.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['obsolete', 'ancient', 'old', 'historic'], correct: 0, explanation: '"become obsolete" = veralten.'),
          Question(num: 2, type: QType.mc, options: ['accepted', 'established', 'recognised', 'acknowledged'], correct: 1, also: [0], explanation: '"become established/accepted" — beide möglich.'),
          Question(num: 3, type: QType.mc, options: ['rooted', 'embedded', 'fixed', 'planted'], correct: 1, also: [0, 2], explanation: '"firmly embedded/rooted/fixed" — alle kollocieren mit "firmly".'),
          Question(num: 4, type: QType.mc, options: ['predict', 'foresee', 'estimate', 'assume'], correct: 0, also: [1], explanation: '"difficult to predict/foresee" — beide möglich.'),
          Question(num: 5, type: QType.mc, options: ['express', 'describe', 'represent', 'define'], correct: 0, also: [1], explanation: '"express/describe new concepts" — beide möglich.'),
          Question(num: 6, type: QType.mc, options: ['circulate', 'travel', 'move', 'transfer'], correct: 0, also: [1, 2], explanation: '"circulate/travel/move through networks" — mehrere möglich.'),
          Question(num: 7, type: QType.mc, options: ['movements', 'trends', 'directions', 'shifts'], correct: 1, also: [3], explanation: '"historical trends/shifts" — beide möglich.'),
          Question(num: 8, type: QType.mc, options: ['stimulating', 'motivating', 'exciting', 'entertaining'], correct: 0, also: [2], explanation: '"intellectually stimulating/exciting" — beide möglich.'),
        ],
      ),
      Passage(
        title: 'The Power of Habit',
        text:
            'Habits {1} a surprisingly large part of our daily behaviour, often operating without our conscious awareness. Psychologists have long been interested in how habits {2} and why they can be so difficult to change. A habit typically begins with a cue that {3} a particular routine, which is then reinforced by some form of reward. Over time, this loop becomes so automatic that we may {4} out the behaviour without thinking. Although unwanted habits can be frustrating, experts argue that they can be {5} with patience and the right strategy. Rather than trying to eliminate a habit entirely, it is often more effective to {6} the old routine with a healthier alternative. Establishing positive habits can have a profound {7} on long-term well-being. Indeed, many successful people {8} their achievements to small routines repeated consistently over many years.',
        questions: [
          Question(num: 1, type: QType.mc, options: ['constitute', 'make', 'form', 'build'], correct: 0, also: [2], explanation: '"constitute/form a large part" — beide möglich.'),
          Question(num: 2, type: QType.mc, options: ['form', 'develop', 'grow', 'appear'], correct: 0, also: [1], explanation: '"habits form/develop" — beide möglich.'),
          Question(num: 3, type: QType.mc, options: ['triggers', 'causes', 'sparks', 'starts'], correct: 0, also: [2, 3], explanation: '"trigger/spark/start a routine" — mehrere möglich.'),
          Question(num: 4, type: QType.mc, options: ['carry', 'bring', 'take', 'put'], correct: 0, explanation: '"carry out the behaviour" — Phrasal Verb.'),
          Question(num: 5, type: QType.mc, options: ['broken', 'changed', 'altered', 'removed'], correct: 0, also: [1, 2], explanation: '"break/change/alter a habit" — mehrere möglich.'),
          Question(num: 6, type: QType.mc, options: ['replace', 'substitute', 'swap', 'exchange'], correct: 0, explanation: '"replace X with Y" — feste Struktur.'),
          Question(num: 7, type: QType.mc, options: ['effect', 'impact', 'influence', 'bearing'], correct: 0, also: [1, 2], explanation: '"profound effect/impact/influence on" — alle möglich.'),
          Question(num: 8, type: QType.mc, options: ['attribute', 'credit', 'owe', 'ascribe'], correct: 0, also: [2, 3], explanation: '"attribute/owe/ascribe sth to sth" — mehrere möglich.'),
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
      Passage(
        title: 'The Psychology of Waiting',
        text:
            'Most people dislike waiting, whether it is in a queue, at an airport, or for an important decision. Interestingly, research suggests that the experience of waiting depends less on the actual length of time involved and more on how that time is perceived. People tend to become impatient when they feel they have no control {1} the situation. A delay that is explained is generally tolerated better {2} one that appears arbitrary. In addition, uncertainty often makes a wait seem longer than it really is. Another factor is whether individuals are occupied {3} waiting. Studies have shown that people who are given something to do report shorter perceived waiting times than those who are left with nothing {4} occupy their attention. Businesses have become increasingly aware {5} these findings and often design environments that reduce the frustration associated with waiting. Some airports, for example, have found that passengers complain less {6} long walks to baggage claim than about standing still beside a conveyor belt. What all this suggests is that waiting is not merely {7} matter of time. It is also influenced by expectations, emotions, and the extent {8} which people feel engaged.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['over'], explanation: '"have control over sth".'),
          Question(num: 2, type: QType.open, accept: ['than'], explanation: '"tolerated better than" — Vergleich.'),
          Question(num: 3, type: QType.open, accept: ['while', 'when'], explanation: '"occupied while/when waiting".'),
          Question(num: 4, type: QType.open, accept: ['to'], explanation: '"nothing to occupy" — to-Infinitiv.'),
          Question(num: 5, type: QType.open, accept: ['of'], explanation: '"aware of sth".'),
          Question(num: 6, type: QType.open, accept: ['about'], explanation: '"complain about sth".'),
          Question(num: 7, type: QType.open, accept: ['a'], explanation: '"a matter of time".'),
          Question(num: 8, type: QType.open, accept: ['to'], explanation: '"the extent to which".'),
        ],
      ),
      Passage(
        title: 'The Rise of Remote Work',
        text:
            'Remote working was already becoming more common before advances in communication technology made it easier than ever. Today, many employees are able to perform tasks from locations other {1} a traditional office. Supporters argue that remote work allows people to focus {2} effectively and spend less time commuting. It may also contribute {3} a better work–life balance, particularly for those with family responsibilities. However, there are challenges. Employees may feel isolated if they have little contact {4} colleagues. Managers, meanwhile, often need to develop new methods {5} monitoring progress and maintaining team cohesion. Whether remote working continues to expand will depend {6} a variety of factors, including company culture and employee preferences. What seems certain, however, is that organisations are unlikely to return completely {7} the practices that were common in the past. As a result, many experts believe hybrid arrangements, in which employees divide their time {8} home and office, will become increasingly widespread.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['than'], explanation: '"other than" = außer.'),
          Question(num: 2, type: QType.open, accept: ['more'], explanation: '"focus more effectively".'),
          Question(num: 3, type: QType.open, accept: ['to'], explanation: '"contribute to sth".'),
          Question(num: 4, type: QType.open, accept: ['with'], explanation: '"contact with sb".'),
          Question(num: 5, type: QType.open, accept: ['of', 'for'], explanation: '"methods of/for doing sth".'),
          Question(num: 6, type: QType.open, accept: ['on'], explanation: '"depend on sth".'),
          Question(num: 7, type: QType.open, accept: ['to'], explanation: '"return to sth".'),
          Question(num: 8, type: QType.open, accept: ['between'], explanation: '"divide time between A and B".'),
        ],
      ),
      Passage(
        title: 'Why We Forget (Open Cloze)',
        text:
            'Memory is often imagined as a storage system in which information remains unchanged over time. In reality, memories are constantly being modified, and some disappear altogether. One reason {1} forgetting occurs is that information is never fully encoded in the first place. If attention is divided, details may fail to enter long-term memory and therefore cannot be recalled later. Another explanation has to do {2} interference. New experiences can make it difficult to retrieve older memories, while existing knowledge may interfere {3} the learning of new material. Researchers have also found evidence that forgetting can sometimes be beneficial. Without the ability to discard unnecessary information, the brain would struggle to distinguish {4} relevant and irrelevant details. Interestingly, memory is influenced not only {5} what happened but also by what people subsequently hear or read. Witnesses, for example, may become convinced {6} events that never actually took place. Far {7} being a flaw, forgetting appears to be an essential feature of a system designed to adapt {8} changing circumstances.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['why', 'that'], explanation: '"the reason why/that …".'),
          Question(num: 2, type: QType.open, accept: ['with'], explanation: '"have to do with sth".'),
          Question(num: 3, type: QType.open, accept: ['with'], explanation: '"interfere with sth".'),
          Question(num: 4, type: QType.open, accept: ['between'], explanation: '"distinguish between A and B".'),
          Question(num: 5, type: QType.open, accept: ['by'], explanation: '"influenced by sth".'),
          Question(num: 6, type: QType.open, accept: ['of'], explanation: '"convinced of sth".'),
          Question(num: 7, type: QType.open, accept: ['from'], explanation: '"far from being …".'),
          Question(num: 8, type: QType.open, accept: ['to'], explanation: '"adapt to sth".'),
        ],
      ),
      Passage(
        title: 'Urban Green Spaces',
        text:
            'As cities continue to expand, planners are becoming increasingly concerned {1} the availability of green spaces. Parks, gardens, and tree-lined streets provide benefits that extend far beyond their visual appeal. Research has shown that access {2} natural environments can improve mental well-being and encourage physical activity. Green areas also help regulate temperatures, reducing the effects {3} extreme heat during the summer months. Many cities are therefore investing heavily {4} projects designed to increase urban vegetation. Some have introduced green roofs, while others have transformed unused industrial sites {5} public parks. Such initiatives are often expensive, but supporters argue that the long-term advantages outweigh the costs. Residents tend to place a high value {6} attractive public spaces, and property prices frequently rise in areas located close {7} parks. The challenge lies not only in creating these spaces but also in ensuring that they remain accessible {8} all members of the community.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['about', 'with'], explanation: '"concerned about/with sth".'),
          Question(num: 2, type: QType.open, accept: ['to'], explanation: '"access to sth".'),
          Question(num: 3, type: QType.open, accept: ['of'], explanation: '"the effects of sth".'),
          Question(num: 4, type: QType.open, accept: ['in'], explanation: '"invest in sth".'),
          Question(num: 5, type: QType.open, accept: ['into'], explanation: '"transform sth into sth".'),
          Question(num: 6, type: QType.open, accept: ['on'], explanation: '"place value on sth".'),
          Question(num: 7, type: QType.open, accept: ['to'], explanation: '"close to sth".'),
          Question(num: 8, type: QType.open, accept: ['to'], explanation: '"accessible to sb".'),
        ],
      ),
      Passage(
        title: 'Artificial Intelligence and Creativity',
        text:
            'For many years, creativity was regarded {1} a uniquely human ability. Recent developments in artificial intelligence, however, have challenged this assumption. Modern systems are capable {2} generating text, images, and music that can appear remarkably original. This has led some observers to question whether machines should be considered creative {3} their own right. Others argue that such systems merely recombine existing material and therefore cannot be compared {4} human creators. According to this view, genuine creativity depends {5} intention, understanding, and personal experience. Whatever position one takes, there is little doubt {6} artificial intelligence will continue to influence artistic production. Some artists already use these tools as part of their creative process rather than seeing them {7} competitors. As technology develops further, the debate is likely to centre not {8} whether machines can create, but on how society chooses to define creativity itself.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['as'], explanation: '"be regarded as sth".'),
          Question(num: 2, type: QType.open, accept: ['of'], explanation: '"capable of doing sth".'),
          Question(num: 3, type: QType.open, accept: ['in'], explanation: '"in one’s own right" — feste Wendung.'),
          Question(num: 4, type: QType.open, accept: ['with', 'to'], explanation: '"compared with/to sb".'),
          Question(num: 5, type: QType.open, accept: ['on', 'upon'], explanation: '"depend on/upon sth".'),
          Question(num: 6, type: QType.open, accept: ['that'], explanation: '"there is little doubt that …".'),
          Question(num: 7, type: QType.open, accept: ['as'], explanation: '"see sb as sth".'),
          Question(num: 8, type: QType.open, accept: ['on', 'upon'], explanation: '"centre on/upon sth".'),
        ],
      ),
      Passage(
        title: 'The Importance of Sleep',
        text:
            'Sleep plays a vital role {1} maintaining both physical and mental health. Despite this, many people fail to get the amount {2} sleep they need. One reason {3} this is the increasing use of electronic devices late at night, which can interfere {4} the body’s natural rhythms. Experts recommend that adults aim {5} at least seven hours of sleep per night. Going without sufficient rest can have serious consequences, ranging {6} reduced concentration to a weakened immune system. {7} addition, chronic sleep deprivation has been linked to a number of long-term health problems. For this reason, specialists increasingly emphasise the importance {8} good sleep habits.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['in'], explanation: '"play a role in doing sth".'),
          Question(num: 2, type: QType.open, accept: ['of'], explanation: '"the amount of sth".'),
          Question(num: 3, type: QType.open, accept: ['for', 'behind'], explanation: '"the reason for/behind sth".'),
          Question(num: 4, type: QType.open, accept: ['with'], explanation: '"interfere with sth".'),
          Question(num: 5, type: QType.open, accept: ['for', 'at'], explanation: '"aim for/at sth".'),
          Question(num: 6, type: QType.open, accept: ['from'], explanation: '"ranging from X to Y".'),
          Question(num: 7, type: QType.open, accept: ['in'], explanation: '"In addition" — Satzeinstieg.'),
          Question(num: 8, type: QType.open, accept: ['of'], explanation: '"the importance of sth".'),
        ],
      ),
      Passage(
        title: 'Learning a Second Language',
        text:
            'Learning a second language can be challenging, but it offers benefits that go far {1} improved communication. Research has shown that bilingual individuals often perform better {2} certain cognitive tasks. Far {3} being a disadvantage, growing up with two languages appears to strengthen the brain. Many learners worry {4} making mistakes, yet errors are an essential part {5} the learning process. Rather {6} avoiding them, students should treat them as opportunities to improve. Success usually depends {7} regular practice and a willingness to take risks. {8} the end, those who persevere are generally rewarded for their efforts.',
        questions: [
          Question(num: 1, type: QType.open, accept: ['beyond'], explanation: '"go beyond sth".'),
          Question(num: 2, type: QType.open, accept: ['on', 'at'], explanation: '"perform well on/at tasks".'),
          Question(num: 3, type: QType.open, accept: ['from'], explanation: '"far from being …".'),
          Question(num: 4, type: QType.open, accept: ['about'], explanation: '"worry about sth".'),
          Question(num: 5, type: QType.open, accept: ['of'], explanation: '"part of sth".'),
          Question(num: 6, type: QType.open, accept: ['than'], explanation: '"rather than".'),
          Question(num: 7, type: QType.open, accept: ['on', 'upon'], explanation: '"depend on/upon sth".'),
          Question(num: 8, type: QType.open, accept: ['in'], explanation: '"in the end" — feste Wendung.'),
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
