import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListaSpesaScreen extends StatelessWidget {
  const ListaSpesaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista della Spesa'),
      ),
      body: const Center(
        child: Text('Schermata Lista della Spesa'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 4, // <-- Lista Spesa è indice 4
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

