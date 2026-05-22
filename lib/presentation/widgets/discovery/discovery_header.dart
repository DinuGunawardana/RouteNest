import 'package:flutter/material.dart';

import '../../../core/theme/app_text_styles.dart';

class DiscoveryHeader
    extends StatelessWidget {

  const DiscoveryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment:
      CrossAxisAlignment.start,

      children: [

        Text(
          "Explore Sri Lanka",
          style:
          AppTextStyles.heading1,
        ),

        const SizedBox(height: 8),

        const Text(
          "Find beautiful places nearby",
        ),
      ],
    );
  }
}