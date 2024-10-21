part of 'search_delegate_bloc.dart';

@freezed
class SearchDelegateEvent with _$SearchDelegateEvent {
  const factory SearchDelegateEvent.searchImages({required String query}) =
      _SearchImages;

  const factory SearchDelegateEvent.deleteQueryFromHistory({
    required String query,
  }) = _DeleteQueryFromHistory;

  const factory SearchDelegateEvent.deleteHistory() = _DeleteHistory;

  const factory SearchDelegateEvent.handleFavoritePressed({
    required DataEntity dataEntity,
  }) = _AddDataEntityToFavorites;

  const factory SearchDelegateEvent.getRecentSearches() = _GetRecentSearches;
}
