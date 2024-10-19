import 'package:freezed_annotation/freezed_annotation.dart';

part 'processing_entity.freezed.dart';

@freezed
class ProcessingEntity with _$ProcessingEntity {
  factory ProcessingEntity({
    required String status,
  }) = _ProcessingEntity;
}
