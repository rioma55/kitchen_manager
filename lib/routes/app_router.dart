import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/ricette/presentation/ricette_list_screen.dart';
// Aggiungi qui gli altri import necessari per le schermate

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const RicetteListScreen(),
      ),
      // Aggiungi altre rotte in questo formato:
      // GoRoute(
      //   path: '/menu',
      //   builder: (context, state) => const MenuScreen(),
      // ),
    ],
  );
}





