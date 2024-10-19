import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_remote_entity.freezed.dart';
part 'tag_remote_entity.g.dart';

@freezed
class TagRemoteEntity with _$TagRemoteEntity {
  factory TagRemoteEntity() = _TagRemoteEntity;

  factory TagRemoteEntity.fromJson(Map<String, dynamic> json) =>
      _$TagRemoteEntityFromJson(json);
}
