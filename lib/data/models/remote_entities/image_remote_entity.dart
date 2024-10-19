import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/data/models/remote_entities/processing_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/tag_remote_entity.dart';

part 'image_remote_entity.freezed.dart';
part 'image_remote_entity.g.dart';

@freezed
class ImageRemoteEntity with _$ImageRemoteEntity {
  factory ImageRemoteEntity({
    required String id,
    String? title,
    String? description,
    required int datetime,
    required String type,
    required bool animated,
    required int width,
    required int height,
    required int size,
    required int views,
    required int bandwidth,
    String? vote,
    required bool favorite,
    bool? nsfw,
    String? section,
    String? accountUrl,
    int? accountId,
    required bool isAd,
    required bool inMostViral,
    required bool hasSound,
    required List<TagRemoteEntity> tags,
    required int adType,
    required String adUrl,
    required String edited,
    required bool inGallery,
    required String link,
    int? mp4Size,
    String? mp4,
    String? gifv,
    String? hls,
    ProcessingRemoteEntity? processing,
    int? commentCount,
    int? favoriteCount,
    int? ups,
    int? downs,
    int? points,
    int? score,
  }) = _ImageRemoteEntity;

  factory ImageRemoteEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageRemoteEntityFromJson(json);
}
