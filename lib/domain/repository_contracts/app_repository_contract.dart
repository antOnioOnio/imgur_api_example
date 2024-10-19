import 'package:igmur_images_example/app/types/result.dart';
import 'package:igmur_images_example/domain/models/entities/response_entity.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';

abstract class AppRepositoryContract {
  Future<Result<ResponseEntity>> getGalleryImages({
    required GalleryRequest request,
  });
}
