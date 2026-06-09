import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cae_trainer/main.dart';
import 'package:cae_trainer/data.dart';

void main() {
  testWidgets('Home zeigt Titel und alle vier Kategorien', (WidgetTester tester) async {
    // Großes Test-Fenster, damit die ListView alle Karten rendert.
    tester.view.physicalSize = const Size(1000, 3000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const CaeTrainerApp());
    await tester.pumpAndSettle();

    expect(find.textContaining('Use of English', findRichText: true), findsWidgets);
    expect(find.textContaining('Übungs-Trainer'), findsOneWidget);
    for (final c in kCategories) {
      expect(find.text(c.name), findsOneWidget);
    }
  });

  testWidgets('Antippen einer Kategorie öffnet den Quiz-Screen', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const CaeTrainerApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Multiple-Choice Cloze'));
    await tester.pumpAndSettle();

    expect(find.text('Weiter →'), findsOneWidget);
  });
}
