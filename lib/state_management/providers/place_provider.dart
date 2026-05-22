import 'package:flutter/material.dart';

import '../../data/models/place_model.dart';
import '../../data/repositories/place_repository.dart';

class PlaceProvider extends ChangeNotifier {

  final PlaceRepository _repository =
  PlaceRepository();

  List<PlaceModel> places = [];

  bool isLoading = false;

  String? errorMessage;

  Future<void> fetchPlaces() async {

    isLoading = true;

    errorMessage = null;

    notifyListeners();

    final result =
    await _repository.getPlaces();

    if (result.success) {

      places = result.data!;

    } else {

      errorMessage = result.error;
    }

    isLoading = false;

    notifyListeners();
  }

  Future<void> toggleSaved(
      PlaceModel place,
      ) async {

    final updatedPlace =
    PlaceModel(

      placeId: place.placeId,

      name: place.name,

      rating: place.rating,

      reviewCount:
      place.reviewCount,

      lat: place.lat,

      lng: place.lng,

      photoReference:
      place.photoReference,

      isSaved: !place.isSaved,
    );

    final index = places.indexOf(place);

    places[index] = updatedPlace;

    notifyListeners();
  }
}