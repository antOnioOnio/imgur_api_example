import 'package:get_it/get_it.dart';
import 'package:igmur_images_example/app/config/environment_config.dart';
import 'package:igmur_images_example/app/constants/app_urls.dart';
import 'package:igmur_images_example/data/data_sources/remote_data_source/api/app_api.dart';
import 'package:igmur_images_example/data/data_sources/remote_data_source/api/network/dio_http_client.dart';
import 'package:igmur_images_example/data/data_sources/remote_data_source/api/network/interceptors/curl_dio_interceptor.dart';
import 'package:igmur_images_example/data/data_sources/remote_data_source/api/network/interceptors/headers_interceptor.dart';
import 'package:igmur_images_example/data/data_sources/remote_data_source/app_remote_data_source.dart';
import 'package:igmur_images_example/data/repositories/app_repository.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/remote/app_remote_data_source_contract.dart';
import 'package:igmur_images_example/domain/repository_contracts/app_repository_contract.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/bloc/home_gallery_screen_bloc.dart';
import 'package:igmur_images_example/presentation/features/splash/splash_bloc/splash_bloc.dart';


part 'modules/api_modules.dart';

part 'modules/remote_modules.dart';

part 'modules/repository_modules.dart';
part 'modules/ui_modules.dart';


void initDi() {
  _apiModulesInit();
  _remoteModulesInit();
  _repositoryModulesInit();
  _uiModulesInit();
}
