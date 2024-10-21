import 'package:igmur_images_example/app/types/errors/network_error.dart';
import 'package:igmur_images_example/app/types/repository_error.dart';
import 'package:igmur_images_example/app/types/result.dart';
import 'package:igmur_images_example/data/models/mappers/mappers.dart';
import 'package:igmur_images_example/data/models/remote_entities/response_remote_entity.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/local/app_local_datasource_contract.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/remote/app_remote_data_source_contract.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/entities/response_entity.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';
import 'package:igmur_images_example/domain/repository_contracts/app_repository_contract.dart';

class AppRepository implements AppRepositoryContract {
  final AppRemoteDataSourceContract _appRemoteDataSourceContract;
  final AppLocalDataSourceContract _appLocalDataSourceContract;

  AppRepository(
    this._appRemoteDataSourceContract,
    this._appLocalDataSourceContract,
  );

  @override
  Future<Result<List<DataEntity>>> getGalleryImages({
    required GalleryRequest request,
  }) async {
    try {
      final data = await _appRemoteDataSourceContract.getGalleryImages(
        request: request.toGalleryRemoteRequest(),
      );

      return Result.success(
        await _crossReferenceFavorites(responseEntities: data),
      );
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  @override
  Future<Result<List<DataEntity>>> searchGalleryImages({
    required SearchGalleryRequest request,
  }) async {
    try {
      await storeSearchQuery(search: request.query);
      final data = await _appRemoteDataSourceContract.searchGalleryImages(
        request: request.toSearchGalleryRemoteRequest(),
      );

      return Result.success(
        await _crossReferenceFavorites(responseEntities: data),
      );
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  @override
  Future<Result<bool>> deleteGalleryFavorite({
    required DataEntity dataEntity,
  }) async {
    try {
      await _appLocalDataSourceContract.deleteGalleryFavorite(
        dataEntity: dataEntity.toRemoteEntity(),
      );

      return const Result.success(true);
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  @override
  Future<Result<List<DataEntity>>> getGalleryFavorites() async {
    try {
      final data = await _appLocalDataSourceContract.getGalleryFavorites();

      return Result.success(data.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  @override
  Future<Result<bool>> saveGalleryFavorite({
    required DataEntity dataEntity,
  }) async {
    try {
      await _appLocalDataSourceContract.saveGalleryFavorite(
        dataEntity: dataEntity.toRemoteEntity(),
      );

      return const Result.success(true);
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  @override
  Future<Result<List<String>>> getRecentSearches() async {
    try {
      final data = await _appLocalDataSourceContract.getRecentSearches();

      return Result.success(data);
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  @override
  Future<Result<bool>> storeSearchQuery({required String search}) async {
    try {
      await _appLocalDataSourceContract.storeSearchQuery(search: search);

      return const Result.success(true);
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  @override
  Future<Result<bool>> deleteSearchHistory() async {
    try {
      await _appLocalDataSourceContract.deleteSearchHistory();

      return const Result.success(true);
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  @override
  Future<Result<bool>> deleteSearchQuery({required String search}) async {
    try {
      await _appLocalDataSourceContract.deleteSearchQuery(search: search);

      return const Result.success(true);
    } catch (error) {
      return Result.failure(
        error: RepositoryError.fromDataSourceError(
          NetworkError.fromException(error),
        ),
      );
    }
  }

  /// This method filters out animated images from the provided response entities
  /// and cross-references the remaining images with the locally stored favorite images.
  ///
  /// It performs the following steps:
  /// 1. Converts the `ResponseRemoteEntity` to a `ResponseEntity` and filters out animated images.
  /// 2. Retrieves the list of favorite images from the local data source.
  /// 3. Creates a set of favorite image IDs for quick lookup.
  /// 4. Maps the filtered images to a new list, marking each image as a favorite if its ID is found in the set of favorite IDs.
  ///
  /// This ensures that the returned list of images contains only non-animated images,
  /// with the favorite status correctly set based on the locally stored favorites.

  Future<List<DataEntity>> _crossReferenceFavorites({
    required ResponseRemoteEntity responseEntities,
  }) async {
    final remoteEntities =
        responseEntities.toEntity().filterOutAnimatedImages();
    final favoriteEntities =
        await _appLocalDataSourceContract.getGalleryFavorites();
    final favoriteIds = favoriteEntities.map((e) => e.id).toSet();

    return remoteEntities.map((entity) {
      return entity.copyWith(favorite: favoriteIds.contains(entity.id));
    }).toList();
  }
}
