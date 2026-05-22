import 'package:flutter/material.dart';

class AppTheme {
  // Static method to return theme
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: Color(0xFF1FAF9A),

      scaffoldBackgroundColor: Color(0xFFFAFAFA),

      // Text theme
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: Colors.grey[800],
        ),
      ),

      // Card styling
      cardTheme: CardThemeData(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      // Button styling
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF1FAF9A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}