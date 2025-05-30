import 'package:flutter/material.dart';

class RicetteListScreen extends StatelessWidget {
  const RicetteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Le tue Ricette')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Benvenuto nella tua app di cucina!",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text("Nessuna ricetta trovata.", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/nuova-ricetta'); // ✅ Apre la schermata
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}







