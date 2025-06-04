import 'package:flutter/material.dart';

class RicetteListScreen extends StatelessWidget {
  const RicetteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ricette'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Benvenuto nella tua app di cucina!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}







