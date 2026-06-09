import 'package:flutter/material.dart';
import '../logic.dart';
import '../models.dart';
import '../score_store.dart';
import '../theme.dart';
import '../widgets/common.dart';
import 'results_screen.dart';

class QuizScreen extends StatefulWidget {
  final Category category;
  const QuizScreen({required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late QuizSession session;
  final Map<int, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    session = QuizSession.build(widget.category);
  }

  @override
  void dispose() {
    for (final c in _controllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  TextEditingController _controllerFor(Question q) {
    return _controllers.putIfAbsent(q.num, () {
      final c = TextEditingController(text: (session.answers[q.num] as String?) ?? '');
      return c;
    });
  }

  void _setText(Question q, String v) {
    session.answers[q.num] = v;
    setState(() {});
  }

  void _selectMc(Question q, int i) {
    session.answers[q.num] = i;
    setState(() {});
  }

  void _next() {
    if (!session.hasAnswer(session.current)) return;
    if (session.isLast) {
      _finish();
    } else {
      setState(() => session.idx++);
    }
  }

  void _prev() {
    if (session.idx == 0) {
      _confirmQuit();
    } else {
      setState(() => session.idx--);
    }
  }

  Future<void> _confirmQuit() async {
    final ok = await showDialog<bool>(
      context: context,
      barrierColor: const Color(0xA804080D),
      builder: (ctx) => Dialog(
        backgroundColor: AppColors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: AppColors.rule),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Test abbrechen?',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700, color: AppColors.ink)),
              const SizedBox(height: 10),
              const Text('Dein bisheriger Fortschritt in dieser Session geht verloren.',
                  style: TextStyle(fontSize: 15, color: AppColors.inkSoft, height: 1.5)),
              const SizedBox(height: 22),
              Row(
                children: [
                  Expanded(child: NavButton(label: 'Weiter üben', onTap: () => Navigator.pop(ctx, false))),
                  const SizedBox(width: 11),
                  Expanded(child: NavButton(label: 'Abbrechen', primary: true, onTap: () => Navigator.pop(ctx, true))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    if (ok == true && mounted) Navigator.of(context).pop();
  }

  Future<void> _finish() async {
    final correct = session.correctCount;
    final total = session.total;
    final pct = correct / total;
    final passed = pct >= kPassThreshold;
    await ScoreStore.save(session.cat.id, pct, passed);
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => ResultsScreen(
          category: session.cat,
          questions: session.questions,
          answers: Map.of(session.answers),
          correct: correct,
          total: total,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final q = session.current;
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: Column(
              children: [
                _topbar(q),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      if (session.passage != null) _passagePane(q),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
                        child: _questionBody(q),
                      ),
                    ],
                  ),
                ),
                _navbar(q),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ---------- Topbar ----------
  Widget _topbar(Question q) {
    final c = session.cat;
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 13),
      decoration: const BoxDecoration(
        color: AppColors.surface2,
        border: Border(bottom: BorderSide(color: AppColors.rule)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _IconButton(icon: Icons.close, onTap: _confirmQuit),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(c.shortName.toUpperCase(),
                            style: eyebrowStyle(color: AppColors.accent, size: 11)),
                        Text('${session.idx + 1}/${session.total}',
                            style: const TextStyle(
                                fontFamily: AppColors.mono, fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.inkSoft)),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(c.name,
                        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.ink)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 13),
          Row(
            children: List.generate(session.total, (i) {
              Color col = AppColors.surface3;
              double op = 1;
              if (i < session.idx) {
                col = AppColors.accent;
              } else if (i == session.idx) {
                col = AppColors.accent;
                op = 0.45;
              }
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: i == session.total - 1 ? 0 : 5),
                  child: Opacity(
                    opacity: op,
                    child: Container(
                      height: 4,
                      decoration: BoxDecoration(color: col, borderRadius: BorderRadius.circular(99)),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  // ---------- Passage ----------
  Widget _passagePane(Question active) {
    final p = session.passage!;
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.34),
      decoration: const BoxDecoration(
        color: AppColors.surface2,
        border: Border(bottom: BorderSide(color: AppColors.rule)),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(p.title.toUpperCase(), style: eyebrowStyle(size: 10.5)),
            const SizedBox(height: 12),
            _passageText(p, active.num),
          ],
        ),
      ),
    );
  }

  Widget _passageText(Passage p, int activeNum) {
    final spans = <InlineSpan>[];
    final regex = RegExp(r'\{(\d+)\}');
    int last = 0;
    for (final m in regex.allMatches(p.text)) {
      if (m.start > last) {
        spans.add(TextSpan(text: p.text.substring(last, m.start)));
      }
      final num = int.parse(m.group(1)!);
      final q = p.questions.firstWhere((x) => x.num == num);
      spans.add(WidgetSpan(
        alignment: PlaceholderAlignment.middle,
        child: _gapChip(q, activeNum),
      ));
      last = m.end;
    }
    if (last < p.text.length) spans.add(TextSpan(text: p.text.substring(last)));

    return Text.rich(
      TextSpan(
        style: const TextStyle(fontSize: 15.5, height: 1.95, color: AppColors.inkSoft),
        children: spans,
      ),
    );
  }

  Widget _gapChip(Question q, int activeNum) {
    final ans = session.answers[q.num];
    String state = 'empty';
    if (q.num == activeNum) {
      state = 'active';
    } else if (q.type == QType.mc ? ans != null : (ans != null && ans.toString().trim().isNotEmpty)) {
      state = 'answered';
    }

    String label;
    if (state == 'answered') {
      label = q.type == QType.mc ? q.options![ans as int] : ans.toString().trim();
    } else if (q.type == QType.word) {
      label = '${q.num} · ${q.base}';
    } else {
      label = '${q.num}';
    }

    Color bg = AppColors.surface3, border = AppColors.ruleStrong, fg = AppColors.inkSoft;
    if (state == 'answered') {
      bg = AppColors.correctBg;
      border = AppColors.correctBd;
      fg = AppColors.correct;
    } else if (state == 'active') {
      bg = AppColors.accentSoft;
      border = AppColors.accent;
      fg = AppColors.accent;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 2),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(99),
        border: Border.all(color: border),
      ),
      child: Text(
        label,
        style: TextStyle(fontFamily: AppColors.mono, fontSize: 12.5, fontWeight: FontWeight.w600, color: fg),
      ),
    );
  }

  // ---------- Question body ----------
  Widget _questionBody(Question q) {
    switch (q.type) {
      case QType.mc:
        return _mcBody(q);
      case QType.open:
        return _openBody(q);
      case QType.word:
        return _wordBody(q);
      case QType.transform:
        return _transformBody(q);
    }
  }

  Widget _eyebrow(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 13),
        child: Text(text.toUpperCase(), style: eyebrowStyle(size: 10.5)),
      );

  Widget _prompt(String before, String gap) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 21, height: 1.28, fontWeight: FontWeight.w700, color: AppColors.ink),
            children: [
              TextSpan(text: before),
              TextSpan(text: gap, style: const TextStyle(color: AppColors.accent)),
              const TextSpan(text: '.'),
            ],
          ),
        ),
      );

  Widget _mcBody(Question q) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _eyebrow('${session.cat.shortName} · Multiple-Choice'),
        _prompt('Wähle das beste Wort für Lücke ', '(${q.num})'),
        ...List.generate(q.options!.length, (i) {
          final sel = session.answers[q.num] == i;
          final letter = 'ABCD'[i];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _OptionTile(
              letter: letter,
              text: q.options![i],
              selected: sel,
              onTap: () => _selectMc(q, i),
            ),
          );
        }),
      ],
    );
  }

  Widget _openBody(Question q) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _eyebrow('${session.cat.shortName} · Open Cloze'),
        _prompt('Ein Wort für Lücke ', '(${q.num})'),
        const Padding(
          padding: EdgeInsets.only(bottom: 14),
          child: Text('Meist Präpositionen, Phrasal-Verb-Partikel oder Strukturwörter.',
              style: TextStyle(fontSize: 13, color: AppColors.inkFaint)),
        ),
        _input(q, 'ein Wort…'),
      ],
    );
  }

  Widget _wordBody(Question q) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _eyebrow('${session.cat.shortName} · Word Formation'),
        _prompt('Bilde die richtige Form für Lücke ', '(${q.num})'),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.surface3,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: AppColors.ruleStrong),
                ),
                child: Text(q.base!,
                    style: const TextStyle(
                        fontFamily: AppColors.mono, fontSize: 13, fontWeight: FontWeight.w700, letterSpacing: 0.8, color: AppColors.ink)),
              ),
              const SizedBox(width: 12),
              const Icon(Icons.arrow_forward, size: 20, color: AppColors.inkFaint),
            ],
          ),
        ),
        _input(q, 'umgeformtes Wort…'),
      ],
    );
  }

  Widget _transformBody(Question q) {
    final gapParts = q.gapped!.split(RegExp('_+'));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _eyebrow('${session.cat.shortName} · Key Word Transformation'),
        Container(
          margin: const EdgeInsets.only(bottom: 18),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.rule),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _tLabel('Original'),
              Text(q.original!, style: const TextStyle(fontSize: 15.5, height: 1.5, color: AppColors.inkSoft)),
              const SizedBox(height: 16),
              _tLabel('Schlüsselwort'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(color: AppColors.accent, borderRadius: BorderRadius.circular(6)),
                child: Text(q.keyword!,
                    style: const TextStyle(
                        fontFamily: AppColors.mono, fontSize: 14, fontWeight: FontWeight.w700, letterSpacing: 0.8, color: AppColors.onAccent)),
              ),
              const SizedBox(height: 16),
              _tLabel('Vervollständige'),
              Text.rich(
                TextSpan(
                  style: const TextStyle(fontSize: 16, height: 1.65, color: AppColors.ink),
                  children: [
                    TextSpan(text: gapParts.isNotEmpty ? gapParts.first : ''),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.accentSoft,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: AppColors.accent, style: BorderStyle.solid),
                        ),
                        child: const Text('⟨ 2–5 Wörter ⟩',
                            style: TextStyle(fontFamily: AppColors.mono, fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.accent)),
                      ),
                    ),
                    TextSpan(text: gapParts.length > 1 ? gapParts.sublist(1).join('') : ''),
                  ],
                ),
              ),
            ],
          ),
        ),
        _input(q, '2–5 Wörter…'),
      ],
    );
  }

  Widget _tLabel(String t) => Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(t.toUpperCase(), style: eyebrowStyle(size: 9.5)),
      );

  Widget _input(Question q, String hint) {
    final controller = _controllerFor(q);
    return TextField(
      controller: controller,
      onChanged: (v) => _setText(q, v),
      onSubmitted: (_) => _next(),
      autocorrect: false,
      enableSuggestions: false,
      textCapitalization: TextCapitalization.none,
      style: const TextStyle(fontSize: 17, color: AppColors.ink),
      cursorColor: AppColors.accent,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.inkFaint),
        filled: true,
        fillColor: AppColors.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(color: AppColors.ruleStrong),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(color: AppColors.accent, width: 2),
        ),
      ),
    );
  }

  // ---------- Navbar ----------
  Widget _navbar(Question q) {
    final canNext = session.hasAnswer(q);
    final prevLabel = session.idx == 0 ? '✕ Beenden' : '← Zurück';
    final nextLabel = session.isLast ? 'Auswerten ✓' : 'Weiter →';
    return Container(
      padding: EdgeInsets.fromLTRB(20, 13, 20, 13 + MediaQuery.of(context).padding.bottom),
      decoration: const BoxDecoration(
        color: AppColors.surface2,
        border: Border(top: BorderSide(color: AppColors.rule)),
      ),
      child: Row(
        children: [
          Expanded(child: NavButton(label: prevLabel, onTap: _prev)),
          const SizedBox(width: 11),
          Expanded(child: NavButton(label: nextLabel, primary: true, enabled: canNext, onTap: _next)),
        ],
      ),
    );
  }
}

