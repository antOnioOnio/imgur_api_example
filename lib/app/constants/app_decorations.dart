import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_spacing.dart';

abstract class AppDecorations {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(AppSpacing.spaceMedium),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 3,
        blurRadius: 7,
        offset: const Offset(0, 3),
      ),
    ],
  );
}
