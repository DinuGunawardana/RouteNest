import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void setupTestDatabase() {

  // Initialize FFI
  sqfliteFfiInit();

  // Set database factory
  databaseFactory = databaseFactoryFfi;
}