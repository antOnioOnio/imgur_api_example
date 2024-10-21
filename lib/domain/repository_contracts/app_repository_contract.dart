import 'package:igmur_images_example/app/types/result.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';

abstract class AppRepositoryContract {
  Future<Result<List<DataEntity>>> getGalleryImages({
    required GalleryRequest request,
  });

  Future<Result<List<DataEntity>>> searchGalleryImages({
    required SearchGalleryRequest request,
  });
}
