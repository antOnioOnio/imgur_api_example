part of 'home_gallery_screen_bloc.dart';

@freezed
class HomeGalleryScreenState with _$HomeGalleryScreenState {
  const factory HomeGalleryScreenState({
    required ScreenStatus screenStatus,
  }) = _HomeGalleryScreenState;

  factory HomeGalleryScreenState.initial() {
    return const HomeGalleryScreenState(
      screenStatus: ScreenStatus.initial(),
    );
  }
}
