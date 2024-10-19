import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
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
      );
    });
  }

  FutureOr<void> _mapFetchImagesEventToState(
    HomeGalleryScreenEvent event,
    Emitter<HomeGalleryScreenState> emit,
  ) async {
    emit(state.copyWith(screenStatus: const ScreenStatus.loading()));
    await Future.delayed(const Duration(seconds: 1));
    final data = await _repository.getGalleryImages(
      request: const GalleryRequest(
        section: 'top',
        sort: 'viral',
        window: 'day',
        page: 1,
        showViral: true,
        mature: true,
        albumPreviews: false,
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
          ),
        );
      },
    );
  }
}
