import 'dart:convert';

import 'package:igmur_images_example/data/models/remote_entities/data_remote_entity.dart';
import 'package:igmur_images_example/data/repositories/data_source_contracts/local/app_local_datasource_contract.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLocalDataSource implements AppLocalDataSourceContract {
  final SharedPreferences sharedPreferencesInstance;
  final String _favoritesKey = 'galleryFavorites';
  final String _recentSearchesKey = 'recentSearches';

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

  @override
  Future<List<String>> getRecentSearches() async {
    final jsonString = sharedPreferencesInstance.getString(_recentSearchesKey);
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);

      return jsonList.cast<String>();
    }

    return [];
  }

  @override
  Future<void> storeSearchQuery({required String search}) async {
    final recentSearches = await getRecentSearches();
    if (!recentSearches.contains(search)) {
      recentSearches.add(search);
      final jsonString = json.encode(recentSearches);
      await sharedPreferencesInstance.setString(_recentSearchesKey, jsonString);
    }
  }

  @override
  Future<void> deleteSearchHistory() async{
    await sharedPreferencesInstance.remove(_recentSearchesKey);

  }

  @override
  Future<void> deleteSearchQuery({required String search}) async{
    final recentSearches = await getRecentSearches();
    recentSearches.remove(search);
    final jsonString = json.encode(recentSearches);
    await sharedPreferencesInstance.setString(_recentSearchesKey, jsonString);
  }

  Future<void> _saveFavorites(List<DataRemoteEntity> favorites) async {
    final jsonString =
        json.encode(favorites.map((item) => item.toJson()).toList());
    await sharedPreferencesInstance.setString(_favoritesKey, jsonString);
  }
}
