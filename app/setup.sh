#!/usr/bin/env bash
# CAE Trainer (Flutter) — Einrichtung mit einem Befehl.
#
#   bash setup.sh
#
# Erzeugt die Plattform-Ordner (android/ios/web), holt die Abhängigkeiten
# und macht das Projekt bereit für `flutter run` bzw. Android Studio.
set -e

cd "$(dirname "$0")"

if ! command -v flutter >/dev/null 2>&1; then
  echo "✗ Flutter wurde nicht gefunden. Bitte zuerst installieren: https://docs.flutter.dev/get-started/install"
  exit 1
fi

echo "▸ Flutter-Version:"
flutter --version | head -1

echo "▸ Erzeuge Plattform-Ordner (android, ios, web) …"
flutter create --org com.tyleradams --project-name cae_trainer --platforms=android,ios,web .

echo "▸ Hole Abhängigkeiten …"
flutter pub get

cat <<'DONE'

✓ Fertig.

Nächste Schritte:
  • App starten (Gerät/Emulator angeschlossen):   flutter run
  • Release-APK bauen:                             flutter build apk --release
    → liegt unter build/app/outputs/flutter-apk/app-release.apk
  • In Android Studio: einfach den Ordner "app" öffnen und auf ▶ Run klicken.
DONE
