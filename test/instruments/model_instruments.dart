import 'package:igmur_images_example/data/models/mappers/mappers.dart';
import 'package:igmur_images_example/data/models/remote_entities/data_remote_entity.dart';
import 'package:igmur_images_example/data/models/remote_entities/response_remote_entity.dart';
import 'package:igmur_images_example/data/models/requests/gallery_remote_request.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';

abstract class ModelInstruments {
  static DataRemoteEntity getDataRemoteEntity() => DataRemoteEntity(
        id: 'id',
        title: 'title',
        description: 'description',
        datetime: DateTime.thursday,
        cover: 'cover',
        coverWidth: null,
        coverHeight: null,
        accountUrl: null,
        accountId: null,
        privacy: 'privacy',
        layout: 'layout',
        views: 1,
        link: 'link',
        ups: 1,
        downs: 0,
        points: 0,
        score: 0,
        isAlbum: true,
        vote: 'vote',
        favorite: false,
        nsfw: null,
        section: 'section',
        commentCount: null,
        favoriteCount: null,
        topic: 'topic',
        topicId: null,
        imagesCount: null,
        inGallery: null,
        isAd: null,
        tags: null,
        adType: null,
        adUrl: 'adUrl',
        inMostViral: null,
        includeAlbumAds: null,
        images: null,
        adConfig: null,
      );

  static ResponseRemoteEntity getResponseRemoteEntity() => ResponseRemoteEntity(
        data: [getDataRemoteEntity()],
      );

  static DataEntity getDataEntity() => getDataRemoteEntity().toEntity();

  static List<DataEntity> getListDataEntity() =>
      [getDataRemoteEntity().toEntity()];

  static GalleryRequest getGalleryRequest() => const GalleryRequest(page: 1);

  static GalleryRemoteRequest getGalleryRemoteRequest() =>
      getGalleryRequest().toGalleryRemoteRequest();
}
