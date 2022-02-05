import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      splashFactory: InkRipple.splashFactory,
      colorScheme: ColorScheme.fromSwatch(accentColor: Colors.white),
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.grey.shade400,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
          actionsIconTheme: IconThemeData(color: Colors.black)));
}
