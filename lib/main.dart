import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kitchen_manager/features/ricette/presentation/ricette_list_screen.dart';
import 'package:kitchen_manager/features/ricette/presentation/ricetta_dettaglio_screen.dart';
import 'package:kitchen_manager/features/ricette/presentation/nuova_ricetta_screen.dart';
import 'package:kitchen_manager/features/ricette/domain/ricette_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RicetteRepository(),
      child: MaterialApp(
        title: 'Kitchen Manager',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true,
        ),
        home: const RicetteListScreen(),
        routes: {
          '/dettaglio_ricetta': (context) {
            final int id = ModalRoute.of(context)!.settings.arguments as int;
            return RicettaDettaglioScreen(id: id);
          },
          '/nuova_ricetta': (context) => const NuovaRicettaScreen(),
        },
      ),
    );
  }
}










