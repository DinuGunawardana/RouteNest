import 'package:dio/dio.dart';

import '../../core/constants/api_constants.dart';
import '../../core/network/dio_client.dart';

class PlacesApiService {

  final Dio _dio = DioClient().dio;

  Future<Response> fetchNearbyPlaces() async {

    return await _dio.get(

      ApiConstants.nearbySearchUrl,

      queryParameters: {

        "location": "6.9271,79.8612",

        "radius": 5000,

        "type": "tourist_attraction",

        "key": ApiConstants.placesApiKey,
      },
    );
  }
}