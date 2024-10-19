import 'package:go_router/go_router.dart';
import 'package:igmur_images_example/presentation/features/home/home_screen.dart';
import 'package:igmur_images_example/presentation/features/splash/splash_controller.dart';

List<GoRoute> appRoutes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashController(),
    routes: [
      GoRoute(
        path: 'homeScreen',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  ),
];
