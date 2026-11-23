import 'package:flutter/material.dart';

class AppTheme {
  static const navy = Color(0xFF102A56);
  static const blue = Color(0xFF1F4E8C);
  static const pale = Color(0xFFF3F6FB);

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: pale,
    colorScheme: ColorScheme.fromSeed(seedColor: navy, primary: navy),
    appBarTheme: const AppBarTheme(
      backgroundColor: navy,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: navy,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    ),
  );
}
