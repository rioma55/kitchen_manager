import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/ricette/presentation/ricette_list_screen.dart';
import '../features/ricette/presentation/nuova_ricetta_screen.dart';
import '../features/ricette/presentation/ricetta_dettaglio_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const RicetteListScreen(),
    ),
    GoRoute(
      path: '/nuova_ricetta',
      name: 'nuova_ricetta',
      builder: (context, state) => const NuovaRicettaScreen(),
    ),
    GoRoute(
      path: '/ricetta/:id',
      name: 'ricetta_dettaglio',
      builder: (context, state) {
        final id = int.tryParse(state.pathParameters['id'] ?? '');
        if (id == null) {
          return const Scaffold(
            body: Center(child: Text('ID ricetta non valido')),
          );
        }
        return RicettaDettaglioScreen(id: id);
      },
    ),
  ],
);








