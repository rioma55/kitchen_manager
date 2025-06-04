import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../features/ricette/data/ricetta_model.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('kitchen_manager.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ricette(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        titolo TEXT,
        ingredienti TEXT,
        procedimento TEXT,
        consigli TEXT,
        presentazione TEXT
      )
    ''');
  }

  Future<void> insertRicetta(Ricetta ricetta) async {
    final db = await instance.database;
    await db.insert(
      'ricette',
      ricetta.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
