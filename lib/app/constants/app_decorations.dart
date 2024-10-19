import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/constants/app_spacing.dart';

abstract class AppDecorations {
  static BoxDecoration boxDecoration = BoxDecoration(
    color: AppColors.onSurface,
    borderRadius: BorderRadius.circular(AppSpacing.spaceSmall),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        offset: const Offset(0, 1),
        blurRadius: 1.5,
      ),
    ],
  );
}
