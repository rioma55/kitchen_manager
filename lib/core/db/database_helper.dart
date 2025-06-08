import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  factory DatabaseHelper() => _instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final path = join(await getDatabasesPath(), 'kitchen.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ricette (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        titolo TEXT,
        descrizione TEXT
      )
    ''');
  }

  Future<void> insertRicetta(Map<String, dynamic> data) async {
    final db = await database;
    await db.insert(
      'ricette',
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> getRicette() async {
    final db = await database;
    return await db.query('ricette');
  }
}

