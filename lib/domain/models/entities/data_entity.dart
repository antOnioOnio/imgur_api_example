import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/domain/models/entities/ad_config_entity.dart';
import 'package:igmur_images_example/domain/models/entities/image_entity.dart';
import 'package:igmur_images_example/domain/models/entities/tag_entity.dart';

part 'data_entity.freezed.dart';

@freezed
class DataEntity with _$DataEntity {
  factory DataEntity({
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
    required List<TagEntity>? tags,
    required int? adType,
    required String? adUrl,
    required bool? inMostViral,
    required bool? includeAlbumAds,
    required List<ImageEntity>? images,
    required AdConfigEntity? adConfig,
  }) = _DataEntity;
}
