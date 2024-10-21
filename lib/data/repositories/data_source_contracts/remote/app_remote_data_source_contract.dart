import 'package:igmur_images_example/data/models/remote_entities/response_remote_entity.dart';
import 'package:igmur_images_example/data/models/requests/gallery_remote_request.dart';

abstract class AppRemoteDataSourceContract {
  Future<ResponseRemoteEntity> getGalleryImages({
    required GalleryRemoteRequest request,
  });

  Future<ResponseRemoteEntity> searchGalleryImages({
    required SearchGalleryRemoteRequest request,
  });
}
