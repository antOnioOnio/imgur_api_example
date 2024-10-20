import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/extensions/date_extensions.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_widget.dart';
import 'package:igmur_images_example/presentation/widgets/text_icon.dart';

class ImageDetailScreen extends StatelessWidget {
  final DataEntity dataEntity;

  const ImageDetailScreen({super.key, required this.dataEntity});

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
        child: BlocSelector<HomeGalleryScreenBloc, HomeGalleryScreenState,
            DataEntity>(
          selector: (state) {
            return state.getDataEntityById(dataEntity.id);
          },
          builder: (context, dataEntity) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataEntity.title ?? 'No Title',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      DateTimeExtension.fromMillisecondsToDateString(
                        dataEntity.datetime ?? 0,
                      ),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    IconButton(
                      icon: Icon(
                        dataEntity.favorite == true
                            ? Icons.star
                            : Icons.star_border,
                        color: AppColors.primary,
                      ),
                      onPressed: () =>
                          context.read<HomeGalleryScreenBloc>().add(
                                HomeGalleryScreenEvent.handleFavoritePressed(
                                  dataEntity: dataEntity,
                                ),
                              ),
                    ),
                    TextIcon(
                      icon: Icons.thumb_up_alt_outlined,
                      text: '${dataEntity.ups}',
                      color: AppColors.primary,
                    ),
                    TextIcon(
                      icon: Icons.thumb_down_alt_outlined,
                      text: '${dataEntity.downs}',
                      color: AppColors.error,
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    itemCount: dataEntity.images?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ImageWidget(
                        imageLink: dataEntity.images?[index].link ?? '',
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
