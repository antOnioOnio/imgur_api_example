part of 'home_gallery_screen_bloc.dart';

@freezed
class HomeGalleryScreenEvent with _$HomeGalleryScreenEvent {
  const factory HomeGalleryScreenEvent.fetchImages() = _FetchImages;

  const factory HomeGalleryScreenEvent.handleFavoritePressed({
    required DataEntity dataEntity,
  }) = _AddDataEntityToFavorites;


}
