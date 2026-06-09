import 'package:flutter/material.dart';
import '../theme.dart';

/// Geteilter Navigations-/Aktionsbutton (Corporate-Stil).
class NavButton extends StatelessWidget {
  final String label;
  final bool primary;
  final bool enabled;
  final VoidCallback onTap;
  const NavButton({required this.label, this.primary = false, this.enabled = true, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final disabled = !enabled;
    final Color bg = disabled
        ? AppColors.surface3
        : primary
            ? AppColors.accent
            : AppColors.surface;
    final Color fg = disabled
        ? AppColors.inkFaint
        : primary
            ? AppColors.onAccent
            : AppColors.ink;
    final Color border = disabled
        ? AppColors.rule
        : primary
            ? AppColors.accent
            : AppColors.ruleStrong;
    return Material(
      color: bg,
      borderRadius: BorderRadius.circular(9),
      child: InkWell(
        borderRadius: BorderRadius.circular(9),
        onTap: disabled ? null : onTap,
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: border),
          ),
          child: Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: fg)),
        ),
      ),
    );
  }
}
