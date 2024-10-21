part of 'home_gallery_screen_bloc.dart';

@freezed
class HomeGalleryScreenState with _$HomeGalleryScreenState {
  const factory HomeGalleryScreenState({
    required ScreenStatus screenStatus,
    required List<DataEntity> dataEntityListResponse,
    required List<DataEntity> dataEntityListFavorites,
    required int currentPage,
  }) = _HomeGalleryScreenState;

  factory HomeGalleryScreenState.initial() {
    return const HomeGalleryScreenState(
      screenStatus: ScreenStatus.initial(),
      dataEntityListResponse: [],
      dataEntityListFavorites: [],
      currentPage: 0,
    );
  }
}

extension FavoriteImagesExtension on HomeGalleryScreenState {
  DataEntity getDataEntityById(String id) =>
      dataEntityListResponse.where((element) => element.id == id).first;
}
