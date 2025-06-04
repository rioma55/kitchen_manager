import 'package:flutter/material.dart';

class DettagliRicettaScreen extends StatelessWidget {
  final String titolo;
  final String descrizione;

  const DettagliRicettaScreen({
    super.key,
    required this.titolo,
    required this.descrizione,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titolo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          descrizione,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

