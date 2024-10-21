import 'package:igmur_images_example/data/data_sources/remote_data_source/api/app_api.dart';
import 'package:igmur_images_example/data/models/remote_entities/response_remote_entity.dart';
import 'package:igmur_images_example/data/models/requests/gallery_remote_request.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/remote/app_remote_data_source_contract.dart';

class AppRemoteDataSource implements AppRemoteDataSourceContract {
  final AppApi _api;

  AppRemoteDataSource(this._api);

  @override
  Future<ResponseRemoteEntity> getGalleryImages({
    required GalleryRemoteRequest request,
  }) async {
    return _api.getGalleryImages(
      request.section,
      request.sort,
      request.window,
      request.page,
      request.showViral,
      request.mature,
      request.albumPreviews,
    );
  }

  @override
  Future<ResponseRemoteEntity> searchGalleryImages({
    required SearchGalleryRemoteRequest request,
  }) async {
    return _api.searchGalleryImages(
      request.sort,
      request.window,
      request.page,
      request.query,
    );
  }
}
