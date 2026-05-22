class PlacesTable {

  static const String tableName = "places";

  // Columns
  static const String placeId = "place_id";

  static const String name = "name";

  static const String rating = "rating";

  static const String reviewCount = "review_count";

  static const String lat = "lat";

  static const String lng = "lng";

  static const String photoReference =
      "photo_reference";

  static const String category = "category";

  static const String district = "district";

  static const String province = "province";

  static const String isSaved = "is_saved";

  // Create table SQL
  static const String createTable = '''

  CREATE TABLE places (

    place_id TEXT PRIMARY KEY,

    name TEXT,

    rating REAL,

    review_count INTEGER,

    lat REAL,

    lng REAL,

    photo_reference TEXT,

    category TEXT,

    district TEXT,

    province TEXT,

    is_saved INTEGER
  )
  ''';
}