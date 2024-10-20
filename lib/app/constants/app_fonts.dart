import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';

abstract class AppFonts {
  // Headline 1 - Large, Bold
  static const TextStyle headline1 = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
    fontSize: 30,
  );

  // Headline 2 - SemiBold
  static const TextStyle headline2 = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontSize: 28,
  ); // Headline 2 - SemiBold

  static const TextStyle headlineRoboto = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.blackSoft,
    fontSize: 22,
  );
  static const TextStyle headline2Roboto = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.blackSoft,
    fontSize: 16,
  );
  static const TextStyle bodyTextRoboto = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.blackSoft,
    fontSize: 14,
  );

  static const TextStyle bodyTextRoboto2 = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.blackSoft2,
    fontSize: 14,
  );
  static const TextStyle bodyTextRoboto3 = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontSize: 14,
  );

  // Headline 6 - Medium, Normal
  static const TextStyle headline6 = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontSize: 18,
  );

  // Headline 6 - Medium, Normal
  static const TextStyle headline3Secondary = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.secondary,
    fontSize: 22,
  );

  // Body Text 1 - Regular, Normal
  static const TextStyle bodyText1 = TextStyle(
    fontWeight: FontWeight.normal,
    color: AppColors.complementary,
    fontSize: 18,
  );

  // Body Text 2 - Regular, Smaller
  static const TextStyle bodyText2 = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontSize: 14,
  );

  // Caption Text - Light, Smaller
  static const TextStyle headLine = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.complementary,
    fontSize: 18,
  );

  // Caption Text - Light, Smaller
  static const TextStyle caption = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 12,
  );

  // Button Text - Bold
  static const TextStyle button = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 1.25,
  );

  static TextTheme textTheme = const TextTheme(
    displayLarge: headline1,
    displayMedium: headline2,
    titleLarge: headline6,
    bodyLarge: bodyText2,
    bodyMedium: bodyText2,
    bodySmall: caption,
    labelLarge: button,
  );
}
