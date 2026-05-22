import 'package:flutter/material.dart';
import '../../data/models/place_model.dart';

class PlaceCard extends StatelessWidget {

  final PlaceModel place;

  const PlaceCard({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      margin: const EdgeInsets.all(12),

      child: Padding(

        padding: const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              place.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text("⭐ Rating: ${place.rating}"),

            Text("📝 Reviews: ${place.reviewCount}"),
          ],
        ),
      ),
    );
  }
}