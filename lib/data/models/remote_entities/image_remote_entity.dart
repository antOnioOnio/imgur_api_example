import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/data/models/remote_entities/tag_remote_entity.dart';

part 'image_remote_entity.freezed.dart';
part 'image_remote_entity.g.dart';

@freezed
class ImageRemoteEntity with _$ImageRemoteEntity {
  factory ImageRemoteEntity({
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
    required List<TagRemoteEntity>? tags,
    required int? adType,
    required String? adUrl,
    required String? edited,
    required bool? inGallery,
    required String link,
    required int? mp4Size,
    required String? mp4,
    required String? gifv,
    required String? hls,
    required int? commentCount,
    required int? favoriteCount,
    required int? ups,
    required int? downs,
    required int? points,
    required int? score,
  }) = _ImageRemoteEntity;

  factory ImageRemoteEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageRemoteEntityFromJson(json);
}
