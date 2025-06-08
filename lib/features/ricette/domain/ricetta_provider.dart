import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/ricette_repository.dart';
import '../models/ricetta_model.dart';

final ricetteRepositoryProvider = Provider<RicetteRepository>((ref) {
  return RicetteRepository();
});

final ricetteNotifierProvider = StateNotifierProvider<RicetteNotifier, List<Ricetta>>((ref) {
  final repository = ref.watch(ricetteRepositoryProvider);
  return RicetteNotifier(repository);
});




