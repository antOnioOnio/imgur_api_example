// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_remote_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseRemoteEntity _$ResponseRemoteEntityFromJson(Map<String, dynamic> json) {
  return _ResponseRemoteEntity.fromJson(json);
}

/// @nodoc
mixin _$ResponseRemoteEntity {
  List<DataRemoteEntity> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRemoteEntityCopyWith<ResponseRemoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRemoteEntityCopyWith<$Res> {
  factory $ResponseRemoteEntityCopyWith(ResponseRemoteEntity value,
          $Res Function(ResponseRemoteEntity) then) =
      _$ResponseRemoteEntityCopyWithImpl<$Res, ResponseRemoteEntity>;
  @useResult
  $Res call({List<DataRemoteEntity> data});
}

/// @nodoc
class _$ResponseRemoteEntityCopyWithImpl<$Res,
        $Val extends ResponseRemoteEntity>
    implements $ResponseRemoteEntityCopyWith<$Res> {
  _$ResponseRemoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataRemoteEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseRemoteEntityImplCopyWith<$Res>
    implements $ResponseRemoteEntityCopyWith<$Res> {
  factory _$$ResponseRemoteEntityImplCopyWith(_$ResponseRemoteEntityImpl value,
          $Res Function(_$ResponseRemoteEntityImpl) then) =
      __$$ResponseRemoteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataRemoteEntity> data});
}

/// @nodoc
class __$$ResponseRemoteEntityImplCopyWithImpl<$Res>
    extends _$ResponseRemoteEntityCopyWithImpl<$Res, _$ResponseRemoteEntityImpl>
    implements _$$ResponseRemoteEntityImplCopyWith<$Res> {
  __$$ResponseRemoteEntityImplCopyWithImpl(_$ResponseRemoteEntityImpl _value,
      $Res Function(_$ResponseRemoteEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ResponseRemoteEntityImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataRemoteEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseRemoteEntityImpl implements _ResponseRemoteEntity {
  _$ResponseRemoteEntityImpl({required final List<DataRemoteEntity> data})
      : _data = data;

  factory _$ResponseRemoteEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseRemoteEntityImplFromJson(json);

  final List<DataRemoteEntity> _data;
  @override
  List<DataRemoteEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResponseRemoteEntity(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseRemoteEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseRemoteEntityImplCopyWith<_$ResponseRemoteEntityImpl>
      get copyWith =>
          __$$ResponseRemoteEntityImplCopyWithImpl<_$ResponseRemoteEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseRemoteEntityImplToJson(
      this,
    );
  }
}

abstract class _ResponseRemoteEntity implements ResponseRemoteEntity {
  factory _ResponseRemoteEntity({required final List<DataRemoteEntity> data}) =
      _$ResponseRemoteEntityImpl;

  factory _ResponseRemoteEntity.fromJson(Map<String, dynamic> json) =
      _$ResponseRemoteEntityImpl.fromJson;

  @override
  List<DataRemoteEntity> get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseRemoteEntityImplCopyWith<_$ResponseRemoteEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
