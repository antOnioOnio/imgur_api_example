import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';
import 'package:igmur_images_example/domain/repository_contracts/app_repository_contract.dart';

part 'search_delegate_bloc.freezed.dart';
part 'search_delegate_event.dart';
part 'search_delegate_state.dart';

class SearchDelegateBloc
    extends Bloc<SearchDelegateEvent, SearchDelegateState> {
  final AppRepositoryContract _repository;

  SearchDelegateBloc({
    required AppRepositoryContract repositoryContract,
  })  : _repository = repositoryContract,
        super(SearchDelegateState.initial()) {
    on<SearchDelegateEvent>((event, emit) async {
      await event.when(
        searchImages: (query) =>
            _mapSearchImagesEventToState(event, emit, query),
        deleteQueryFromHistory: (query) =>
            _mapDeleteQueryFromHistoryEventToState(event, emit, query),
        deleteHistory: () {
          emit(state.copyWith(recentSearches: []));
        },
        handleFavoritePressed: (dataEntity) =>
            _mapHandleFavoritesEventToState(event, emit, dataEntity),
        getRecentSearches: () => _mapGetRecentSearchesEventToState(event, emit),
      );
    });
  }

  FutureOr<void> _mapSearchImagesEventToState(
    SearchDelegateEvent event,
    Emitter<SearchDelegateState> emit,
    String query,
  ) async {
    emit(
      state.copyWith(
        screenStatus: const ScreenStatus.loading(),
      ),
    );
    final data = await _repository.searchGalleryImages(
      request: SearchGalleryRequest(page: 0, query: query),
    );

    data.when(
      failure: (_) => emit(
        state.copyWith(
          screenStatus: const ScreenStatus.error(),
        ),
      ),
      success: (value) {
        emit(
          state.copyWith(
            screenStatus: const ScreenStatus.success(),
            recentSearches: state.recentSearches.contains(query)
                ? [...state.recentSearches]
                : [...state.recentSearches, query],
            dataEntityListSearched: value,
          ),
        );
      },
    );
  }

  FutureOr<void> _mapHandleFavoritesEventToState(
    SearchDelegateEvent event,
    Emitter<SearchDelegateState> emit,
    DataEntity dataEntity,
  ) {
    final bool newFavValue = dataEntity.favorite == true ? false : true;
    final updatedList = state.dataEntityListSearched.map((entity) {
      if (entity == dataEntity) {
        return entity.copyWith(favorite: newFavValue);
      }

      return entity;
    }).toList();
    emit(
      state.copyWith(
        dataEntityListSearched: updatedList,
      ),
    );
  }

  FutureOr<void> _mapDeleteQueryFromHistoryEventToState(
    SearchDelegateEvent event,
    Emitter<SearchDelegateState> emit,
    String query,
  ) async {
    final response = await _repository.deleteSearchQuery(search: query);

    response.when(
      failure: (e) => emit(state.copyWith(screenStatus: ScreenStatus.error())),
      success: (_) {
        final updatedSearches = [...state.recentSearches]..remove(query);

        emit(
          state.copyWith(
            recentSearches: updatedSearches,
          ),
        );
      },
    );
  }

  FutureOr<void> _mapGetRecentSearchesEventToState(
    SearchDelegateEvent event,
    Emitter<SearchDelegateState> emit,
  ) async {
    final data = await _repository.getRecentSearches();
    data.when(
      failure: (e) =>
          emit(state.copyWith(screenStatus: const ScreenStatus.error())),
      success: (recentSearches) =>
          emit(state.copyWith(recentSearches: recentSearches)),
    );
  }
}
