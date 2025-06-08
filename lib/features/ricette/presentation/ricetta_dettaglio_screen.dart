import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kitchen_manager/features/ricette/domain/ricette_repository.dart';

class RicettaDettaglioScreen extends StatelessWidget {
  final int id;
  const RicettaDettaglioScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<RicetteRepository>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Dettaglio Ricetta")),
      body: FutureBuilder<void>(
        future: repository.getById(id),
        builder: (context, snapshot) {
          final ricetta = repository.ricetta;

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (ricetta == null) {
            return const Center(child: Text("Ricetta non trovata"));
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ricetta.titolo,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),
                Text(ricetta.descrizione),
              ],
            ),
          );
        },
      ),
    );
  }
}
















