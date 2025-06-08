import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VegetarianiScreen extends StatelessWidget {
  const VegetarianiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetariani'),
      ),
      body: const Center(
        child: Text('Sezione dedicata ai vegetariani'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // Puoi regolarlo se serve
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/');
              break;
            case 1:
              context.go('/menu');
              break;
            case 2:
              context.go('/magazzino');
              break;
            case 3:
              context.go('/food_cost');
              break;
            case 4:
              context.go('/lista_spesa');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Ricette',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Menù',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Magazzino',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Costi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Spesa',
          ),
        ],
      ),
    );
  }
}
