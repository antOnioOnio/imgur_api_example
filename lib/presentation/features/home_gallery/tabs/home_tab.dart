import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/entities/image_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_list_tile.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/search_bar_widget.dart';
import 'package:igmur_images_example/presentation/widgets/custom_circular_loader.dart';

class HomeTab extends StatelessWidget {
  final bool isLoading;
  final List<DataEntity> dataEntity;

  const HomeTab({
    super.key,
    required this.isLoading,
    required this.dataEntity,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CustomCircularLoader()
        : Column(
            children: [
              SearchBarWidget(
                onSearch: (value) => DoNothingAction(),
              ),
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification scrollInfo) {
                    if (scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent) {
                      context.read<HomeGalleryScreenBloc>().add(
                            const HomeGalleryScreenEvent.fetchImages(),
                          );
                    }

                    return false;
                  },
                  child: ImageListTile(list: dataEntity),
                ),
              ),
            ],
          );
  }
}
