import 'package:flutter/material.dart';

class Ricetta {
  final String titolo;
  final String descrizione;

  Ricetta({required this.titolo, required this.descrizione});
}

class RicettaProvider extends ChangeNotifier {
  final List<Ricetta> _ricette = [];

  List<Ricetta> get ricette => List.unmodifiable(_ricette);

  void aggiungiRicetta(Ricetta ricetta) {
    _ricette.add(ricetta);
    notifyListeners();
  }

  void rimuoviRicetta(Ricetta ricetta) {
    _ricette.remove(ricetta);
    notifyListeners();
  }

  void svuota() {
    _ricette.clear();
    notifyListeners();
  }
}





