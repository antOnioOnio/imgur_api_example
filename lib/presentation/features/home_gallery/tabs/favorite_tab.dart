import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_fonts.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_list_tile.dart';

class FavoriteTab extends StatelessWidget {
  final List<DataEntity> favoriteImages;
  final ScrollController scrollController;

  const FavoriteTab({
    super.key,
    required this.favoriteImages,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return favoriteImages.isEmpty
        ? const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.image_not_supported,
                  size: 80,
                  color: Colors.grey,
                ),
                SizedBox(height: 16),
                Text(
                  'No favorites added yet',
                  style: AppFonts.headLine,
                ),
              ],
            ),
          )
        : Column(
            children: [
              Expanded(
                child: ImageListTile(
                  list: favoriteImages,
                ),
              ),
            ],
          );
  }
}
