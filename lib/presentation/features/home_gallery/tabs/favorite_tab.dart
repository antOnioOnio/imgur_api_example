import 'package:flutter/material.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_list_tile.dart';

class FavoriteTab extends StatelessWidget {
  final List<DataEntity> favoriteImages;

  const FavoriteTab({super.key, required this.favoriteImages});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ImageListTile(list: favoriteImages),
        ),
      ],
    );
  }
}
