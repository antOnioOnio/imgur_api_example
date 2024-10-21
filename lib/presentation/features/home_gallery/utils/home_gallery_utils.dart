import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/search_delegate_screen/bloc/search_delegate_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/fav_tab/bloc/fav_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/home_tab/bloc/home_gallery_screen_bloc.dart';

abstract class HomeGalleryUtils {
  static void handleOnFavoritePressed(
    BuildContext context,
    DataEntity dataEntity,
  ) {
    context.read<HomeGalleryScreenBloc>().add(
          HomeGalleryScreenEvent.handleFavoritePressed(
            dataEntity: dataEntity,
          ),
        );
    context.read<FavBloc>().add(
          FavEvent.handleFavoritePressed(
            dataEntity: dataEntity,
          ),
        );
    context.read<SearchDelegateBloc>().add(
          SearchDelegateEvent.handleFavoritePressed(
            dataEntity: dataEntity,
          ),
        );
  }
}
