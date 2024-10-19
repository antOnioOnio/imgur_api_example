// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_remote_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagRemoteEntity _$TagRemoteEntityFromJson(Map<String, dynamic> json) {
  return _TagRemoteEntity.fromJson(json);
}

/// @nodoc
mixin _$TagRemoteEntity {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagRemoteEntityCopyWith<$Res> {
  factory $TagRemoteEntityCopyWith(
          TagRemoteEntity value, $Res Function(TagRemoteEntity) then) =
      _$TagRemoteEntityCopyWithImpl<$Res, TagRemoteEntity>;
}

/// @nodoc
class _$TagRemoteEntityCopyWithImpl<$Res, $Val extends TagRemoteEntity>
    implements $TagRemoteEntityCopyWith<$Res> {
  _$TagRemoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TagRemoteEntityImplCopyWith<$Res> {
  factory _$$TagRemoteEntityImplCopyWith(_$TagRemoteEntityImpl value,
          $Res Function(_$TagRemoteEntityImpl) then) =
      __$$TagRemoteEntityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TagRemoteEntityImplCopyWithImpl<$Res>
    extends _$TagRemoteEntityCopyWithImpl<$Res, _$TagRemoteEntityImpl>
    implements _$$TagRemoteEntityImplCopyWith<$Res> {
  __$$TagRemoteEntityImplCopyWithImpl(
      _$TagRemoteEntityImpl _value, $Res Function(_$TagRemoteEntityImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TagRemoteEntityImpl implements _TagRemoteEntity {
  _$TagRemoteEntityImpl();

  factory _$TagRemoteEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagRemoteEntityImplFromJson(json);

  @override
  String toString() {
    return 'TagRemoteEntity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TagRemoteEntityImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$TagRemoteEntityImplToJson(
      this,
    );
  }
}

abstract class _TagRemoteEntity implements TagRemoteEntity {
  factory _TagRemoteEntity() = _$TagRemoteEntityImpl;

  factory _TagRemoteEntity.fromJson(Map<String, dynamic> json) =
      _$TagRemoteEntityImpl.fromJson;
}
