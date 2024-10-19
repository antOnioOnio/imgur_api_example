import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';

part 'response_entity.freezed.dart';

@freezed
class ResponseEntity with _$ResponseEntity {
  factory ResponseEntity({
    required List<DataEntity> data,
  }) = _ResponseEntity;
}
