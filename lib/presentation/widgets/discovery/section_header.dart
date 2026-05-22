import 'package:flutter/material.dart';

import '../../../core/theme/app_text_styles.dart';

class SectionHeader extends StatelessWidget {

  final String title;

  final String? subtitle;

  final VoidCallback? onSeeAll;

  const SectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.only(
        bottom: 14,
      ),

      child: Row(

        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,

        children: [

          // ===== TITLES =====

          Column(

            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              Text(
                title,
                style:
                AppTextStyles.heading2,
              ),

              if (subtitle != null)

                Text(subtitle!),
            ],
          ),

          // ===== SEE ALL =====

          if (onSeeAll != null)

            TextButton(

              onPressed: onSeeAll,

              child: const Text(
                "See All",
              ),
            ),
        ],
      ),
    );
  }
}