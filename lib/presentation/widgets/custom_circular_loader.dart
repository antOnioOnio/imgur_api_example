import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';

class CustomCircularLoader extends StatelessWidget {
  const CustomCircularLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 45,
        width: 45,
        child: CircularProgressIndicator(
          color: AppColors.background,
          backgroundColor: AppColors.primary,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
