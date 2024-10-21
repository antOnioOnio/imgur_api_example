part of 'fav_bloc.dart';

@freezed
class FavEvent with _$FavEvent {
  const factory FavEvent.loadFavorites() = _LoadFavorites;

  const factory FavEvent.handleFavoritePressed({
    required DataEntity dataEntity,
  }) = _AddDataEntityToFavorites;
}
