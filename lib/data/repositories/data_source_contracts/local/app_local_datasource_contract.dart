import 'package:igmur_images_example/data/models/remote_entities/data_remote_entity.dart';

abstract class AppLocalDataSourceContract {
  Future<List<DataRemoteEntity>> getGalleryFavorites();

  Future<void> saveGalleryFavorite({
    required DataRemoteEntity dataEntity,
  });

  Future<void> deleteGalleryFavorite({
    required DataRemoteEntity dataEntity,
  });
}
