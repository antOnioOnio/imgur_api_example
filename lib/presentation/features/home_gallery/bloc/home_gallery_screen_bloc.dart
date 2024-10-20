import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';
import 'package:igmur_images_example/domain/repository_contracts/app_repository_contract.dart';

part 'home_gallery_screen_bloc.freezed.dart';
part 'home_gallery_screen_event.dart';
part 'home_gallery_screen_state.dart';

class HomeGalleryScreenBloc
    extends Bloc<HomeGalleryScreenEvent, HomeGalleryScreenState> {
  final AppRepositoryContract _repository;

  HomeGalleryScreenBloc({
    required AppRepositoryContract repositoryContract,
  })  : _repository = repositoryContract,
        super(HomeGalleryScreenState.initial()) {
    on<HomeGalleryScreenEvent>((event, emit) async {
      await event.when(
        fetchImages: () => _mapFetchImagesEventToState(event, emit),
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

  FutureOr<void> _mapFetchImagesEventToState(
    HomeGalleryScreenEvent event,
    Emitter<HomeGalleryScreenState> emit,
  ) async {
    if (state.screenStatus.isLoadingMore()) {
      return;
    }
    int currentPage = state.currentPage + 1;
    emit(
      state.copyWith(
        screenStatus: currentPage == 1
            ? const ScreenStatus.loading()
            : const ScreenStatus.loadingMore(),
        currentPage: currentPage,
      ),
    );

    final data = await _repository.getGalleryImages(
      request: GalleryRequest(
        page: currentPage,
      ),
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
            dataEntityList: [...state.dataEntityList, ...value],
          ),
        );
      },
    );
  }

  void _mapHandleFavoritesEventToState(
    HomeGalleryScreenEvent event,
    Emitter<HomeGalleryScreenState> emit,
    DataEntity dataEntity,
  ) {
    final updatedList = state.dataEntityList.map((entity) {
      if (entity == dataEntity) {
        return entity.copyWith(favorite: !(dataEntity.favorite ?? false));
      }

      return entity;
    }).toList();

    emit(
      state.copyWith(
        dataEntityList: updatedList,
      ),
    );
  }
}
