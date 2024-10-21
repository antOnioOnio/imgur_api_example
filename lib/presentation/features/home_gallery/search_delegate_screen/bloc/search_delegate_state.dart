part of 'search_delegate_bloc.dart';

@freezed
class SearchDelegateState with _$SearchDelegateState {
  const factory SearchDelegateState({
    required ScreenStatus screenStatus,
    required List<DataEntity> dataEntityListSearched,
    required int currentPage,
    required List<String> recentSearches,
  }) = _SearchDelegateState;

  factory SearchDelegateState.initial() {
    return const SearchDelegateState(
      screenStatus: ScreenStatus.initial(),
      dataEntityListSearched: [],
      currentPage: 0,
      recentSearches: [],
    );
  }
}
