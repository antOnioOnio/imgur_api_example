import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/routes/app_paths.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_widget.dart';

class ImageTile extends StatelessWidget {
  final DataEntity dataEntity;
  final Function(DataEntity) onFavoritePressed;

  const ImageTile({
    super.key,
    required this.dataEntity,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageWidget(
          imageLink: dataEntity.images?.first.link ?? '',
          onTap: () {
            context.go(AppRoutePath.imageDetailScreen, extra: dataEntity);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                dataEntity.favorite == true ? Icons.star : Icons.star_border,
                color: AppColors.primary,
              ),
              onPressed: () => onFavoritePressed(dataEntity),
            ),
          ],
        ),
        const Divider(
          color: AppColors.greySoft,
        ),
      ],
    );
  }
}
