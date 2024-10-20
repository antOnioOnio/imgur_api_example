// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_config_remote_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdConfigRemoteEntityImpl _$$AdConfigRemoteEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AdConfigRemoteEntityImpl(
      safeFlags: (json['safeFlags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      highRiskFlags: (json['highRiskFlags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      unsafeFlags: (json['unsafeFlags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      wallUnsafeFlags: (json['wallUnsafeFlags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      showsAds: json['showsAds'] as bool?,
      showAdLevel: (json['showAdLevel'] as num?)?.toInt(),
      nsfwScore: (json['nsfwScore'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AdConfigRemoteEntityImplToJson(
        _$AdConfigRemoteEntityImpl instance) =>
    <String, dynamic>{
      'safeFlags': instance.safeFlags,
      'highRiskFlags': instance.highRiskFlags,
      'unsafeFlags': instance.unsafeFlags,
      'wallUnsafeFlags': instance.wallUnsafeFlags,
      'showsAds': instance.showsAds,
      'showAdLevel': instance.showAdLevel,
      'nsfwScore': instance.nsfwScore,
    };
