import '../models/place_model.dart';
import '../services/places_api_service.dart';

class PlaceRepository {

  final PlacesApiService _apiService = PlacesApiService();

  // Fetch and parse places
  Future<List<PlaceModel>> getPlaces() async {

    final response = await _apiService.fetchNearbyPlaces();

    final results = response.data['results'] as List;

    // Convert JSON list -> PlaceModel list
    return results
        .map((json) => PlaceModel.fromJson(json))
        .toList();
  }
}