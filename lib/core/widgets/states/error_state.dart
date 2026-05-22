import 'package:flutter/material.dart';

import '../buttons/primary_button.dart';

class ErrorState extends StatelessWidget {

  final String message;

  final VoidCallback onRetry;

  const ErrorState({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {

    return Center(

      child: Padding(

        padding: const EdgeInsets.all(24),

        child: Column(

          mainAxisSize: MainAxisSize.min,

          children: [

            const Icon(
              Icons.error_outline,
              size: 60,
            ),

            const SizedBox(height: 16),

            Text(message),

            const SizedBox(height: 24),

            PrimaryButton(

              text: "Retry",

              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }
}