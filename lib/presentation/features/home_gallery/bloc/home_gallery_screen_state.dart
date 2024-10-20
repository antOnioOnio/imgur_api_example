part of 'home_gallery_screen_bloc.dart';

@freezed
class HomeGalleryScreenState with _$HomeGalleryScreenState {
  const factory HomeGalleryScreenState({
    required ScreenStatus screenStatus,
    required List<DataEntity> dataEntityList,
    required int currentPage,
  }) = _HomeGalleryScreenState;

  factory HomeGalleryScreenState.initial() {
    return const HomeGalleryScreenState(
      screenStatus: ScreenStatus.initial(),
      dataEntityList: [],
      currentPage: 0,
    );
  }
}

extension FavoriteImagesExtension on HomeGalleryScreenState {
  List<DataEntity> get favoriteImages {
    return dataEntityList.where((element) => element.favorite == true).toList();
  }

  DataEntity getDataEntityById(String id) {
    return dataEntityList.where((element) => element.id == id).first;
  }
}
