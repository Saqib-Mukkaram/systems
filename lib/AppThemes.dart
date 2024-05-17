import 'package:flutter/material.dart';

class AppThemes {
  static const String light = 'light';
  static const String dark = 'dark';
  static const String system = 'system';

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffFAA250)),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xffFAA250),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
