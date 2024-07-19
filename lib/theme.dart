import 'package:fluent_ui/fluent_ui.dart';
import 'package:system_theme/system_theme.dart';

ThemeMode systemThemeMode = ThemeMode.system;

AccentColor systemAccentColor = AccentColor.swatch({
  'darkest': SystemTheme.accentColor.darkest,
  'darker': SystemTheme.accentColor.darker,
  'dark': SystemTheme.accentColor.dark,
  'normal': SystemTheme.accentColor.accent,
  'light': SystemTheme.accentColor.light,
  'lighter': SystemTheme.accentColor.lighter,
  'lightest': SystemTheme.accentColor.lightest,
});

class AppTheme {
  static FluentThemeData dark = FluentThemeData(
    brightness: Brightness.dark,
    accentColor: systemAccentColor,
    scaffoldBackgroundColor: const Color.fromARGB(255, 32, 32, 32),
  );

  static FluentThemeData light = FluentThemeData(
    brightness: Brightness.light,
    accentColor: systemAccentColor,
    scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
  );
}
