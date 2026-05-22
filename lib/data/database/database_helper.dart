import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  // Singleton instance
  static final DatabaseHelper instance = DatabaseHelper._init();

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app.db');
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

  // Create tables
  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE places (
      place_id TEXT PRIMARY KEY,
      name TEXT,
      rating REAL,
      review_count INTEGER,
      lat REAL,
      lng REAL,
      photo_reference TEXT
    )
    ''');

    await db.execute('''
    CREATE TABLE place_lists (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      created_at INTEGER
    )
    ''');
  }
}