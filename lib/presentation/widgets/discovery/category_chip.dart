import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class CategoryChip extends StatelessWidget {

  final String label;

  final bool selected;

  final VoidCallback onTap;

  const CategoryChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.only(
        right: 10,
      ),

      child: ChoiceChip(

        label: Text(label),

        selected: selected,

        onSelected: (_) {

          onTap();
        },

        selectedColor:
        AppColors.primary,

        backgroundColor:
        Colors.grey.shade200,

        labelStyle: TextStyle(

          color: selected
              ? Colors.white
              : Colors.black,
        ),
      ),
    );
  }
}