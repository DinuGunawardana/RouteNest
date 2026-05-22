import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimensions.dart';
import 'app_text_styles.dart';

class AppTheme {

  static ThemeData lightTheme() {

    return ThemeData(

      useMaterial3: true,

      scaffoldBackgroundColor: AppColors.background,

      primaryColor: AppColors.primary,

      // ===== APP BAR =====

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: false,
      ),

      // ===== TEXT =====

      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.heading1,
        headlineMedium: AppTextStyles.heading2,
        bodyMedium: AppTextStyles.body,
      ),

      // ===== CARD =====

      cardTheme: CardThemeData(

        color: AppColors.cardBackground,

        elevation: AppDimensions.cardElevation,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppDimensions.cardRadius,
          ),
        ),
      ),

      // ===== BUTTON =====

      elevatedButtonTheme: ElevatedButtonThemeData(

        style: ElevatedButton.styleFrom(

          backgroundColor: AppColors.primary,

          foregroundColor: Colors.white,

          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(
              AppDimensions.buttonRadius,
            ),
          ),
        ),
      ),
    );
  }
}