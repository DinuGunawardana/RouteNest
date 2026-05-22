import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text_styles.dart';

import '../../data/models/place_model.dart';

import '../../state_management/providers/place_provider.dart';

class PlaceCard extends StatelessWidget {

  final PlaceModel place;

  const PlaceCard({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),

      child: Padding(

        padding: const EdgeInsets.all(
          AppSpacing.md,
        ),

        child: Column(

          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            // ===== TOP ROW =====

            Row(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                // ===== PLACE NAME =====

                Expanded(

                  child: Text(

                    place.name,

                    style:
                    AppTextStyles.heading2,

                    maxLines: 2,

                    overflow:
                    TextOverflow.ellipsis,
                  ),
                ),

                // ===== SAVE BUTTON =====

                IconButton(

                  icon: Icon(

                    place.isSaved

                        ? Icons.bookmark

                        : Icons.bookmark_border,
                  ),

                  onPressed: () {

                    context
                        .read<PlaceProvider>()
                        .toggleSaved(place);
                  },
                ),
              ],
            ),

            const SizedBox(
              height: AppSpacing.sm,
            ),

            // ===== RATING ROW =====

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
                  AppTextStyles.body,
                ),

                const SizedBox(width: 12),

                Text(
                  "(${place.reviewCount} reviews)",
                  style:
                  AppTextStyles.caption,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}