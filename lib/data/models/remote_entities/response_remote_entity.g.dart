// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_remote_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseRemoteEntityImpl _$$ResponseRemoteEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseRemoteEntityImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataRemoteEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseRemoteEntityImplToJson(
        _$ResponseRemoteEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
