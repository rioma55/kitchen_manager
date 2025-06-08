import 'package:flutter/material.dart';
import 'package:kitchen_manager/core/db/database_helper.dart';
import 'package:kitchen_manager/features/ricette/data/ricetta_model.dart';

class RicetteRepository extends ChangeNotifier {
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  List<Ricetta> _ricette = [];
  List<Ricetta> get ricette => _ricette;

  Ricetta? _ricetta;
  Ricetta? get ricetta => _ricetta;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getAll() async {
    _isLoading = true;
    notifyListeners();

    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('ricette');

    _ricette = maps.map((map) => Ricetta.fromMap(map)).toList();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> getById(int id) async {
    final db = await _databaseHelper.database;
    final maps = await db.query(
      'ricette',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      _ricetta = Ricetta.fromMap(maps.first);
      notifyListeners();
    }
  }

  Future<void> insert(Ricetta ricetta) async {
    final db = await _databaseHelper.database;
    await db.insert('ricette', ricetta.toMap());
    await getAll();
  }

  Future<void> update(Ricetta ricetta) async {
    final db = await _databaseHelper.database;
    await db.update(
      'ricette',
      ricetta.toMap(),
      where: 'id = ?',
      whereArgs: [ricetta.id],
    );
    await getAll();
  }

  Future<void> delete(int id) async {
    final db = await _databaseHelper.database;
    await db.delete('ricette', where: 'id = ?', whereArgs: [id]);
    await getAll();
  }
}





