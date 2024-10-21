import 'package:dio/dio.dart';
import 'package:igmur_images_example/data/models/remote_entities/response_remote_entity.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi()
abstract class AppApi {
  factory AppApi(Dio dio, {String? baseUrl}) = _AppApi;

  @GET('{section}/{sort}/{window}/{page}')
  Future<ResponseRemoteEntity> getGalleryImages(
    @Path() String section,
    @Path() String sort,
    @Path() String window,
    @Path() int page,
    @Query('showViral') bool showViral,
    @Query('mature') bool mature,
    @Query('album_previews') bool albumPreviews,
  );

  @GET('search/{sort}/{window}/{page}')
  Future<ResponseRemoteEntity> searchGalleryImages(
    @Path() String sort,
    @Path() String window,
    @Path() int page,
    @Query('q') String query,
  );
}
