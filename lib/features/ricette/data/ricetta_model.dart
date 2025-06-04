class Ricetta {
  final int? id;
  final String titolo;
  final String descrizione;

  Ricetta({
    this.id,
    required this.titolo,
    required this.descrizione,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titolo': titolo,
      'descrizione': descrizione,
    };
  }

  factory Ricetta.fromMap(Map<String, dynamic> map) {
    return Ricetta(
      id: map['id'],
      titolo: map['titolo'],
      descrizione: map['descrizione'],
    );
  }

  @override
  String toString() {
    return 'Ricetta{id: $id, titolo: $titolo, descrizione: $descrizione}';
  }
}





