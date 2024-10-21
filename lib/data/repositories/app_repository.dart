import 'package:igmur_images_example/app/types/errors/network_error.dart';
import 'package:igmur_images_example/app/types/repository_error.dart';
import 'package:igmur_images_example/app/types/result.dart';
import 'package:igmur_images_example/data/models/mappers/mappers.dart';
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

      final remoteEntities = data.toEntity().filterOutAnimatedImages();
      final favoriteEntities = await _appLocalDataSourceContract.getGalleryFavorites();

      final favoriteIds = favoriteEntities.map((e) => e.id).toSet();

      final updatedEntities = remoteEntities.map((entity) {
        return entity.copyWith(favorite: favoriteIds.contains(entity.id));
      }).toList();

      return Result.success(updatedEntities);
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
      final data = await _appRemoteDataSourceContract.searchGalleryImages(
        request: request.toSearchGalleryRemoteRequest(),
      );

      return Result.success(data.toEntity().filterOutAnimatedImages());
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
}
