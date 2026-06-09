/// Datenmodelle für den CAE Trainer.
///
/// Vier Aufgabentypen entsprechend dem Cambridge C1 Advanced
/// Reading & Use of English Paper.
enum QType { mc, open, word, transform }

class Question {
  /// Position im Lückentext bzw. laufende Nummer in der Session.
  final int num;
  final QType type;
  final String explanation;

  // Multiple-Choice (Part 1)
  final List<String>? options;
  final int? correct;

  /// Weitere ebenfalls akzeptierte MC-Indizes (neben [correct]).
  final List<int>? also;

  // Open Cloze / Word Formation / Transform — akzeptierte Lösungen
  final List<String>? accept;

  // Word Formation (Part 3)
  final String? base;

  // Key Word Transformation (Part 4)
  final String? original;
  final String? keyword;
  final String? gapped;

  const Question({
    required this.num,
    required this.type,
    required this.explanation,
    this.options,
    this.correct,
    this.also,
    this.accept,
    this.base,
    this.original,
    this.keyword,
    this.gapped,
  });

  Question withNum(int n) => Question(
        num: n,
        type: type,
        explanation: explanation,
        options: options,
        correct: correct,
        also: also,
        accept: accept,
        base: base,
        original: original,
        keyword: keyword,
        gapped: gapped,
      );
}

class Passage {
  final String title;
  final String text;
  final List<Question> questions;
  const Passage({required this.title, required this.text, required this.questions});
}

class Category {
  final String id;
  final String shortName;
  final String name;
  final QType type;
  final String icon;
  final int sessionLength;
  final String description;
  final List<Passage>? passages;
  final List<Question>? pool;

  const Category({
    required this.id,
    required this.shortName,
    required this.name,
    required this.type,
    required this.icon,
    required this.sessionLength,
    required this.description,
    this.passages,
    this.pool,
  });

  /// Gesamtzahl verfügbarer Fragen (für die Pool-Anzeige).
  int get poolSize {
    if (passages != null) {
      return passages!.fold(0, (n, p) => n + p.questions.length);
    }
    return pool!.length;
  }
}
