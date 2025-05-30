import 'package:flutter/material.dart';
import '../data/ricetta_model.dart';
import '../../../core/database_helper.dart';

class NuovaRicettaScreen extends StatefulWidget {
  const NuovaRicettaScreen({super.key});

  @override
  State<NuovaRicettaScreen> createState() => _NuovaRicettaScreenState();
}

class _NuovaRicettaScreenState extends State<NuovaRicettaScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController titoloController = TextEditingController();
  final TextEditingController ingredientiController = TextEditingController();
  final TextEditingController procedimentoController = TextEditingController();
  final TextEditingController consigliController = TextEditingController();
  final TextEditingController presentazioneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuova Ricetta')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text(
                "Inserisci i dettagli della tua ricetta",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: titoloController,
                decoration: const InputDecoration(
                  labelText: 'Nome Ricetta',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value!.isEmpty ? 'Inserisci il nome' : null,
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: ingredientiController,
                decoration: const InputDecoration(
                  labelText: 'Ingredienti',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: procedimentoController,
                decoration: const InputDecoration(
                  labelText: 'Procedimento',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: consigliController,
                decoration: const InputDecoration(
                  labelText: 'Consigli dello chef',
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: presentazioneController,
                decoration: const InputDecoration(
                  labelText: 'Presentazione del piatto',
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SafeArea(
          child: GestureDetector(
            onTap: () async {
              if (_formKey.currentState!.validate()) {
                final nuovaRicetta = Ricetta(
                  titolo: titoloController.text,
                  ingredienti: ingredientiController.text,
                  procedimento: procedimentoController.text,
                  consigli: consigliController.text,
                  presentazione: presentazioneController.text,
                );

                try {
                  await DatabaseHelper.instance.insertRicetta(nuovaRicetta);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Ricetta salvata con successo!')),
                  );
                  Navigator.pop(context);
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Errore nel salvataggio: $e')),
                  );
                }
              }
            },
            child: const SizedBox(
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  'SALVA',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}







