import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';

part 'fav_bloc.freezed.dart';
part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  FavBloc() : super(FavState.initial()) {
    on<FavEvent>((event, emit) {
      event.when(
        handleFavoritePressed: (dataEntity) {
          _mapHandleFavoritesEventToState(
            event,
            emit,
            dataEntity,
          );
        },
      );
    });
  }

  void _mapHandleFavoritesEventToState(
    FavEvent event,
    Emitter<FavState> emit,
    DataEntity dataEntity,
  ) {
    //logic to update favorite list with its correct new item
    final wasFavorite = state.dataEntityListFavorites.contains(dataEntity);
    var newFavoriteList = [...state.dataEntityListFavorites];

    if (wasFavorite) {
      newFavoriteList = state.dataEntityListFavorites
          .where((entity) => entity.id != dataEntity.id)
          .toList();
    } else {
      newFavoriteList.add(dataEntity.copyWith(favorite: true));
    }
    emit(state.copyWith(dataEntityListFavorites: newFavoriteList));
  }
}
