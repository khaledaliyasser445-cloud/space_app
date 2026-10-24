import 'package:flutter/material.dart';
import '../core/assets/app_colors.dart';

class AppTheme {
  static const TextStyle _bodyLargeText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: _bodyLargeText,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.red,
        foregroundColor: AppColors.white,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1000),
        ),
        textStyle: _bodyLargeText,
        elevation: 0,
      ),
    ),
  );
}