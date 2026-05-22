import 'package:flutter/material.dart';

import '../../../data/models/place_model.dart';

import 'district_badge.dart';
import 'category_overlay.dart';
import 'scenic_image.dart';

class FeaturedPlaceCard
    extends StatelessWidget {

  final PlaceModel place;

  const FeaturedPlaceCard({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width: 320,

      margin: const EdgeInsets.only(
        right: 18,
      ),

      child: ClipRRect(

        borderRadius:
        BorderRadius.circular(28),

        child: Stack(

          children: [

            // ===== IMAGE =====

            SizedBox(

              height: 380,

              child: ScenicImage(
                photoReference:
                place.photoReference,
              ),
            ),

            // ===== GRADIENT =====

            Positioned.fill(

              child: DecoratedBox(

                decoration: BoxDecoration(

                  gradient: LinearGradient(

                    begin: Alignment.topCenter,

                    end: Alignment.bottomCenter,

                    colors: [

                      Colors.transparent,

                      Colors.black
                          .withValues(
                        alpha: 0.82,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ===== CATEGORY =====

            const Positioned(

              top: 20,

              left: 20,

              child: CategoryOverlay(
                category: "Waterfall",
              ),
            ),

            // ===== DISTRICT =====

            const Positioned(

              top: 20,

              right: 20,

              child: DistrictBadge(
                district: "Ella",
              ),
            ),

            // ===== CONTENT =====

            Positioned(

              left: 20,

              right: 20,

              bottom: 20,

              child: Column(

                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  Text(

                    place.name,

                    style: const TextStyle(

                      color: Colors.white,

                      fontSize: 28,

                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(

                    children: [

                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),

                      const SizedBox(width: 4),

                      Text(

                        "${place.rating}",

                        style:
                        const TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(width: 10),

                      Text(

                        "${place.reviewCount} reviews",

                        style:
                        const TextStyle(
                          color:
                          Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}