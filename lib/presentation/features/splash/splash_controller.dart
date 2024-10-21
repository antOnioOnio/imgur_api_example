import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:igmur_images_example/app/routes/app_paths.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/home_tab/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/splash/splash_bloc/splash_bloc.dart';
import 'package:igmur_images_example/presentation/features/splash/splash_bloc/splash_state.dart';
import 'package:igmur_images_example/presentation/features/splash/splash_screen.dart';

class SplashController extends StatelessWidget {
  const SplashController({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.isSplashed()) {
          context.push(AppRoutePath.homeScreen);
          context
              .read<HomeGalleryScreenBloc>()
              .add(const HomeGalleryScreenEvent.fetchImages());
        }
      },
      builder: (context, state) {
        return const SplashScreen();
      },
    );
  }
}
