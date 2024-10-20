import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/favorite_tab.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/home_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _homeScrollController;
  late ScrollController _favoritesScrollController;

  @override
  void initState() {
    super.initState();
    _homeScrollController = ScrollController();
    _favoritesScrollController = ScrollController();
  }

  @override
  void dispose() {
    _homeScrollController.dispose();
    _favoritesScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: PopScope(
        canPop: false,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const TabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Favorites'),
              ],
              isScrollable: true,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child:
                BlocBuilder<HomeGalleryScreenBloc, HomeGalleryScreenState>(
                  builder: (context, state) {
                    return TabBarView(
                      children: [
                        HomeTab(
                          isLoading: state.screenStatus.isLoading(),
                          dataEntity: state.dataEntityList,
                          isLoadingMore: state.screenStatus.isLoadingMore(),
                        ),
                        FavoriteTab(
                          favoriteImages: state.favoriteImages,
                          scrollController: _favoritesScrollController,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