// ===================== Shared widgets =====================

class _IconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _IconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(9),
      child: InkWell(
        borderRadius: BorderRadius.circular(9),
        onTap: onTap,
        child: Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: AppColors.rule),
          ),
          child: Icon(icon, size: 22, color: AppColors.inkSoft),
        ),
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  final String letter;
  final String text;
  final bool selected;
  final VoidCallback onTap;
  const _OptionTile({required this.letter, required this.text, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.accentSoft : AppColors.surface,
      borderRadius: BorderRadius.circular(9),
      child: InkWell(
        borderRadius: BorderRadius.circular(9),
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 54),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: selected ? AppColors.accent : AppColors.rule, width: selected ? 2 : 1),
          ),
          child: Row(
            children: [
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: selected ? AppColors.accent : AppColors.ruleStrong, width: 2),
                ),
                child: selected
                    ? Center(
                        child: Container(
                          width: 11,
                          height: 11,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.accent),
                        ),
                      )
                    : null,
              ),
              const SizedBox(width: 13),
              Text(letter,
                  style: TextStyle(
                      fontFamily: AppColors.mono,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: selected ? AppColors.accent : AppColors.inkFaint)),
              const SizedBox(width: 13),
              Expanded(child: Text(text, style: const TextStyle(fontSize: 16, color: AppColors.ink))),
            ],
          ),
        ),
      ),
    );
  }
}
