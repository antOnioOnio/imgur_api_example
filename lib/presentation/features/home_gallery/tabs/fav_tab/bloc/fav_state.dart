part of 'fav_bloc.dart';

@freezed
class FavState with _$FavState {
  const factory FavState({
    required ScreenStatus screenStatus,
    required List<DataEntity> dataEntityListFavorites,
  }) = _FavState;

  factory FavState.initial() {
    return const FavState(
      screenStatus: ScreenStatus.initial(),
      dataEntityListFavorites: [],
    );
  }
}
