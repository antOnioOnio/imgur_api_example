part of '../di.dart';

final uiModulesDi = GetIt.instance;

void _uiModulesInit() {
  uiModulesDi.registerFactory(
    () => SplashBloc(),
  );
  uiModulesDi.registerFactory(
    () => HomeGalleryScreenBloc(
      repositoryContract: uiModulesDi(),
    ),
  );
}
