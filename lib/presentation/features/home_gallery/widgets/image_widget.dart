import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_decorations.dart';
import 'package:igmur_images_example/app/constants/app_spacing.dart';

class ImageWidget extends StatelessWidget {
  final String imageLink;
  final Function? onTap;

  const ImageWidget({super.key, required this.imageLink, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(),
      child: Container(
        margin: const EdgeInsets.all(AppSpacing.spaceMedium),
        decoration: AppDecorations.boxDecoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSpacing.spaceMedium),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.network(
                imageLink,
                width: double.infinity,
                fit: BoxFit.fill,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;

                  return const SizedBox.shrink();
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.error, size: 50),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
