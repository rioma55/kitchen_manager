import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:kitchen_manager/data/tables.dart';
import 'package:kitchen_manager/data/ricetta_model.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'kitchen_manager.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ${Tables.ricette} (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        titolo TEXT,
        descrizione TEXT
      )
    ''');
  }
}










