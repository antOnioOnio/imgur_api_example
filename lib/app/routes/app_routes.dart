import 'package:go_router/go_router.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/home_gallery_screen.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/image_detail/image_detail_screen.dart';
import 'package:igmur_images_example/presentation/features/splash/splash_controller.dart';

List<GoRoute> appRoutes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashController(),
    routes: [
      GoRoute(
        path: 'homeScreen',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'imageDetailScreen',
            builder: (context, state) {
              final image = state.extra as DataEntity;

              return ImageDetailScreen(dataEntity: image);
            },
          ),
        ],
      ),
    ],
  ),
];
