import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_tile.dart';

class ImageListTile extends StatelessWidget {
  final List<DataEntity> list;

  const ImageListTile({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ImageTile(
          dataEntity: list[index],
          onFavoritePressed: (dataEntity) {
            context.read<HomeGalleryScreenBloc>().add(
                  HomeGalleryScreenEvent.handleFavoritePressed(
                    dataEntity: list[index],
                  ),
                );
          },
        );
      },
    );
  }
}
