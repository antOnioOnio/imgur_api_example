// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_remote_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataRemoteEntityImpl _$$DataRemoteEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DataRemoteEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      datetime: (json['datetime'] as num).toInt(),
      cover: json['cover'] as String,
      coverWidth: (json['coverWidth'] as num).toInt(),
      coverHeight: (json['coverHeight'] as num).toInt(),
      accountUrl: json['accountUrl'] as String,
      accountId: (json['accountId'] as num).toInt(),
      privacy: json['privacy'] as String,
      layout: json['layout'] as String,
      views: (json['views'] as num).toInt(),
      link: json['link'] as String,
      ups: (json['ups'] as num).toInt(),
      downs: (json['downs'] as num).toInt(),
      points: (json['points'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      isAlbum: json['isAlbum'] as bool,
      vote: json['vote'] as String?,
      favorite: json['favorite'] as bool,
      nsfw: json['nsfw'] as bool,
      section: json['section'] as String?,
      commentCount: (json['commentCount'] as num).toInt(),
      favoriteCount: (json['favoriteCount'] as num).toInt(),
      topic: json['topic'] as String?,
      topicId: (json['topicId'] as num?)?.toInt(),
      imagesCount: (json['imagesCount'] as num).toInt(),
      inGallery: json['inGallery'] as bool,
      isAd: json['isAd'] as bool,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TagRemoteEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      adType: (json['adType'] as num).toInt(),
      adUrl: json['adUrl'] as String,
      inMostViral: json['inMostViral'] as bool,
      includeAlbumAds: json['includeAlbumAds'] as bool,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageRemoteEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      adConfig: AdConfigRemoteEntity.fromJson(
          json['adConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataRemoteEntityImplToJson(
        _$DataRemoteEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'datetime': instance.datetime,
      'cover': instance.cover,
      'coverWidth': instance.coverWidth,
      'coverHeight': instance.coverHeight,
      'accountUrl': instance.accountUrl,
      'accountId': instance.accountId,
      'privacy': instance.privacy,
      'layout': instance.layout,
      'views': instance.views,
      'link': instance.link,
      'ups': instance.ups,
      'downs': instance.downs,
      'points': instance.points,
      'score': instance.score,
      'isAlbum': instance.isAlbum,
      'vote': instance.vote,
      'favorite': instance.favorite,
      'nsfw': instance.nsfw,
      'section': instance.section,
      'commentCount': instance.commentCount,
      'favoriteCount': instance.favoriteCount,
      'topic': instance.topic,
      'topicId': instance.topicId,
      'imagesCount': instance.imagesCount,
      'inGallery': instance.inGallery,
      'isAd': instance.isAd,
      'tags': instance.tags,
      'adType': instance.adType,
      'adUrl': instance.adUrl,
      'inMostViral': instance.inMostViral,
      'includeAlbumAds': instance.includeAlbumAds,
      'images': instance.images,
      'adConfig': instance.adConfig,
    };
