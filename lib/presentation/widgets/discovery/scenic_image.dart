import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import '../../../core/utils/place_photo_helper.dart';

class ScenicImage extends StatelessWidget {

  final String photoReference;

  const ScenicImage({
    super.key,
    required this.photoReference,
  });

  @override
  Widget build(BuildContext context) {

    final imageUrl =
    PlacePhotoHelper.buildPhotoUrl(
      photoReference,
    );

    return CachedNetworkImage(

      imageUrl: imageUrl,

      fit: BoxFit.cover,

      placeholder: (context, url) {

        return Container(
          color: Colors.grey.shade300,
        );
      },

      errorWidget: (context, url, error) {

        return Container(

          color: Colors.grey.shade300,

          child: const Center(

            child: Icon(
              Icons.image_not_supported,
            ),
          ),
        );
      },
    );
  }
}