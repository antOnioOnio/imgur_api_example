import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:igmur_images_example/app/config/app_theme.dart';
import 'package:igmur_images_example/app/constants/app_constants.dart';
import 'package:igmur_images_example/app/di/di.dart' as app_di;
import 'package:igmur_images_example/app/di/top_bloc_provider.dart';
import 'package:igmur_images_example/app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  app_di.initDi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: appRoutes,
  );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopBlocProviders(
      child: MaterialApp.router(
        theme: AppTheme.theme(),
        debugShowCheckedModeBanner: false,
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: AppConstants.appName,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('es', ''),
          Locale('en', ''),
        ],
      ),
    );
  }
}
