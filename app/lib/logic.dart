import 'dart:math';
import 'models.dart';

const double kPassThreshold = 0.6;

/// Normalisiert eine Antwort (Kleinschreibung, Smart-Quotes, Whitespace).
String normalize(String s) {
  return s
      .toLowerCase()
      .replaceAll(RegExp('[‘’‚‛′‵]'), "'")
      .replaceAll(RegExp('[“”″]'), '"')
      .trim()
      .replaceAll(RegExp(r'\s+'), ' ');
}

/// Prüft eine Antwort gegen die Lösung.
bool isCorrect(Question q, Object? answer) {
  if (q.type == QType.mc) return answer == q.correct;
  if (answer == null || answer.toString().trim().isEmpty) return false;
  final n = normalize(answer.toString());
  return (q.accept ?? const []).any((acc) => normalize(acc) == n);
}

/// Notenband + Verdikt analog zur Web-Version.
({String grade, String verdict}) gradeBand(double pct) {
  if (pct >= 0.85) {
    return (grade: 'A — Excellent', verdict: 'Sehr starkes Ergebnis. Du bewegst dich auf C1-Bestnote / C2-Niveau zu.');
  }
  if (pct >= 0.75) {
    return (grade: 'B — Good Pass', verdict: 'Solides C1. Komfortabel über der Bestehensgrenze.');
  }
  if (pct >= 0.60) {
    return (grade: 'C — Pass', verdict: 'Bestanden, aber knapp. Diese Kategorie noch ein paar Mal wiederholen.');
  }
  if (pct >= 0.50) {
    return (grade: 'Knapp daneben', verdict: 'Sehr nah dran. Mit ein paar Wiederholungen sind die 60 % erreichbar.');
  }
  return (grade: 'Noch nicht', verdict: 'Empfehlung: das Thema systematisch durcharbeiten (z. B. mit Objective Advanced).');
}

/// Eine laufende Übungs-Session.
class QuizSession {
  final Category cat;
  final Passage? passage;
  final List<Question> questions;
  final Map<int, Object?> answers = {};
  int idx = 0;

  QuizSession({required this.cat, required this.passage, required this.questions});

  factory QuizSession.build(Category c) {
    if (c.type == QType.transform) {
      final shuffled = List<Question>.from(c.pool!)..shuffle(Random());
      final picked = shuffled
          .take(c.sessionLength)
          .toList()
          .asMap()
          .entries
          .map((e) => e.value.withNum(e.key + 1))
          .toList();
      return QuizSession(cat: c, passage: null, questions: picked);
    }
    final passage = c.passages![Random().nextInt(c.passages!.length)];
    return QuizSession(cat: c, passage: passage, questions: passage.questions);
  }

  Question get current => questions[idx];
  int get total => questions.length;
  bool get isLast => idx == total - 1;

  bool hasAnswer(Question q) {
    final a = answers[q.num];
    if (q.type == QType.mc) return a != null;
    return a != null && a.toString().trim().isNotEmpty;
  }

  int get correctCount => questions.where((q) => isCorrect(q, answers[q.num])).length;
}
