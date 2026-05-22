import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'tables/places_table.dart';

class AppDatabase {

  static Database? _database;

  // Singleton instance
  static final AppDatabase instance =
  AppDatabase._init();

  AppDatabase._init();

  Future<Database> get database async {

    if (_database != null) {

      return _database!;
    }

    _database = await _initDB();

    return _database!;
  }

  Future<Database> _initDB() async {

    final dbPath =
    await getDatabasesPath();

    final path =
    join(dbPath, "routenest.db");

    return await openDatabase(

      path,

      version: 1,

      onCreate: _createDB,
    );
  }

  Future<void> _createDB(
      Database db,
      int version,
      ) async {

    // Create places table
    await db.execute(
      PlacesTable.createTable,
    );
  }
}