import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

/// Gespeicherter Bestwert pro Kategorie.
class ScoreEntry {
  final double pct;
  final bool passed;
  final double best;
  final int attempts;
  final int when;

  ScoreEntry({required this.pct, required this.passed, required this.best, required this.attempts, required this.when});

  Map<String, dynamic> toJson() => {'pct': pct, 'passed': passed, 'best': best, 'attempts': attempts, 'when': when};

  factory ScoreEntry.fromJson(Map<String, dynamic> j) => ScoreEntry(
        pct: (j['pct'] as num?)?.toDouble() ?? 0,
        passed: j['passed'] as bool? ?? false,
        best: (j['best'] as num?)?.toDouble() ?? (j['pct'] as num?)?.toDouble() ?? 0,
        attempts: (j['attempts'] as num?)?.toInt() ?? 0,
        when: (j['when'] as num?)?.toInt() ?? 0,
      );
}

/// Persistenz der Ergebnisse via shared_preferences.
class ScoreStore {
  static const _key = 'cae_trainer_scores_v1';

  static Future<Map<String, ScoreEntry>> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_key);
    if (raw == null) return {};
    try {
      final map = jsonDecode(raw) as Map<String, dynamic>;
      return map.map((k, v) => MapEntry(k, ScoreEntry.fromJson(v as Map<String, dynamic>)));
    } catch (_) {
      return {};
    }
  }

  static Future<void> save(String catId, double pct, bool passed) async {
    final prefs = await SharedPreferences.getInstance();
    final all = await load();
    final prev = all[catId];
    final best = prev == null ? pct : (prev.best > pct ? prev.best : pct);
    all[catId] = ScoreEntry(
      pct: pct,
      passed: passed,
      best: best,
      attempts: (prev?.attempts ?? 0) + 1,
      when: DateTime.now().millisecondsSinceEpoch,
    );
    final encoded = jsonEncode(all.map((k, v) => MapEntry(k, v.toJson())));
    await prefs.setString(_key, encoded);
  }
}
