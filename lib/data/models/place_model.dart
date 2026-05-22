class PlaceModel {

  final String placeId;
  final String name;
  final double rating;
  final int reviewCount;
  final double lat;
  final double lng;
  final String photoReference;
  final bool isSaved;

  // Constructor
  PlaceModel({
    required this.placeId,
    required this.name,
    required this.rating,
    required this.reviewCount,
    required this.lat,
    required this.lng,
    required this.photoReference,
    required this.isSaved,
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

      isSaved: false,
    );
  }

  Map<String, dynamic> toMap() {

    return {

      'place_id': placeId,

      'name': name,

      'rating': rating,

      'review_count': reviewCount,

      'lat': lat,

      'lng': lng,

      'photo_reference': photoReference,

      'category': '',

      'district': '',

      'province': '',

      'is_saved': isSaved ? 1 : 0,
    };
  }

  factory PlaceModel.fromMap(
      Map<String, dynamic> map,
      ) {

    return PlaceModel(

      placeId: map['place_id'],

      name: map['name'],

      rating: map['rating'],

      reviewCount: map['review_count'],

      lat: map['lat'],

      lng: map['lng'],

      photoReference:
      map['photo_reference'],

      isSaved: map['is_saved'] == 1,
    );
  }
}