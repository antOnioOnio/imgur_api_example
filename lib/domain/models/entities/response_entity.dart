import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igmur_images_example/domain/models/entities/data_entity.dart';

part 'response_entity.freezed.dart';

@freezed
class ResponseEntity with _$ResponseEntity {
  factory ResponseEntity({
    required List<DataEntity> data,
  }) = _ResponseEntity;
}

extension ResponseEntityExtension on ResponseEntity {
  List<DataEntity> filterOutAnimatedImages() {
    return data
        .where(
          (dataEntity) =>
              !(dataEntity.images?.any((image) => image.animated == true) ??
                  false),
        )
        .toList();
  }
}
