import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  primarySwatch: Colors.deepPurple,
  scaffoldBackgroundColor: const Color(0xFFF7EFF5),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple,
    foregroundColor: Colors.white,
    centerTitle: true,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepPurple,
    foregroundColor: Colors.white,
  ),
);

