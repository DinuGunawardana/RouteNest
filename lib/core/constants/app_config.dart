import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {

  // API key getter
  static String get googlePlacesApiKey =>
      dotenv.env['GOOGLE_PLACES_API_KEY'] ?? '';
}