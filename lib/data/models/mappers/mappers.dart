import 'package:igmur_images_example/data/models/remote_entities/ad_config_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/data_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/image_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/processing_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/response_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/tag_remote_entity.dart';
import 'package:igmur_images_example/data/models/requests/gallery_remote_request.dart';
import 'package:igmur_images_example/domain/models/entities/ad_config_entity.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/entities/image_entity.dart';
import 'package:igmur_images_example/domain/models/entities/processing_entity.dart';
import 'package:igmur_images_example/domain/models/entities/response_entity.dart';
import 'package:igmur_images_example/domain/models/entities/tag_entity.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';

extension ResponseRemoteEntityX on ResponseRemoteEntity {
  ResponseEntity toEntity() {
    return ResponseEntity(
      data: data.map((e) => e.toEntity()).toList(),
    );
  }
}

extension DataRemoteEntityX on DataRemoteEntity {
  DataEntity toEntity() {
    return DataEntity(
      id: id,
      title: title,
      description: description,
      datetime: datetime,
      cover: cover,
      coverWidth: coverWidth,
      coverHeight: coverHeight,
      accountUrl: accountUrl,
      accountId: accountId,
      privacy: privacy,
      layout: layout,
      views: views,
      link: link,
      ups: ups,
      downs: downs,
      points: points,
      score: score,
      isAlbum: isAlbum,
      vote: vote,
      favorite: favorite,
      nsfw: nsfw,
      section: section,
      commentCount: commentCount,
      favoriteCount: favoriteCount,
      topic: topic,
      topicId: topicId,
      imagesCount: imagesCount,
      inGallery: inGallery,
      isAd: isAd,
      tags: tags?.map((e) => e.toEntity()).toList(),
      adType: adType,
      adUrl: adUrl,
      inMostViral: inMostViral,
      includeAlbumAds: includeAlbumAds,
      images: images?.map((e) => e.toEntity()).toList(),
      adConfig: adConfig?.toEntity(),
    );
  }
}

extension ImageRemoteEntityX on ImageRemoteEntity {
  ImageEntity toEntity() {
    return ImageEntity(
      id: id,
      title: title,
      description: description,
      datetime: datetime,
      type: type,
      animated: animated,
      width: width,
      height: height,
      size: size,
      views: views,
      bandwidth: bandwidth,
      vote: vote,
      favorite: favorite,
      nsfw: nsfw,
      section: section,
      accountUrl: accountUrl,
      accountId: accountId,
      isAd: isAd,
      inMostViral: inMostViral,
      hasSound: hasSound,
      tags: tags?.map((e) => e.toEntity()).toList(),
      adType: adType,
      adUrl: adUrl,
      edited: edited,
      inGallery: inGallery,
      link: link,
      mp4Size: mp4Size,
      mp4: mp4,
      gifv: gifv,
      hls: hls,
      processing: processing?.toEntity(),
      commentCount: commentCount,
      favoriteCount: favoriteCount,
      ups: ups,
      downs: downs,
      points: points,
      score: score,
    );
  }
}

extension ProcessingRemoteEntityX on ProcessingRemoteEntity {
  ProcessingEntity toEntity() {
    return ProcessingEntity(
      status: status,
    );
  }
}

extension AdConfigRemoteEntityX on AdConfigRemoteEntity {
  AdConfigEntity toEntity() {
    return AdConfigEntity(
      safeFlags: safeFlags,
      highRiskFlags: highRiskFlags,
      unsafeFlags: unsafeFlags,
      wallUnsafeFlags: wallUnsafeFlags,
      showsAds: showsAds,
      showAdLevel: showAdLevel,
      nsfwScore: nsfwScore,
    );
  }
}

extension TagRemoteEntityX on TagRemoteEntity {
  TagEntity toEntity() {
    return TagEntity();
  }
}

extension GalleryRequestExtension on GalleryRequest {
  GalleryRemoteRequest toGalleryRemoteRequest() => GalleryRemoteRequest(
        section: section,
        sort: sort,
        window: window,
        page: page,
        showViral: showViral,
        mature: mature,
        albumPreviews: albumPreviews,
      );
}
