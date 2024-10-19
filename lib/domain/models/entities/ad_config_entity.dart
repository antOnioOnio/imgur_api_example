import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_config_entity.freezed.dart';

@freezed
class AdConfigEntity with _$AdConfigEntity {
  factory AdConfigEntity({
    required List<String> safeFlags,
    required List<String> highRiskFlags,
    required List<String> unsafeFlags,
    required List<String> wallUnsafeFlags,
    required bool showsAds,
    required int showAdLevel,
    required double nsfwScore,
  }) = _AdConfigEntity;
}