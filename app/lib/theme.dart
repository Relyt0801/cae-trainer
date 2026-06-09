import 'package:flutter/material.dart';

/// Dark-Mode-Corporate-Palette (identisch zur Web-Version).
class AppColors {
  static const bg = Color(0xFF0E1621);
  static const surface = Color(0xFF16202D);
  static const surface2 = Color(0xFF121B26);
  static const surface3 = Color(0xFF1E2A38);
  static const ink = Color(0xFFEAEFF6);
  static const inkSoft = Color(0xFFA6B4C4);
  static const inkFaint = Color(0xFF6E7E91);
  static const rule = Color(0xFF26323F);
  static const ruleStrong = Color(0xFF3A4859);
  static const accent = Color(0xFF5B8DEF);
  static const accentDark = Color(0xFF3F73D6);
  static const accentSoft = Color(0x265B8DEF); // ~15% alpha
  static const onAccent = Color(0xFF0B1119);
  static const correct = Color(0xFF54D183);
  static const correctBg = Color(0x2E34995D);
  static const correctBd = Color(0x6654D183);
  static const wrong = Color(0xFFF0726B);
  static const wrongBg = Color(0x2ED94B44);
  static const wrongBd = Color(0x66F0726B);

  static const mono = 'monospace';
}

ThemeData buildTheme() {
  const scheme = ColorScheme.dark(
    surface: AppColors.bg,
    primary: AppColors.accent,
    onPrimary: AppColors.onAccent,
    secondary: AppColors.accent,
    error: AppColors.wrong,
    onSurface: AppColors.ink,
  );

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: scheme,
    scaffoldBackgroundColor: AppColors.bg,
    splashFactory: InkRipple.splashFactory,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.accent),
    fontFamily: null,
    textTheme: const TextTheme().apply(
      bodyColor: AppColors.ink,
      displayColor: AppColors.ink,
    ),
  );
}

/// Eyebrow- / Mono-Label-Stil (gesperrte Versalien).
TextStyle eyebrowStyle({Color color = AppColors.inkFaint, double size = 10.5}) => TextStyle(
      fontFamily: AppColors.mono,
      fontSize: size,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.6,
      color: color,
    );
