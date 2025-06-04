import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    );
  }
}


