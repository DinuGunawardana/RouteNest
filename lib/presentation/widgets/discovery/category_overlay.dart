import 'package:flutter/material.dart';

class CategoryOverlay
    extends StatelessWidget {

  final String category;

  const CategoryOverlay({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Text(
        category,
      ),
    );
  }
}