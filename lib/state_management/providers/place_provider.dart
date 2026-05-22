import 'package:flutter/material.dart';

import '../../data/models/place_model.dart';
import '../../data/repositories/place_repository.dart';

class PlaceProvider extends ChangeNotifier {

  final PlaceRepository _repository = PlaceRepository();

  List<PlaceModel> places = [];

  bool isLoading = false;

  // Fetch places
  Future<void> fetchPlaces() async {

    isLoading = true;

    notifyListeners();

    places = await _repository.getPlaces();

    isLoading = false;

    notifyListeners();
  }
}