import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/fav_tab/favorite_tab.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/home_tab/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/home_tab/home_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    return const TabBarView(
                      children: [
                        HomeTab(),
                        FavoriteTab(),
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
