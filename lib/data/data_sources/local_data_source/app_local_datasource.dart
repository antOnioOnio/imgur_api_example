import 'dart:convert';

import 'package:igmur_images_example/data/models/remote_entities/data_remote_entity.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/local/app_local_datasource_contract.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLocalDataSource implements AppLocalDataSourceContract {
  final SharedPreferences sharedPreferencesInstance;
  final String _favoritesKey = 'galleryFavorites';

  AppLocalDataSource({
    required this.sharedPreferencesInstance,
  });

  @override
  Future<void> deleteGalleryFavorite({
    required DataRemoteEntity dataEntity,
  }) async {
    final favorites = await getGalleryFavorites();
    favorites.removeWhere((item) => item.id == dataEntity.id);
    await _saveFavorites(favorites);
  }

  @override
  Future<List<DataRemoteEntity>> getGalleryFavorites() async {
    final jsonString = sharedPreferencesInstance.getString(_favoritesKey);
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);

      return jsonList
          .map((jsonItem) => DataRemoteEntity.fromJson(jsonItem))
          .toList();
    }

    return [];
  }

  @override
  Future<void> saveGalleryFavorite({
    required DataRemoteEntity dataEntity,
  }) async {
    final favorites = await getGalleryFavorites();
    favorites.add(dataEntity);
    await _saveFavorites(favorites);
  }

  Future<void> _saveFavorites(List<DataRemoteEntity> favorites) async {
    final jsonString =
        json.encode(favorites.map((item) => item.toJson()).toList());
    await sharedPreferencesInstance.setString(_favoritesKey, jsonString);
  }
}
