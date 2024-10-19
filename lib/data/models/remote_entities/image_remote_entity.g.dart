// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_remote_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageRemoteEntityImpl _$$ImageRemoteEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageRemoteEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      datetime: (json['datetime'] as num).toInt(),
      type: json['type'] as String,
      animated: json['animated'] as bool,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      views: (json['views'] as num).toInt(),
      bandwidth: (json['bandwidth'] as num).toInt(),
      vote: json['vote'] as String?,
      favorite: json['favorite'] as bool,
      nsfw: json['nsfw'] as bool?,
      section: json['section'] as String?,
      accountUrl: json['accountUrl'] as String?,
      accountId: (json['accountId'] as num?)?.toInt(),
      isAd: json['isAd'] as bool,
      inMostViral: json['inMostViral'] as bool,
      hasSound: json['hasSound'] as bool,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TagRemoteEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      adType: (json['adType'] as num).toInt(),
      adUrl: json['adUrl'] as String,
      edited: json['edited'] as String,
      inGallery: json['inGallery'] as bool,
      link: json['link'] as String,
      mp4Size: (json['mp4Size'] as num?)?.toInt(),
      mp4: json['mp4'] as String?,
      gifv: json['gifv'] as String?,
      hls: json['hls'] as String?,
      processing: json['processing'] == null
          ? null
          : ProcessingRemoteEntity.fromJson(
              json['processing'] as Map<String, dynamic>),
      commentCount: (json['commentCount'] as num?)?.toInt(),
      favoriteCount: (json['favoriteCount'] as num?)?.toInt(),
      ups: (json['ups'] as num?)?.toInt(),
      downs: (json['downs'] as num?)?.toInt(),
      points: (json['points'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ImageRemoteEntityImplToJson(
        _$ImageRemoteEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'datetime': instance.datetime,
      'type': instance.type,
      'animated': instance.animated,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'views': instance.views,
      'bandwidth': instance.bandwidth,
      'vote': instance.vote,
      'favorite': instance.favorite,
      'nsfw': instance.nsfw,
      'section': instance.section,
      'accountUrl': instance.accountUrl,
      'accountId': instance.accountId,
      'isAd': instance.isAd,
      'inMostViral': instance.inMostViral,
      'hasSound': instance.hasSound,
      'tags': instance.tags,
      'adType': instance.adType,
      'adUrl': instance.adUrl,
      'edited': instance.edited,
      'inGallery': instance.inGallery,
      'link': instance.link,
      'mp4Size': instance.mp4Size,
      'mp4': instance.mp4,
      'gifv': instance.gifv,
      'hls': instance.hls,
      'processing': instance.processing,
      'commentCount': instance.commentCount,
      'favoriteCount': instance.favoriteCount,
      'ups': instance.ups,
      'downs': instance.downs,
      'points': instance.points,
      'score': instance.score,
    };
