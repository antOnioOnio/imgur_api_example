import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_decorations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: AppDecorations.boxDecoration,
            ),
          ],
        ),
      ),
    );
  }
}
