import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/constants/app_constants.dart';
import 'package:igmur_images_example/app/constants/app_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.greyBackGround,
        body: SafeArea(
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Text(
                AppConstants.appName,
                style: AppFonts.headLine,
              ),
              const Divider(
                color: AppColors.complementary,
                endIndent: 15,
                indent: 15,
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
