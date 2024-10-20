import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_config_remote_entity.freezed.dart';
part 'ad_config_remote_entity.g.dart';

@freezed
class AdConfigRemoteEntity with _$AdConfigRemoteEntity {
  factory AdConfigRemoteEntity({
    required List<String>? safeFlags,
    required List<String>? highRiskFlags,
    required List<String>? unsafeFlags,
    required List<String>? wallUnsafeFlags,
    required bool? showsAds,
    required int? showAdLevel,
    required double? nsfwScore,
  }) = _AdConfigRemoteEntity;

  factory AdConfigRemoteEntity.fromJson(Map<String, dynamic> json) =>
      _$AdConfigRemoteEntityFromJson(json);
}
