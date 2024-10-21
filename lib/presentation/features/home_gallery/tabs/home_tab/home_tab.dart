import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/search_delegate_screen/bloc/search_delegate_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/search_delegate_screen/search_delegate_screen.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/home_tab/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/utils/home_gallery_utils.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_list_tile.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/search_bar_widget.dart';
import 'package:igmur_images_example/presentation/widgets/custom_circular_loader.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeGalleryScreenBloc, HomeGalleryScreenState>(
      builder: (context, state) {
        return state.screenStatus.isLoading()
            ? const CustomCircularLoader()
            : state.screenStatus.isError()
                ? Center(
                    child: GestureDetector(
                      onTap: () {
                        context.read<HomeGalleryScreenBloc>().add(
                              const HomeGalleryScreenEvent.fetchImages(),
                            );
                      },
                      child: const Text(
                        'error trying to get images, please try again',
                      ),
                    ),
                  )
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
                                !state.screenStatus.isLoadingMore()) {
                              context.read<HomeGalleryScreenBloc>().add(
                                    const HomeGalleryScreenEvent.fetchImages(),
                                  );
                            }

                            return false;
                          },
                          child: ImageListTile(
                            list: state.dataEntityListResponse,
                            onFavoritePressed: (dataEntity) =>
                                HomeGalleryUtils.handleOnFavoritePressed(
                              context,
                              dataEntity,
                            ),
                          ),
                        ),
                      ),
                      state.screenStatus.isLoadingMore()
                          ? const CustomCircularLoader()
                          : const SizedBox.shrink(),
                    ],
                  );
      },
    );
  }
}
