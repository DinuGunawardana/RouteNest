import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/app_text_styles.dart';

import '../../../data/models/place_model.dart';

import '../../../state_management/providers/place_provider.dart';

import 'scenic_image.dart';

class ScenicPlaceCard
    extends StatelessWidget {

  final PlaceModel place;

  const ScenicPlaceCard({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      margin: const EdgeInsets.only(
        bottom: 20,
      ),

      decoration: BoxDecoration(

        borderRadius:
        BorderRadius.circular(24),

        boxShadow: [

          BoxShadow(

            color:
            Colors.black.withValues(
              alpha: 0.08,
            ),

            blurRadius: 20,

            offset: const Offset(0, 8),
          ),
        ],
      ),

      child: ClipRRect(

        borderRadius:
        BorderRadius.circular(24),

        child: Stack(

          children: [

            // ===== IMAGE =====

            SizedBox(

              height: 280,

              width: double.infinity,

              child: ScenicImage(
                photoReference:
                place.photoReference,
              ),
            ),

            // ===== GRADIENT =====

            Positioned.fill(

              child: Container(

                decoration: BoxDecoration(

                  gradient: LinearGradient(

                    begin: Alignment.topCenter,

                    end: Alignment.bottomCenter,

                    colors: [

                      Colors.transparent,

                      Colors.black
                          .withValues(
                        alpha: 0.75,
                      ),
                    ],
                  ),
                ),
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

                  // ===== PLACE NAME =====

                  Text(

                    place.name,

                    style:
                    AppTextStyles.heading2
                        .copyWith(

                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // ===== INFO ROW =====

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

                      const SizedBox(width: 12),

                      Text(

                        "(${place.reviewCount} reviews)",

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

            // ===== SAVE BUTTON =====

            Positioned(

              top: 16,

              right: 16,

              child: CircleAvatar(

                backgroundColor:
                Colors.white,

                child: IconButton(

                  icon: Icon(

                    place.isSaved

                        ? Icons.bookmark

                        : Icons.bookmark_border,
                  ),

                  onPressed: () {

                    context
                        .read<
                        PlaceProvider>()
                        .toggleSaved(
                        place);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}