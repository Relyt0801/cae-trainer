import 'package:flutter/material.dart';
import '../data.dart';
import '../logic.dart';
import '../models.dart';
import '../score_store.dart';
import '../theme.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, ScoreEntry> _scores = {};

  @override
  void initState() {
    super.initState();
    _reload();
  }

  Future<void> _reload() async {
    final s = await ScoreStore.load();
    if (mounted) setState(() => _scores = s);
  }

  Future<void> _openCategory(Category c) async {
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => QuizScreen(category: c)),
    );
    _reload();
  }

  @override
  Widget build(BuildContext context) {
    const maxW = 760.0;
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxW),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _header(),
                const SizedBox(height: 18),
                ...kCategories.map(_card),
                const SizedBox(height: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 26, 20, 24),
      decoration: const BoxDecoration(
        color: AppColors.surface2,
        border: Border(bottom: BorderSide(color: AppColors.rule)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('CAMBRIDGE C1 ADVANCED', style: eyebrowStyle(color: AppColors.accent, size: 11)),
          const SizedBox(height: 12),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 32,
                height: 1.08,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.5,
                color: AppColors.ink,
              ),
              children: [
                TextSpan(text: 'Reading & '),
                TextSpan(text: 'Use of English', style: TextStyle(color: AppColors.accent)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Text('Übungs-Trainer · Bestehen ab 60 %',
              style: TextStyle(fontSize: 15, color: AppColors.inkSoft)),
        ],
      ),
    );
  }

  Widget _card(Category c) {
    final s = _scores[c.id];
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 13),
      child: Material(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => _openCategory(c),
          child: Container(
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.rule),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _iconChip(c.icon),
                const SizedBox(width: 15),
                Expanded(child: _cardMain(c, s)),
                const Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Icon(Icons.chevron_right, color: AppColors.inkFaint),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _iconChip(String label) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.surface3,
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: AppColors.ruleStrong),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: const TextStyle(
          fontFamily: AppColors.mono,
          fontSize: 13,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: AppColors.accent,
        ),
      ),
    );
  }

  Widget _cardMain(Category c, ScoreEntry? s) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${c.shortName} · ${c.sessionLength} Q · Pool ${c.poolSize}'.toUpperCase(),
            style: eyebrowStyle(size: 10.5)),
        const SizedBox(height: 5),
        Text(c.name,
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w700, height: 1.2, color: AppColors.ink)),
        const SizedBox(height: 4),
        Text(c.description, style: const TextStyle(fontSize: 13.5, color: AppColors.inkSoft, height: 1.45)),
        const SizedBox(height: 18),
        _progress(s),
      ],
    );
  }

  Widget _progress(ScoreEntry? s) {
    final hasScore = s != null;
    final best = hasScore ? s.best : 0.0;
    final bp = (best * 100).round();
    final passed = best >= kPassThreshold;
    final Color barColor = !hasScore
        ? Colors.transparent
        : passed
            ? AppColors.correct
            : AppColors.accent;
    final Color pctColor = !hasScore
        ? AppColors.inkFaint
        : passed
            ? AppColors.correct
            : AppColors.accent;
    final status = !hasScore
        ? 'Noch nicht geübt'
        : passed
            ? '✓ Bestanden'
            : 'Ziel: 60 %';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LayoutBuilder(builder: (context, cons) {
          final w = cons.maxWidth;
          return SizedBox(
            height: 8,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.surface3,
                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: best.clamp(0.0, 1.0).toDouble(),
                  child: Container(
                    decoration: BoxDecoration(color: barColor, borderRadius: BorderRadius.circular(99)),
                  ),
                ),
                // 60 %-Marke
                Positioned(
                  left: w * 0.6,
                  top: -3,
                  bottom: -3,
                  child: Container(width: 2, color: AppColors.ruleStrong),
                ),
              ],
            ),
          );
        }),
        const SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text('$bp%',
                style: TextStyle(fontFamily: AppColors.mono, fontSize: 13, fontWeight: FontWeight.w600, color: pctColor)),
            Text(status.toUpperCase(), style: eyebrowStyle(size: 9.5)),
          ],
        ),
      ],
    );
  }
}
