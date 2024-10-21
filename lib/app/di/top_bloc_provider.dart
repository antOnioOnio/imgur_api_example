import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/search_delegate_screen/bloc/search_delegate_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/fav_tab/bloc/fav_bloc.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/home_tab/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/splash/splash_bloc/splash_bloc.dart';
import 'package:igmur_images_example/presentation/features/splash/splash_bloc/splash_event.dart';

class TopBlocProviders extends StatelessWidget {
  final Widget child;
  final _getIt = GetIt.instance;

  TopBlocProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _getIt<SplashBloc>()
            ..add(
              const SplashEvent.unSplashInNMilliseconds(3000),
            ),
        ),
        BlocProvider(
          create: (context) => _getIt<HomeGalleryScreenBloc>(),
        ),
        BlocProvider(
          create: (context) => _getIt<SearchDelegateBloc>(),
        ),
        BlocProvider(
          create: (context) => _getIt<FavBloc>(),
        ),
      ],
      child: child,
    );
  }
}
