import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/ricette_repository.dart';
import '../models/ricetta_model.dart';

class RicetteNotifier extends StateNotifier<List<Ricetta>> {
  final RicetteRepository repository;

  RicetteNotifier(this.repository) : super([]) {
    _loadRicette();
  }

  Future<void> _loadRicette() async {
    final data = await repository.getAll();
    state = data;
  }

  Future<void> addRicetta(Ricetta ricetta) async {
    await repository.add(ricetta);
    _loadRicette();
  }

  Future<void> deleteRicetta(int id) async {
    await repository.delete(id);
    _loadRicette();
  }

  Future<void> updateRicetta(Ricetta ricetta) async {
    await repository.update(ricetta);
    _loadRicette();
  }
}

