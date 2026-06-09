# CAE Trainer — C1 Advanced

Übungs-Trainer für **Cambridge C1 Advanced — Reading & Use of English**.
Eine eigenständige, offline-fähige Progressive Web App (PWA) in einer
einzigen `index.html` — keine Web-Verknüpfung, sondern eine echte
installierbare App.

## Inhalt

- **Part 1** — Multiple-Choice Cloze
- **Part 2** — Open Cloze
- **Part 3** — Word Formation
- **Part 4** — Key Word Transformations

Jede Session bewertet ab **60 %** als bestanden, mit Auswertung,
Lösungsbegründungen und gespeichertem Fortschritt (localStorage).

## Design

Modernes, schlichtes Corporate-Design im **Dark Mode** (System-Schriftarten,
keine externen Abhängigkeiten — funktioniert komplett offline). Vollständig
**responsive**: einspaltig auf dem Handy, zweispaltiges Raster ab Tablet/Desktop.
Die Benutzeroberfläche ist auf Deutsch, die Übungsinhalte auf Englisch.

## Installation auf dem Handy

1. `index.html` im Browser öffnen (Safari auf iPhone/iPad, Chrome auf Android).
2. **Teilen → „Zum Home-Bildschirm"** (iOS) bzw. **Menü → „App installieren"** (Android).
3. Der Trainer startet danach im Vollbild wie eine native App — auch ohne Internet.

## Hosting (optional)

Über GitHub Pages bereitstellen, dann registriert sich der Service Worker
(`sw.js`) und cacht die App-Shell für vollständigen Offline-Betrieb.

## Dateien

| Datei | Zweck |
|---|---|
| `index.html` | Vollständige App (HTML, CSS, JS, eingebettetes Manifest & Icon) |
| `manifest.json` | Web-App-Manifest für gehostete Installation |
| `sw.js` | Service Worker (Offline-Cache) |
| `icon-192.png`, `icon-512.png`, `apple-touch-icon.png` | App-Icons |
