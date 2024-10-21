import 'package:flutter/material.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/extensions/date_extensions.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/utils/home_gallery_utils.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_widget.dart';
import 'package:igmur_images_example/presentation/widgets/text_icon.dart';

class ImageDetailScreen extends StatefulWidget {
  final DataEntity dataEntity;

  const ImageDetailScreen({super.key, required this.dataEntity});

  @override
  State<ImageDetailScreen> createState() => _ImageDetailScreenState();
}

class _ImageDetailScreenState extends State<ImageDetailScreen> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.dataEntity.favorite ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.dataEntity.title ?? 'No Title',
              maxLines: 2,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  DateTimeExtension.fromMillisecondsToDateString(
                    widget.dataEntity.datetime ?? 0,
                  ),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.star : Icons.star_border,
                    color: AppColors.primary,
                  ),
                  onPressed: () => handleFavorite(),
                ),
                TextIcon(
                  icon: Icons.thumb_up_alt_outlined,
                  text: '${widget.dataEntity.ups}',
                  color: AppColors.primary,
                ),
                TextIcon(
                  icon: Icons.thumb_down_alt_outlined,
                  text: '${widget.dataEntity.downs}',
                  color: AppColors.error,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                itemCount: widget.dataEntity.images?.length ?? 0,
                itemBuilder: (context, index) {
                  return ImageWidget(
                    imageLink: widget.dataEntity.images?[index].link ?? '',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleFavorite() {
    HomeGalleryUtils.handleOnFavoritePressed(
      context,
      widget.dataEntity,
    );
    setState(() {
      isFavorite = !isFavorite;
    });
  }
}
