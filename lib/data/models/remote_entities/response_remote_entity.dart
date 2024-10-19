import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/data/models/remote_entities/data_remote_entity.dart';

part 'response_remote_entity.freezed.dart';
part 'response_remote_entity.g.dart';

@freezed
class ResponseRemoteEntity with _$ResponseRemoteEntity {
  factory ResponseRemoteEntity({
    required List<DataRemoteEntity> data,
  }) = _ResponseRemoteEntity;

  factory ResponseRemoteEntity.fromJson(Map<String, dynamic> json) =>
      _$ResponseRemoteEntityFromJson(json);
}
