import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/data/models/remote_entities/ad_config_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/image_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/tag_remote_entity.dart';

part 'data_remote_entity.freezed.dart';
part 'data_remote_entity.g.dart';

@freezed
class DataRemoteEntity with _$DataRemoteEntity {
  factory DataRemoteEntity({
    required String id,
    required String? title,
    required String? description,
    required int? datetime,
    required String? cover,
    required int? coverWidth,
    required int? coverHeight,
    required String? accountUrl,
    required int? accountId,
    required String? privacy,
    required String? layout,
    required int? views,
    required String? link,
    required int? ups,
    required int? downs,
    required int? points,
    required int? score,
    required bool? isAlbum,
    required String? vote,
    required bool? favorite,
    required bool? nsfw,
    required String? section,
    required int? commentCount,
    required int? favoriteCount,
    required String? topic,
    required int? topicId,
    required int? imagesCount,
    required bool? inGallery,
    required bool? isAd,
    required List<TagRemoteEntity>? tags,
    required int? adType,
    required String? adUrl,
    required bool? inMostViral,
    required bool? includeAlbumAds,
    required List<ImageRemoteEntity>? images,
    required AdConfigRemoteEntity? adConfig,
  }) = _DataRemoteEntity;

  factory DataRemoteEntity.fromJson(Map<String, dynamic> json) =>
      _$DataRemoteEntityFromJson(json);
}
