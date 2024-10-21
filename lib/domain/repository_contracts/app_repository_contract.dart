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

  Future<Result<List<DataEntity>>> getGalleryFavorites();

  Future<Result<bool>> saveGalleryFavorite({
    required DataEntity dataEntity,
  });

  Future<Result<bool>> deleteGalleryFavorite({
    required DataEntity dataEntity,
  });

  Future<Result<List<String>>> getRecentSearches();

  Future<Result<bool>> storeSearchQuery({required String search});

  Future<Result<bool>> deleteSearchQuery({required String search});

  Future<Result<bool>> deleteSearchHistory();
}
