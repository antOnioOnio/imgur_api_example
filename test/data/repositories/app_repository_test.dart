import 'package:flutter_test/flutter_test.dart';
import 'package:igmur_images_example/app/types/repository_error.dart';
import 'package:igmur_images_example/app/types/result.dart';
import 'package:igmur_images_example/data/models/mappers/mappers.dart';
import 'package:igmur_images_example/data/repositories/app_repository.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/local/app_local_datasource_contract.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/remote/app_remote_data_source_contract.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/entities/response_entity.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../instruments/model_instruments.dart';
import 'app_repository_test.mocks.dart';

@GenerateMocks([AppRemoteDataSourceContract, AppLocalDataSourceContract])
void main() {
  late MockAppRemoteDataSourceContract mockAppRemoteDataSourceContract;
  late MockAppLocalDataSourceContract mockAppLocalDataSourceContract;
  late AppRepository repository;

  setUp(() {
    mockAppRemoteDataSourceContract = MockAppRemoteDataSourceContract();
    mockAppLocalDataSourceContract = MockAppLocalDataSourceContract();
    repository = AppRepository(
      mockAppRemoteDataSourceContract,
      mockAppLocalDataSourceContract,
    );
  });

  group('AppRepository', () {
    test('should get gallery images', () async {
      final request = ModelInstruments.getGalleryRequest();
      final response = ModelInstruments.getResponseRemoteEntity();
      final dataEntities = response.toEntity().filterOutAnimatedImages();

      when(mockAppRemoteDataSourceContract.getGalleryImages(
        request: request.toGalleryRemoteRequest(),
      )).thenAnswer((_) async => response);

      when(mockAppLocalDataSourceContract.getGalleryFavorites())
          .thenAnswer((_) async => []);

      final result = await repository.getGalleryImages(request: request);

      expect((result as Success<List<DataEntity>>).data, dataEntities);
      verify(mockAppRemoteDataSourceContract.getGalleryImages(
        request: request.toGalleryRemoteRequest(),
      )).called(1);
    });

    test('should handle the error', () async {
      final request = ModelInstruments.getGalleryRequest();

      when(mockAppRemoteDataSourceContract.getGalleryImages(
        request: request.toGalleryRemoteRequest(),
      )).thenThrow(Exception());

      final result = await repository.getGalleryImages(request: request);
      var error = (result as Failure).error;

      expect(error, const RepositoryError.serverError());
    });
  });
}
