import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/constants/app_fonts.dart';


abstract class AppTheme {
  static double themeRadius = 12;

  static ThemeData theme() {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.background,
          backgroundColor: AppColors.secondary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.background,
          backgroundColor: AppColors.secondary,
          side: const BorderSide(color: Colors.brown),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.secondary,
          foregroundColor: AppColors.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(themeRadius),
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.background,
        surfaceTintColor: AppColors.background,
        elevation: 4,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: AppColors.primary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(themeRadius),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(themeRadius),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        labelStyle: AppFonts.bodyText2,
        hintStyle: AppFonts.bodyText2,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(themeRadius),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(themeRadius),
          borderSide: const BorderSide(
            color: AppColors.error,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(themeRadius),
          borderSide: const BorderSide(
            color: AppColors.error,
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.complementary,
        unselectedItemColor: AppColors.background,
        selectedIconTheme: IconThemeData(color: AppColors.complementary),
        unselectedIconTheme: IconThemeData(
          color: AppColors.background,
        ),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      textTheme: AppFonts.textTheme,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: AppColors.background,
        secondary: AppColors.secondary,
        onSecondary: AppColors.background,
        background: AppColors.background,
        onSurface: AppColors.onSurface,
        error: AppColors.error,
        onError: AppColors.error,
      ),
    );
  }
}