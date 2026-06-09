import 'package:flutter/material.dart';
import '../logic.dart';
import '../models.dart';
import '../theme.dart';
import '../widgets/common.dart';
import 'quiz_screen.dart';

class ResultsScreen extends StatelessWidget {
  final Category category;
  final List<Question> questions;
  final Map<int, Object?> answers;
  final int correct;
  final int total;

  const ResultsScreen({
    required this.category,
    required this.questions,
    required this.answers,
    required this.correct,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final pct = correct / total;
    final passed = pct >= kPassThreshold;
    final band = gradeBand(pct);

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: Column(
              children: [
                _topbar(context),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      _hero(pct, passed, band),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 24, 20, 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 12),
                                decoration: const BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.rule)),
                                ),
                                child: Text('Fragen im Überblick'.toUpperCase(), style: eyebrowStyle(size: 11)),
                              ),
                            ),
                            ...questions.map(_reviewItem),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                _navbar(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _topbar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 13),
      decoration: const BoxDecoration(
        color: AppColors.surface2,
        border: Border(bottom: BorderSide(color: AppColors.rule)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(9),
            child: InkWell(
              borderRadius: BorderRadius.circular(9),
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: AppColors.rule),
                ),
                child: const Icon(Icons.close, size: 22, color: AppColors.inkSoft),
              ),
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${category.shortName} · Auswertung'.toUpperCase(),
                    style: eyebrowStyle(color: AppColors.accent, size: 11)),
                const SizedBox(height: 2),
                Text(category.name, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.ink)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _hero(double pct, bool passed, ({String grade, String verdict}) band) {
    final pctRound = (pct * 100).round();
    final main = passed ? AppColors.correct : AppColors.wrong;
    final bgc = passed ? AppColors.correctBg : AppColors.wrongBg;
    final bdc = passed ? AppColors.correctBd : AppColors.wrongBd;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 34, 20, 30),
      decoration: const BoxDecoration(
        color: AppColors.surface2,
        border: Border(bottom: BorderSide(color: AppColors.rule)),
      ),
      child: Column(
        children: [
          Text('${category.shortName} · ${category.name}'.toUpperCase(),
              textAlign: TextAlign.center, style: eyebrowStyle(color: AppColors.accent, size: 11)),
          const SizedBox(height: 8),
          const Text('Ergebnis',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, letterSpacing: -0.5, color: AppColors.ink)),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 18),
            decoration: BoxDecoration(
              color: bgc,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: bdc, width: 1.5),
            ),
            child: Column(
              children: [
                Text('$correct/$total',
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.w800, height: 1, letterSpacing: -0.5, color: main)),
                const SizedBox(height: 8),
                Text('$pctRound% · Schwelle 60%',
                    style: TextStyle(fontFamily: AppColors.mono, fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 0.7, color: main)),
              ],
            ),
          ),
          const SizedBox(height: 22),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              children: [
                LayoutBuilder(builder: (context, cons) {
                  return SizedBox(
                    height: 10,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(decoration: BoxDecoration(color: AppColors.surface3, borderRadius: BorderRadius.circular(99))),
                        FractionallySizedBox(
                          widthFactor: pct.clamp(0.0, 1.0).toDouble(),
                          child: Container(decoration: BoxDecoration(color: main, borderRadius: BorderRadius.circular(99))),
                        ),
                        Positioned(
                          left: cons.maxWidth * 0.6,
                          top: -4,
                          bottom: -4,
                          child: Container(width: 2, color: AppColors.ruleStrong),
                        ),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('0%', style: eyebrowStyle(size: 9.5)),
                    Text('60% BESTEHEN', style: eyebrowStyle(size: 9.5)),
                    Text('100%', style: eyebrowStyle(size: 9.5)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
            decoration: BoxDecoration(
              color: bgc,
              borderRadius: BorderRadius.circular(99),
              border: Border.all(color: bdc),
            ),
            child: Text(
              '${passed ? "✓ Bestanden" : "✗ Nicht bestanden"} · ${band.grade}'.toUpperCase(),
              style: TextStyle(fontFamily: AppColors.mono, fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 1.0, color: main),
            ),
          ),
          const SizedBox(height: 14),
          Text(band.verdict,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15, height: 1.55, color: AppColors.inkSoft)),
        ],
      ),
    );
  }

  Widget _reviewItem(Question q) {
    final ans = answers[q.num];
    final ok = isCorrect(q, ans);
    final where = q.type == QType.transform
        ? 'Transformation (${q.num}) · ${q.keyword}'
        : 'Lücke (${q.num})';

    String correctTxt, yourTxt;
    if (q.type == QType.mc) {
      final idxs = <int>[q.correct!, ...?q.also];
      correctTxt = idxs.map((i) => '${'ABCD'[i]} — ${q.options![i]}').join(' / ');
      final ai = ans as int?;
      yourTxt = ai != null ? '${'ABCD'[ai]} — ${q.options![ai]}' : '—';
    } else {
      correctTxt = (q.accept ?? const []).join(' / ');
      yourTxt = (ans != null && ans.toString().trim().isNotEmpty) ? ans.toString().trim() : '—';
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.rule))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 22,
                child: Text('${q.num}',
                    style: const TextStyle(fontFamily: AppColors.mono, fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.inkFaint)),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: ok ? AppColors.correctBg : AppColors.wrongBg,
                  borderRadius: BorderRadius.circular(99),
                  border: Border.all(color: ok ? AppColors.correctBd : AppColors.wrongBd),
                ),
                child: Text(ok ? '✓ Richtig'.toUpperCase() : '✗ Falsch'.toUpperCase(),
                    style: TextStyle(
                        fontFamily: AppColors.mono,
                        fontSize: 10.5,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                        color: ok ? AppColors.correct : AppColors.wrong)),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Text(where, style: const TextStyle(fontFamily: AppColors.mono, fontSize: 11, color: AppColors.inkFaint)),
          const SizedBox(height: 6),
          if (ok)
            Text('Richtig: $correctTxt',
                style: const TextStyle(fontSize: 15, height: 1.5, fontWeight: FontWeight.w600, color: AppColors.correct))
          else
            Text.rich(
              TextSpan(
                style: const TextStyle(fontSize: 15, height: 1.5),
                children: [
                  TextSpan(
                    text: 'Du: $yourTxt',
                    style: const TextStyle(color: AppColors.wrong, decoration: TextDecoration.lineThrough, decorationColor: AppColors.wrong),
                  ),
                  const TextSpan(text: '   ·   ', style: TextStyle(color: AppColors.inkFaint)),
                  TextSpan(text: 'Richtig: $correctTxt', style: const TextStyle(color: AppColors.correct, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          const SizedBox(height: 4),
          Text(q.explanation, style: const TextStyle(fontSize: 14, height: 1.5, color: AppColors.inkSoft)),
        ],
      ),
    );
  }

  Widget _navbar(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 13, 20, 13 + MediaQuery.of(context).padding.bottom),
      decoration: const BoxDecoration(
        color: AppColors.surface2,
        border: Border(top: BorderSide(color: AppColors.rule)),
      ),
      child: Row(
        children: [
          Expanded(child: NavButton(label: 'Zur Übersicht', onTap: () => Navigator.of(context).pop())),
          const SizedBox(width: 11),
          Expanded(
            child: NavButton(
              label: 'Wiederholen ↻',
              primary: true,
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => QuizScreen(category: category)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
