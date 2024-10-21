import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_remote_request.freezed.dart';

@freezed
class GalleryRemoteRequest with _$GalleryRemoteRequest {
  const factory GalleryRemoteRequest({
    required String section,
    required String sort,
    required String window,
    required int page,
    required bool showViral,
    required bool mature,
    required bool albumPreviews,
  }) = _GalleryRemoteRequest;
}

@freezed
class SearchGalleryRemoteRequest with _$SearchGalleryRemoteRequest {
  const factory SearchGalleryRemoteRequest({
    required String sort,
    required String window,
    required int page,
    required String query,
  }) = _SearchGalleryRemoteRequest;
}
