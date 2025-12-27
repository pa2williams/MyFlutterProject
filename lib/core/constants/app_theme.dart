import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'app_dimensions.dart';

class AppTheme {
  // Centralized ThemeData
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColors.secondary,
      ),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.heading1,
        headlineMedium: AppTextStyles.heading2,
        bodyMedium: AppTextStyles.body,
        bodyLarge: AppTextStyles.bodyBold,
        labelSmall: AppTextStyles.caption,
      ),
      // cardTheme: CardTheme(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      //   ),
      //   elevation: AppDimensions.elevationMedium,
      //   margin: EdgeInsets.all(AppDimensions.spacingMedium),
      // ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          ),
          textStyle: AppTextStyles.bodyBold,
        ),
      ),
    );
  }
}