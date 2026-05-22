class PlaceModel {

  final String placeId;
  final String name;
  final double rating;
  final int reviewCount;
  final double lat;
  final double lng;
  final String photoReference;

  // Constructor
  PlaceModel({
    required this.placeId,
    required this.name,
    required this.rating,
    required this.reviewCount,
    required this.lat,
    required this.lng,
    required this.photoReference,
  });

  // Factory constructor converts JSON -> Dart object
  factory PlaceModel.fromJson(Map<String, dynamic> json) {

    return PlaceModel(

      placeId: json['place_id'] ?? '',

      name: json['name'] ?? '',

      rating: (json['rating'] ?? 0).toDouble(),

      reviewCount: json['user_ratings_total'] ?? 0,

      lat: json['geometry']['location']['lat'] ?? 0,

      lng: json['geometry']['location']['lng'] ?? 0,

      photoReference: json['photos'] != null
          ? json['photos'][0]['photo_reference']
          : '',
    );
  }
}