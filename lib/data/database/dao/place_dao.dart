import 'package:sqflite/sqflite.dart';

import '../../models/place_model.dart';

import '../app_database.dart';
import '../tables/places_table.dart';

class PlaceDao {

  // Save place
  Future<void> insertPlace(
      PlaceModel place,
      ) async {

    final Database db =
    await AppDatabase.instance.database;

    await db.insert(

      PlacesTable.tableName,

      place.toMap(),

      conflictAlgorithm:
      ConflictAlgorithm.replace,
    );
  }

  // Get all places
  Future<List<PlaceModel>> getPlaces() async {

    final Database db =
    await AppDatabase.instance.database;

    final result =
    await db.query(
      PlacesTable.tableName,
    );

    return result

        .map(
          (map) =>
          PlaceModel.fromMap(map),
    )

        .toList();
  }

  // Get saved places only
  Future<List<PlaceModel>>
  getSavedPlaces() async {

    final Database db =
    await AppDatabase.instance.database;

    final result = await db.query(

      PlacesTable.tableName,

      where: 'is_saved = ?',

      whereArgs: [1],
    );

    return result

        .map(
          (map) =>
          PlaceModel.fromMap(map),
    )

        .toList();
  }

  Future<void> updateSavedStatus(

      String placeId,

      bool isSaved,

      ) async {

    final Database db =
    await AppDatabase.instance.database;

    await db.update(

      PlacesTable.tableName,

      {

        'is_saved': isSaved ? 1 : 0,
      },

      where: 'place_id = ?',

      whereArgs: [placeId],
    );
  }
}