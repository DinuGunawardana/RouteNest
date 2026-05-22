import 'app_config.dart';

class ApiConstants {

  static String get placesApiKey =>
      AppConfig.googlePlacesApiKey;

  static const String nearbySearchUrl =
      "https://maps.googleapis.com/maps/api/place/nearbysearch/json";
}