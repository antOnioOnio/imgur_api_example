part of '../di.dart';

final apiModulesDi = GetIt.instance;

void _apiModulesInit() {
  apiModulesDi.registerLazySingleton(() {
    var dioClient = DioClient();

    dioClient.addInterceptors([
      HeadersInterceptor(),
      CurlLoggerDioInterceptor(printOnSuccess: true),
    ]);
    dioClient.addBadCertificateCallBack();

    return dioClient.getDio();
  });

  apiModulesDi.registerLazySingleton(
    () => AppApi(
      apiModulesDi(),
      baseUrl: AppUrls.baseUrl,
    ),
  );
}
