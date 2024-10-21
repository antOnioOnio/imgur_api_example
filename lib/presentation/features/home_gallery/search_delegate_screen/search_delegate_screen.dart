import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/app/constants/app_colors.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/search_delegate_screen/bloc/search_delegate_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/utils/home_gallery_utils.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/widgets/image_list_tile.dart';
import 'package:igmur_images_example/presentation/widgets/custom_circular_loader.dart';

class CustomSearchDelegate extends SearchDelegate<DataEntity?> {
  final SearchDelegateBloc bloc;

  CustomSearchDelegate({required this.bloc});

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.greyBackGround,
        foregroundColor: AppColors.greyBackGround,
        surfaceTintColor: AppColors.greyBackGround,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        /*  filled: true,*/
        fillColor: AppColors.greyBackGround,
        border: InputBorder.none,
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Container(
        color: AppColors.greyBackGround,
        child: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        ),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Container(
      color: AppColors.greyBackGround,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        },
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isNotEmpty) {
      bloc.add(SearchDelegateEvent.searchImages(query: query));
    } else {
      return const Center(child: Text('Please enter a search query'));
    }

    return BlocBuilder<SearchDelegateBloc, SearchDelegateState>(
      bloc: bloc,
      builder: (context, state) {
        if (state.screenStatus.isLoading()) {
          return const Center(child: CustomCircularLoader());
        } else if (state.screenStatus.isError()) {
          return const Center(child: Text('Error loading results'));
        } else {
          return state.dataEntityListSearched.isNotEmpty
              ? ImageListTile(
                  list: state.dataEntityListSearched,
                  onFavoritePressed: (dataEntity) {
                    HomeGalleryUtils.handleOnFavoritePressed(
                      context,
                      dataEntity,
                    );
                  },
                )
              : const Center(child: Text('No results found'));
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<SearchDelegateBloc, SearchDelegateState>(
      buildWhen: (previous, current) =>
          previous.recentSearches != current.recentSearches,
      bloc: bloc,
      builder: (context, state) {
        return Column(
          children: [
            if (bloc.state.recentSearches.isNotEmpty)
              ListTile(
                leading: const Icon(Icons.delete_forever),
                title: const Text('Clear all history'),
                onTap: () => bloc.add(
                  const SearchDelegateEvent.deleteHistory(),
                ),
              ),
            Expanded(
              child: ListView.builder(
                itemCount: bloc.state.recentSearches.length,
                itemBuilder: (context, index) {
                  final query = bloc.state.recentSearches[index];

                  return ListTile(
                    title: Text(query),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        bloc.add(
                          SearchDelegateEvent.deleteQueryFromHistory(
                            query: query,
                          ),
                        );
                      },
                    ),
                    onTap: () {
                      this.query = query;
                      showResults(context);
                    },
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
