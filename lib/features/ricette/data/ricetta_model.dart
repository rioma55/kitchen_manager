class Ricetta {
  final int? id;
  final String titolo;
  final String ingredienti;
  final String procedimento;
  final String consigli;
  final String presentazione;

  Ricetta({
    this.id,
    required this.titolo,
    required this.ingredienti,
    required this.procedimento,
    required this.consigli,
    required this.presentazione,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titolo': titolo,
      'ingredienti': ingredienti,
      'procedimento': procedimento,
      'consigli': consigli,
      'presentazione': presentazione,
    };
  }

  factory Ricetta.fromMap(Map<String, dynamic> map) {
    return Ricetta(
      id: map['id'],
      titolo: map['titolo'],
      ingredienti: map['ingredienti'],
      procedimento: map['procedimento'],
      consigli: map['consigli'],
      presentazione: map['presentazione'],
    );
  }
}



