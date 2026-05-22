import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';

class PlacesApiService {

  // Dio instance for networking
  final Dio _dio = Dio();

  // Fetch nearby places
  Future<Response> fetchNearbyPlaces() async {

    // Query parameters
    final response = await _dio.get(
      ApiConstants.nearbySearchUrl,

      queryParameters: {
        "location": "6.9271,79.8612", // Colombo
        "radius": 5000,
        "type": "tourist_attraction",
        "key": ApiConstants.placesApiKey,
      },
    );

    return response;
  }
}