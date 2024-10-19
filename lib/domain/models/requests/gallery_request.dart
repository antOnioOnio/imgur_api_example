import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_request.freezed.dart';

@freezed
class GalleryRequest with _$GalleryRequest {
  const factory GalleryRequest({
    required String section,
    required String sort,
    required String window,
    required int page,
    required bool showViral,
    required bool mature,
    required bool albumPreviews,
  }) = _GalleryRequest;
}
