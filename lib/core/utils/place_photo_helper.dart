import '../constants/api_constants.dart';

class PlacePhotoHelper {

  static String buildPhotoUrl(
      String photoReference,
      ) {

    return
      "https://maps.googleapis.com/maps/api/place/photo"
          "?maxwidth=1200"
          "&photo_reference=$photoReference"
          "&key=${ApiConstants.placesApiKey}";
  }
}