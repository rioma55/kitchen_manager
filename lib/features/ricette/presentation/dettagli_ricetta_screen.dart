import 'package:flutter/material.dart';

class DettagliRicettaScreen extends StatelessWidget {
  final Map<String, dynamic> ricetta;

  const DettagliRicettaScreen({required this.ricetta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ricetta['titolo'] ?? 'Dettagli Ricetta')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Descrizione', style: Theme.of(context).textTheme.titleMedium),
            Text(ricetta['descrizione'] ?? ''),
            SizedBox(height: 10),
            Text('Ingredienti', style: Theme.of(context).textTheme.titleMedium),
            Text(ricetta['ingredienti'] ?? ''),
            SizedBox(height: 10),
            Text('Istruzioni', style: Theme.of(context).textTheme.titleMedium),
            Text(ricetta['istruzioni'] ?? ''),
          ],
        ),
      ),
    );
  }
}
