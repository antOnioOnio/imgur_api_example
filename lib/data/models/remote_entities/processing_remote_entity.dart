import 'package:freezed_annotation/freezed_annotation.dart';

part 'processing_remote_entity.freezed.dart';
part 'processing_remote_entity.g.dart';

@freezed
class ProcessingRemoteEntity with _$ProcessingRemoteEntity {
  factory ProcessingRemoteEntity({
    required String? status,
  }) = _ProcessingRemoteEntity;

  factory ProcessingRemoteEntity.fromJson(Map<String, dynamic> json) =>
      _$ProcessingRemoteEntityFromJson(json);
}
