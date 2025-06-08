import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kitchen_manager/features/ricette/domain/ricette_repository.dart';

class RicetteListScreen extends StatelessWidget {
  const RicetteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<RicetteRepository>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Ricette")),
      body: FutureBuilder<void>(
        future: repository.getAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (repository.ricette.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Benvenuto in Kitchen Manager!\nAggiungi la tua prima ricetta cliccando sul + in basso a destra.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          }

          return ListView.builder(
            itemCount: repository.ricette.length,
            itemBuilder: (context, index) {
              final ricetta = repository.ricette[index];
              return ListTile(
                title: Text(ricetta.titolo),
                subtitle: Text(
                  ricetta.descrizione.length > 50
                      ? ricetta.descrizione.substring(0, 50) + '...'
                      : ricetta.descrizione,
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/dettaglio_ricetta',
                    arguments: ricetta.id,
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/nuova_ricetta');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
























