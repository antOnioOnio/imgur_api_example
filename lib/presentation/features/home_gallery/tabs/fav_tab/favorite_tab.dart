import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/app/constants/app_fonts.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/fav_tab/bloc/fav_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/utils/home_gallery_utils.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_list_tile.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavBloc, FavState>(
      builder: (context, state) {
        return state.dataEntityListFavorites.isEmpty
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
                      list: state.dataEntityListFavorites,
                      onFavoritePressed: (dataEntity) {
                        HomeGalleryUtils.handleOnFavoritePressed(
                          context,
                          dataEntity,
                        );
                      },
                    ),
                  ),
                ],
              );
      },
    );
  }
}
