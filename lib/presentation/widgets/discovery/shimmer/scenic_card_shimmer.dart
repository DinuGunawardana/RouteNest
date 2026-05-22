import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ScenicCardShimmer
    extends StatelessWidget {

  const ScenicCardShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Shimmer.fromColors(

      baseColor: Colors.grey.shade300,

      highlightColor: Colors.grey.shade100,

      child: Container(

        height: 280,

        margin: const EdgeInsets.only(
          bottom: 20,
        ),

        decoration: BoxDecoration(

          color: Colors.white,

          borderRadius:
          BorderRadius.circular(24),
        ),
      ),
    );
  }
}