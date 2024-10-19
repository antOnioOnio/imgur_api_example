import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/domain/models/entities/processing_entity.dart';
import 'package:igmur_images_example/domain/models/entities/tag_entity.dart';

part 'image_entity.freezed.dart';

@freezed
class ImageEntity with _$ImageEntity {
  factory ImageEntity({
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
    required List<TagEntity> tags,
    required int adType,
    required String adUrl,
    required String edited,
    required bool inGallery,
    required String link,
    int? mp4Size,
    String? mp4,
    String? gifv,
    String? hls,
    ProcessingEntity? processing,
    int? commentCount,
    int? favoriteCount,
    int? ups,
    int? downs,
    int? points,
    int? score,
  }) = _ImageEntity;
}
