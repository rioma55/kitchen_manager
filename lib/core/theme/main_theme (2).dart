import 'package:flutter/material.dart';

class MainTheme {
  static ThemeData light() {
    return ThemeData(
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: const Color(0xFFF8F5F2),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 16),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
