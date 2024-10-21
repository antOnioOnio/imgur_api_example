import 'package:flutter_test/flutter_test.dart';
import 'package:igmur_images_example/data/data_sources/local_data_source/app_local_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../instruments/model_instruments.dart';


void main() {
  late AppLocalDataSource dataSource;
  late SharedPreferences sharedPreferences;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});

    sharedPreferences = await SharedPreferences.getInstance();
    dataSource =
        AppLocalDataSource(sharedPreferencesInstance: sharedPreferences);
  });

  group('AppLocalDataSource', () {
    test('should save a gallery favorite', () async {
      await dataSource.saveGalleryFavorite(
        dataEntity: ModelInstruments.getDataRemoteEntity(),
      );

      final favorites = await dataSource.getGalleryFavorites();
      expect(favorites, contains(ModelInstruments.getDataRemoteEntity()));
    });

    test('should delete a gallery favorite', () async {
      final dataEntity = ModelInstruments.getDataRemoteEntity();

      await dataSource.saveGalleryFavorite(dataEntity: dataEntity);
      await dataSource.deleteGalleryFavorite(dataEntity: dataEntity);

      final favorites = await dataSource.getGalleryFavorites();
      expect(favorites, isNot(contains(dataEntity)));
    });
    test('should get all gallery favorites', () async {
      final dataEntity1 = ModelInstruments.getDataRemoteEntity();
      final dataEntity2 =
          ModelInstruments.getDataRemoteEntity().copyWith(id: 'newId');

      await dataSource.saveGalleryFavorite(dataEntity: dataEntity1);
      await dataSource.saveGalleryFavorite(dataEntity: dataEntity2);

      final favorites = await dataSource.getGalleryFavorites();
      expect(favorites, containsAll([dataEntity1, dataEntity2]));
    });
  });
}
