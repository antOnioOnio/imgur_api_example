import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/search_delegate_screen/bloc/search_delegate_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/search_delegate_screen/search_delegate_screen.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_list_tile.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/search_bar_widget.dart';
import 'package:igmur_images_example/presentation/widgets/custom_circular_loader.dart';

class HomeTab extends StatelessWidget {
  final bool isLoading;
  final bool isLoadingMore;
  final List<DataEntity> dataEntity;

  const HomeTab({
    super.key,
    required this.isLoading,
    required this.dataEntity,
    required this.isLoadingMore,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CustomCircularLoader()
        : Column(
            children: [
              SearchBarWidget(
                searchDelegate: CustomSearchDelegate(
                  bloc: BlocProvider.of<SearchDelegateBloc>(context),
                ),
              ),
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification scrollInfo) {
                    if (scrollInfo.metrics.pixels ==
                            scrollInfo.metrics.maxScrollExtent &&
                        !isLoadingMore) {
                      context.read<HomeGalleryScreenBloc>().add(
                            const HomeGalleryScreenEvent.fetchImages(),
                          );
                    }

                    return false;
                  },
                  child: ImageListTile(
                    list: dataEntity,
                    onFavoritePressed: (dataEntity) {
                      context.read<HomeGalleryScreenBloc>().add(
                            HomeGalleryScreenEvent.handleFavoritePressed(
                              dataEntity: dataEntity,
                            ),
                          );
                    },
                  ),
                ),
              ),
              isLoadingMore
                  ? const CustomCircularLoader()
                  : const SizedBox.shrink(),
            ],
          );
  }
}
