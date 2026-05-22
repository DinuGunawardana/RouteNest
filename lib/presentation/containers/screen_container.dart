import 'package:flutter/material.dart';

import '../../core/theme/app_spacing.dart';

class ScreenContainer extends StatelessWidget {

  final Widget child;

  const ScreenContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Padding(

        padding: const EdgeInsets.all(
          AppSpacing.md,
        ),

        child: child,
      ),
    );
  }
}