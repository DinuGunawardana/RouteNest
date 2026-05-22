import 'package:flutter/material.dart';

class DistrictBadge extends StatelessWidget {

  final String district;

  const DistrictBadge({
    super.key,
    required this.district,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),

      decoration: BoxDecoration(

        color: Colors.black.withValues(
          alpha: 0.45,
        ),

        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Row(

        mainAxisSize: MainAxisSize.min,

        children: [

          const Icon(
            Icons.location_on,
            size: 14,
            color: Colors.white,
          ),

          const SizedBox(width: 4),

          Text(

            district,

            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}