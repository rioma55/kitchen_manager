import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kitchen_manager/features/ricette/domain/ricette_repository.dart';
import 'package:kitchen_manager/features/ricette/data/ricetta_model.dart';

class NuovaRicettaScreen extends StatefulWidget {
  const NuovaRicettaScreen({super.key});

  @override
  State<NuovaRicettaScreen> createState() => _NuovaRicettaScreenState();
}

class _NuovaRicettaScreenState extends State<NuovaRicettaScreen> {
  final _formKey = GlobalKey<FormState>();

  final _titoloController = TextEditingController();
  final _ingredientiController = TextEditingController();
  final _procedimentoController = TextEditingController();
  final _impiattamentoController = TextEditingController();
  final _consiglioController = TextEditingController();

  @override
  void dispose() {
    _titoloController.dispose();
    _ingredientiController.dispose();
    _procedimentoController.dispose();
    _impiattamentoController.dispose();
    _consiglioController.dispose();
    super.dispose();
  }

  void _salvaRicetta() {
    if (_formKey.currentState!.validate()) {
      final ricetta = Ricetta(
        titolo: _titoloController.text,
        descrizione: '''
Ingredienti:
${_ingredientiController.text}

Procedimento:
${_procedimentoController.text}

Impiattamento:
${_impiattamentoController.text}

Consigli dello chef:
${_consiglioController.text}
''',
      );
      Provider.of<RicetteRepository>(context, listen: false).insert(ricetta);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nuova Ricetta")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titoloController,
                decoration: const InputDecoration(labelText: 'Nome Ricetta'),
                validator: (value) => value!.isEmpty ? 'Campo obbligatorio' : null,
              ),
              TextFormField(
                controller: _ingredientiController,
                decoration: const InputDecoration(labelText: 'Ingredienti'),
                maxLines: 3,
              ),
              TextFormField(
                controller: _procedimentoController,
                decoration: const InputDecoration(labelText: 'Procedimento'),
                maxLines: 4,
              ),
              TextFormField(
                controller: _impiattamentoController,
                decoration: const InputDecoration(labelText: 'Impiattamento'),
                maxLines: 2,
              ),
              TextFormField(
                controller: _consiglioController,
                decoration: const InputDecoration(labelText: 'Consigli dello chef'),
                maxLines: 2,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _salvaRicetta,
                child: const Text('Salva Ricetta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}













