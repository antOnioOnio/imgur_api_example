import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/routes/app_paths.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_widget.dart';

class ImageListTile extends StatefulWidget {
  final List<DataEntity> list;
  final Function(DataEntity) onFavoritePressed;

  const ImageListTile({
    super.key,
    required this.list,
    required this.onFavoritePressed,
  });

  @override
  State<ImageListTile> createState() => _ImageListTileState();
}

class _ImageListTileState extends State<ImageListTile>
    with AutomaticKeepAliveClientMixin<ImageListTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        final dataEntity = widget.list[index];

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
                    dataEntity.favorite == true
                        ? Icons.star
                        : Icons.star_border,
                    color: AppColors.primary,
                  ),
                  onPressed: () => widget.onFavoritePressed(dataEntity),
                ),
              ],
            ),
            const Divider(
              color: AppColors.greySoft,
            ),
          ],
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
