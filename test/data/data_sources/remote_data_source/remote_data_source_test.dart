import 'package:flutter_test/flutter_test.dart';
import 'package:igmur_images_example/data/data_sources/remote_data_source/api/app_api.dart';
import 'package:igmur_images_example/data/data_sources/remote_data_source/app_remote_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../instruments/model_instruments.dart';
import 'remote_data_source_test.mocks.dart';

@GenerateMocks([AppApi])
void main() {
  late MockAppApi mockApi;
  late AppRemoteDataSource dataSource;

  setUp(() {
    mockApi = MockAppApi();
    dataSource = AppRemoteDataSource(mockApi);
  });

  group('AppRemoteDataSource', () {
    test('should get gallery images', () async {
      final request = ModelInstruments.getGalleryRemoteRequest();

      final response = ModelInstruments.getResponseRemoteEntity();

      when(mockApi.getGalleryImages(
        request.section,
        request.sort,
        request.window,
        request.page,
        request.showViral,
        request.mature,
        request.albumPreviews,
      )).thenAnswer((_) async => response);

      final result = await dataSource.getGalleryImages(request: request);

      expect(result, response);
      verify(mockApi.getGalleryImages(
        request.section,
        request.sort,
        request.window,
        request.page,
        request.showViral,
        request.mature,
        request.albumPreviews,
      )).called(1);
    });
  });
}
