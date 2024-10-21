import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/repository_contracts/app_repository_contract.dart';

part 'fav_bloc.freezed.dart';
part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  final AppRepositoryContract _repository;

  FavBloc({
    required AppRepositoryContract repositoryContract,
  })  : _repository = repositoryContract,
        super(FavState.initial()) {
    on<FavEvent>((event, emit) async {
      await event.when(
        handleFavoritePressed: (dataEntity) => _mapHandleFavoritesEventToState(
          event,
          emit,
          dataEntity,
        ),
        loadFavorites: () => _mapLoadFavoritesEventToState(emit),
      );
    });
  }

  FutureOr<void> _mapLoadFavoritesEventToState(
    Emitter<FavState> emit,
  ) async {
    final data = await _repository.getGalleryFavorites();
    data.when(
      success: (dataEntityList) {
        emit(state.copyWith(dataEntityListFavorites: dataEntityList));
      },
      failure: (_) {
        emit(state.copyWith(dataEntityListFavorites: []));
      },
    );
  }

  FutureOr<void> _mapHandleFavoritesEventToState(
    FavEvent event,
    Emitter<FavState> emit,
    DataEntity dataEntity,
  ) async {
    final wasFavorite = state.dataEntityListFavorites.contains(dataEntity);
    var newFavoriteList = [...state.dataEntityListFavorites];
    if (wasFavorite) {
      await _repository.deleteGalleryFavorite(dataEntity: dataEntity);
      newFavoriteList = state.dataEntityListFavorites
          .where((entity) => entity.id != dataEntity.id)
          .toList();
    } else {
      await _repository.saveGalleryFavorite(
        dataEntity: dataEntity.copyWith(favorite: true),
      );
      newFavoriteList.add(dataEntity.copyWith(favorite: true));
    }

    emit(state.copyWith(dataEntityListFavorites: newFavoriteList));
  }
}
