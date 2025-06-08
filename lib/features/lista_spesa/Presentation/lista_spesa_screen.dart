import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../lista_spesa/data/lista_spesa_provider.dart';

class ListaSpesaScreen extends ConsumerWidget {
  const ListaSpesaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lista = ref.watch(listaSpesaProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Lista della Spesa')),
      body: lista.isEmpty
          ? const Center(child: Text('Nessuna ricetta selezionata.'))
          : ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(lista[index]),
                  trailing: const Icon(Icons.check_box_outline_blank),
                );
              },
            ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 4, // <-- Spesa è indice 4
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



