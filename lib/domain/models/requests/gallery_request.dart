import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_request.freezed.dart';

@freezed
class GalleryRequest with _$GalleryRequest {
  const factory GalleryRequest({
    @Default('hot') String section,
    @Default('viral') String sort,
    @Default('day') String window,
    required int page,
    @Default(true) bool showViral,
    @Default(true) bool mature,
    @Default(true) bool albumPreviews,
  }) = _GalleryRequest;
}
