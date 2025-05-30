import '../../../core/database/db_helper.dart';
import 'ricetta_model.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'dart:io';
import 'package:docx_template/docx_template.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

class RicettaProvider {
  Future<void> insertRicetta(Ricetta ricetta) async {
    final db = await DBHelper().database;
    await db.insert(
      'ricette',
      ricetta.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updateRicetta(Ricetta ricetta) async {
    final db = await DBHelper().database;
    await db.update(
      'ricette',
      ricetta.toMap(),
      where: 'id = ?',
      whereArgs: [ricetta.id],
    );
  }

  Future<void> deleteRicetta(int id) async {
    final db = await DBHelper().database;
    await db.delete(
      'ricette',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<Ricetta>> getRicette() async {
    final db = await DBHelper().database;
    final result = await db.query('ricette');
    return result.map((e) => Ricetta.fromMap(e)).toList();
  }

  Future<void> exportRicettaToWord(Ricetta ricetta) async {
    final data = await rootBundle.load('assets/template.docx');
    final bytes = data.buffer.asUint8List();
    final docx = await DocxTemplate.fromBytes(bytes);

    final content = Content();
    content
      ..add(TextContent('titolo', ricetta.titolo))
      ..add(TextContent('ingredienti', ricetta.ingredienti))
      ..add(TextContent('procedimento', ricetta.procedimento))
      ..add(TextContent('consigli', ricetta.consigli));

    final generatedDoc = await docx.generate(content);
    if (generatedDoc == null) return;

    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/${ricetta.titolo}.docx';
    final file = File(filePath);
    await file.writeAsBytes(generatedDoc);

    print('📄 Documento salvato in: $filePath');
  }
}



