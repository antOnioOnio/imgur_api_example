// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'processing_remote_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProcessingRemoteEntity _$ProcessingRemoteEntityFromJson(
    Map<String, dynamic> json) {
  return _ProcessingRemoteEntity.fromJson(json);
}

/// @nodoc
mixin _$ProcessingRemoteEntity {
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessingRemoteEntityCopyWith<ProcessingRemoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessingRemoteEntityCopyWith<$Res> {
  factory $ProcessingRemoteEntityCopyWith(ProcessingRemoteEntity value,
          $Res Function(ProcessingRemoteEntity) then) =
      _$ProcessingRemoteEntityCopyWithImpl<$Res, ProcessingRemoteEntity>;
  @useResult
  $Res call({String? status});
}

/// @nodoc
class _$ProcessingRemoteEntityCopyWithImpl<$Res,
        $Val extends ProcessingRemoteEntity>
    implements $ProcessingRemoteEntityCopyWith<$Res> {
  _$ProcessingRemoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessingRemoteEntityImplCopyWith<$Res>
    implements $ProcessingRemoteEntityCopyWith<$Res> {
  factory _$$ProcessingRemoteEntityImplCopyWith(
          _$ProcessingRemoteEntityImpl value,
          $Res Function(_$ProcessingRemoteEntityImpl) then) =
      __$$ProcessingRemoteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$ProcessingRemoteEntityImplCopyWithImpl<$Res>
    extends _$ProcessingRemoteEntityCopyWithImpl<$Res,
        _$ProcessingRemoteEntityImpl>
    implements _$$ProcessingRemoteEntityImplCopyWith<$Res> {
  __$$ProcessingRemoteEntityImplCopyWithImpl(
      _$ProcessingRemoteEntityImpl _value,
      $Res Function(_$ProcessingRemoteEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$ProcessingRemoteEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcessingRemoteEntityImpl implements _ProcessingRemoteEntity {
  _$ProcessingRemoteEntityImpl({required this.status});

  factory _$ProcessingRemoteEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcessingRemoteEntityImplFromJson(json);

  @override
  final String? status;

  @override
  String toString() {
    return 'ProcessingRemoteEntity(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingRemoteEntityImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingRemoteEntityImplCopyWith<_$ProcessingRemoteEntityImpl>
      get copyWith => __$$ProcessingRemoteEntityImplCopyWithImpl<
          _$ProcessingRemoteEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessingRemoteEntityImplToJson(
      this,
    );
  }
}

abstract class _ProcessingRemoteEntity implements ProcessingRemoteEntity {
  factory _ProcessingRemoteEntity({required final String? status}) =
      _$ProcessingRemoteEntityImpl;

  factory _ProcessingRemoteEntity.fromJson(Map<String, dynamic> json) =
      _$ProcessingRemoteEntityImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingRemoteEntityImplCopyWith<_$ProcessingRemoteEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
