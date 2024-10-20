import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/domain/models/entities/processing_entity.dart';
import 'package:igmur_images_example/domain/models/entities/tag_entity.dart';

part 'image_entity.freezed.dart';

@freezed
class ImageEntity with _$ImageEntity {
  factory ImageEntity({
    required String id,
    required String? title,
    required String? description,
    required int? datetime,
    required String? type,
    required bool? animated,
    required int? width,
    required int? height,
    required int? size,
    required int? views,
    required int? bandwidth,
    required String? vote,
    required bool? favorite,
    required bool? nsfw,
    required String? section,
    required String? accountUrl,
    required int? accountId,
    required bool? isAd,
    required bool? inMostViral,
    required bool? hasSound,
    required List<TagEntity>? tags,
    required int? adType,
    required String? adUrl,
    required String? edited,
    required bool? inGallery,
    required String? link,
    required int? mp4Size,
    required String? mp4,
    required String? gifv,
    required String? hls,
    required ProcessingEntity? processing,
    required int? commentCount,
    required int? favoriteCount,
    required int? ups,
    required int? downs,
    required int? points,
    required int? score,
  }) = _ImageEntity;
}
