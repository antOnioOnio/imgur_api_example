import 'package:igmur_images_example/app/types/errors/network_error.dart';
import 'package:igmur_images_example/app/types/repository_error.dart';
import 'package:igmur_images_example/app/types/result.dart';
import 'package:igmur_images_example/data/models/mappers/mappers.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/remote/app_remote_data_source_contract.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/entities/response_entity.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';
import 'package:igmur_images_example/domain/repository_contracts/app_repository_contract.dart';

class AppRepository implements AppRepositoryContract {
  final AppRemoteDataSourceContract _appRemoteDataSourceContract;

  AppRepository(
    this._appRemoteDataSourceContract,
  );

  @override
  Future<Result<List<DataEntity>>> getGalleryImages({
    required GalleryRequest request,
  }) async {
    try {
      final data = await _appRemoteDataSourceContract.getGalleryImages(
        request: request.toGalleryRemoteRequest(),
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
}
