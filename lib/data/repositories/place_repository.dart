import '../../core/network/api_result.dart';
import '../../core/network/network_exceptions.dart';

import '../models/place_model.dart';
import '../services/places_api_service.dart';

import '../database/dao/place_dao.dart';

class PlaceRepository {

  final PlacesApiService _apiService =
  PlacesApiService();

  final PlaceDao _placeDao =
  PlaceDao();

  Future<ApiResult<List<PlaceModel>>>
  getPlaces() async {

    try {

      // Fetch API data
      final response =
      await _apiService.fetchNearbyPlaces();

      final results =
      response.data['results'] as List;

      final places = results

          .map(
            (json) =>
            PlaceModel.fromJson(json),
      )

          .toList();

      // Save locally
      for (final place in places) {

        await _placeDao.insertPlace(
          place,
        );
      }

      return ApiResult.success(
        places,
      );

    } catch (error) {

      // Offline fallback
      final localPlaces =
      await _placeDao.getPlaces();

      if (localPlaces.isNotEmpty) {

        return ApiResult.success(
          localPlaces,
        );
      }

      return ApiResult.failure(
        "No internet and no cached data.",
      );
    }
  }

  // Future<ApiResult<List<PlaceModel>>> getPlaces() async {
  //
  //   try {
  //
  //     final response =
  //     await _apiService.fetchNearbyPlaces();
  //
  //     final results =
  //     response.data['results'] as List;
  //
  //     final places = results
  //
  //         .map(
  //           (json) => PlaceModel.fromJson(json),
  //     )
  //
  //         .toList();
  //
  //     return ApiResult.success(places);
  //
  //   } catch (error) {
  //
  //     final message =
  //     NetworkExceptions.getErrorMessage(error);
  //
  //     return ApiResult.failure(message);
  //   }
  // }
}