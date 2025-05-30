import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'core/theme/main_theme.dart';
import 'home_screen.dart';
import 'features/ricette/presentation/nuova_ricetta_screen.dart'; // ✅ Import schermata ricetta

void main() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  runApp(const KitchenApp());
}

class KitchenApp extends StatelessWidget {
  const KitchenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitchen Manager',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const HomeScreen(),
      routes: {
        '/nuova-ricetta': (context) => const NuovaRicettaScreen(), // ✅ Route registrata
      },
    );
  }
}



