# CAE Trainer — Flutter App

Native App (Android / iOS) für **Cambridge C1 Advanced — Reading & Use of English**.
Portierung der Web-Version nach Flutter: gleiche Fragenbank, gleiche Logik,
gleiches Dark-Mode-Corporate-Design. Deutsche Oberfläche, englische Inhalte.

## Schnellstart (Konsole)

Voraussetzung: [Flutter SDK](https://docs.flutter.dev/get-started/install) installiert
(`flutter doctor` sollte grün sein), plus Android Studio **oder** Xcode.

```bash
git clone https://github.com/Relyt0801/cae-trainer.git
cd cae-trainer/app

# Einmalig: Plattform-Ordner erzeugen + Abhängigkeiten holen
bash setup.sh

# App auf angeschlossenem Gerät/Emulator starten
flutter run
```

### Installierbare APK bauen

```bash
flutter build apk --release
# Ergebnis: build/app/outputs/flutter-apk/app-release.apk
# Direkt auf ein angestöpseltes Android-Gerät spielen:
flutter install
```

## In Android Studio öffnen

1. `bash setup.sh` einmal ausführen (legt den `android/`-Ordner an).
2. In Android Studio **Open** → den Ordner `cae-trainer/app` wählen.
3. Gerät/Emulator auswählen und auf **▶ Run** klicken.

## APK ohne lokale Tools (Cloud-Build)

Bei jedem Push baut der GitHub-Actions-Workflow `.github/workflows/flutter-apk.yml`
automatisch eine `app-release.apk` und legt sie als **Artefakt** (und bei Tags als
**Release**) ab — herunterladen und direkt aufs Handy installieren.

## Projektstruktur

```
app/
├── lib/
│   ├── main.dart            App-Einstieg + Theme-Setup
│   ├── theme.dart           Dark-Mode-Corporate-Palette & ThemeData
│   ├── models.dart          Datenmodelle (Category, Passage, Question)
│   ├── data.dart            Komplette Fragenbank (96 Fragen, 4 Parts)
│   ├── logic.dart           Bewertung, Notenband, Session-Aufbau
│   ├── score_store.dart     Persistenz (shared_preferences)
│   ├── widgets/common.dart  Geteilte Widgets
│   └── screens/
│       ├── home_screen.dart     Übersicht mit Fortschritt
│       ├── quiz_screen.dart     Quiz (alle 4 Aufgabentypen)
│       └── results_screen.dart  Auswertung + Lösungsbegründungen
└── test/widget_test.dart    Smoke-Tests
```

## Verifiziert

`flutter analyze` → keine Probleme · `flutter test` → alle Tests grün ·
`flutter build web` → erfolgreich kompiliert.

> Die Plattform-Ordner (`android/`, `ios/`, `web/`) sind absichtlich nicht im
> Repo — sie werden bei `setup.sh` frisch für deine Maschine erzeugt. So bleibt
> das Repo portabel und ohne maschinenspezifische Pfade.
