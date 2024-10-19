// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_config_remote_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdConfigRemoteEntity _$AdConfigRemoteEntityFromJson(Map<String, dynamic> json) {
  return _AdConfigRemoteEntity.fromJson(json);
}

/// @nodoc
mixin _$AdConfigRemoteEntity {
  List<String> get safeFlags => throw _privateConstructorUsedError;
  List<String> get highRiskFlags => throw _privateConstructorUsedError;
  List<String> get unsafeFlags => throw _privateConstructorUsedError;
  List<String> get wallUnsafeFlags => throw _privateConstructorUsedError;
  bool get showsAds => throw _privateConstructorUsedError;
  int get showAdLevel => throw _privateConstructorUsedError;
  double get nsfwScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdConfigRemoteEntityCopyWith<AdConfigRemoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdConfigRemoteEntityCopyWith<$Res> {
  factory $AdConfigRemoteEntityCopyWith(AdConfigRemoteEntity value,
          $Res Function(AdConfigRemoteEntity) then) =
      _$AdConfigRemoteEntityCopyWithImpl<$Res, AdConfigRemoteEntity>;
  @useResult
  $Res call(
      {List<String> safeFlags,
      List<String> highRiskFlags,
      List<String> unsafeFlags,
      List<String> wallUnsafeFlags,
      bool showsAds,
      int showAdLevel,
      double nsfwScore});
}

/// @nodoc
class _$AdConfigRemoteEntityCopyWithImpl<$Res,
        $Val extends AdConfigRemoteEntity>
    implements $AdConfigRemoteEntityCopyWith<$Res> {
  _$AdConfigRemoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? safeFlags = null,
    Object? highRiskFlags = null,
    Object? unsafeFlags = null,
    Object? wallUnsafeFlags = null,
    Object? showsAds = null,
    Object? showAdLevel = null,
    Object? nsfwScore = null,
  }) {
    return _then(_value.copyWith(
      safeFlags: null == safeFlags
          ? _value.safeFlags
          : safeFlags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highRiskFlags: null == highRiskFlags
          ? _value.highRiskFlags
          : highRiskFlags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unsafeFlags: null == unsafeFlags
          ? _value.unsafeFlags
          : unsafeFlags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wallUnsafeFlags: null == wallUnsafeFlags
          ? _value.wallUnsafeFlags
          : wallUnsafeFlags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showsAds: null == showsAds
          ? _value.showsAds
          : showsAds // ignore: cast_nullable_to_non_nullable
              as bool,
      showAdLevel: null == showAdLevel
          ? _value.showAdLevel
          : showAdLevel // ignore: cast_nullable_to_non_nullable
              as int,
      nsfwScore: null == nsfwScore
          ? _value.nsfwScore
          : nsfwScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdConfigRemoteEntityImplCopyWith<$Res>
    implements $AdConfigRemoteEntityCopyWith<$Res> {
  factory _$$AdConfigRemoteEntityImplCopyWith(_$AdConfigRemoteEntityImpl value,
          $Res Function(_$AdConfigRemoteEntityImpl) then) =
      __$$AdConfigRemoteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> safeFlags,
      List<String> highRiskFlags,
      List<String> unsafeFlags,
      List<String> wallUnsafeFlags,
      bool showsAds,
      int showAdLevel,
      double nsfwScore});
}

/// @nodoc
class __$$AdConfigRemoteEntityImplCopyWithImpl<$Res>
    extends _$AdConfigRemoteEntityCopyWithImpl<$Res, _$AdConfigRemoteEntityImpl>
    implements _$$AdConfigRemoteEntityImplCopyWith<$Res> {
  __$$AdConfigRemoteEntityImplCopyWithImpl(_$AdConfigRemoteEntityImpl _value,
      $Res Function(_$AdConfigRemoteEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? safeFlags = null,
    Object? highRiskFlags = null,
    Object? unsafeFlags = null,
    Object? wallUnsafeFlags = null,
    Object? showsAds = null,
    Object? showAdLevel = null,
    Object? nsfwScore = null,
  }) {
    return _then(_$AdConfigRemoteEntityImpl(
      safeFlags: null == safeFlags
          ? _value._safeFlags
          : safeFlags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highRiskFlags: null == highRiskFlags
          ? _value._highRiskFlags
          : highRiskFlags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unsafeFlags: null == unsafeFlags
          ? _value._unsafeFlags
          : unsafeFlags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wallUnsafeFlags: null == wallUnsafeFlags
          ? _value._wallUnsafeFlags
          : wallUnsafeFlags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showsAds: null == showsAds
          ? _value.showsAds
          : showsAds // ignore: cast_nullable_to_non_nullable
              as bool,
      showAdLevel: null == showAdLevel
          ? _value.showAdLevel
          : showAdLevel // ignore: cast_nullable_to_non_nullable
              as int,
      nsfwScore: null == nsfwScore
          ? _value.nsfwScore
          : nsfwScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdConfigRemoteEntityImpl implements _AdConfigRemoteEntity {
  _$AdConfigRemoteEntityImpl(
      {required final List<String> safeFlags,
      required final List<String> highRiskFlags,
      required final List<String> unsafeFlags,
      required final List<String> wallUnsafeFlags,
      required this.showsAds,
      required this.showAdLevel,
      required this.nsfwScore})
      : _safeFlags = safeFlags,
        _highRiskFlags = highRiskFlags,
        _unsafeFlags = unsafeFlags,
        _wallUnsafeFlags = wallUnsafeFlags;

  factory _$AdConfigRemoteEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdConfigRemoteEntityImplFromJson(json);

  final List<String> _safeFlags;
  @override
  List<String> get safeFlags {
    if (_safeFlags is EqualUnmodifiableListView) return _safeFlags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_safeFlags);
  }

  final List<String> _highRiskFlags;
  @override
  List<String> get highRiskFlags {
    if (_highRiskFlags is EqualUnmodifiableListView) return _highRiskFlags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highRiskFlags);
  }

  final List<String> _unsafeFlags;
  @override
  List<String> get unsafeFlags {
    if (_unsafeFlags is EqualUnmodifiableListView) return _unsafeFlags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unsafeFlags);
  }

  final List<String> _wallUnsafeFlags;
  @override
  List<String> get wallUnsafeFlags {
    if (_wallUnsafeFlags is EqualUnmodifiableListView) return _wallUnsafeFlags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallUnsafeFlags);
  }

  @override
  final bool showsAds;
  @override
  final int showAdLevel;
  @override
  final double nsfwScore;

  @override
  String toString() {
    return 'AdConfigRemoteEntity(safeFlags: $safeFlags, highRiskFlags: $highRiskFlags, unsafeFlags: $unsafeFlags, wallUnsafeFlags: $wallUnsafeFlags, showsAds: $showsAds, showAdLevel: $showAdLevel, nsfwScore: $nsfwScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdConfigRemoteEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._safeFlags, _safeFlags) &&
            const DeepCollectionEquality()
                .equals(other._highRiskFlags, _highRiskFlags) &&
            const DeepCollectionEquality()
                .equals(other._unsafeFlags, _unsafeFlags) &&
            const DeepCollectionEquality()
                .equals(other._wallUnsafeFlags, _wallUnsafeFlags) &&
            (identical(other.showsAds, showsAds) ||
                other.showsAds == showsAds) &&
            (identical(other.showAdLevel, showAdLevel) ||
                other.showAdLevel == showAdLevel) &&
            (identical(other.nsfwScore, nsfwScore) ||
                other.nsfwScore == nsfwScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_safeFlags),
      const DeepCollectionEquality().hash(_highRiskFlags),
      const DeepCollectionEquality().hash(_unsafeFlags),
      const DeepCollectionEquality().hash(_wallUnsafeFlags),
      showsAds,
      showAdLevel,
      nsfwScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdConfigRemoteEntityImplCopyWith<_$AdConfigRemoteEntityImpl>
      get copyWith =>
          __$$AdConfigRemoteEntityImplCopyWithImpl<_$AdConfigRemoteEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdConfigRemoteEntityImplToJson(
      this,
    );
  }
}

abstract class _AdConfigRemoteEntity implements AdConfigRemoteEntity {
  factory _AdConfigRemoteEntity(
      {required final List<String> safeFlags,
      required final List<String> highRiskFlags,
      required final List<String> unsafeFlags,
      required final List<String> wallUnsafeFlags,
      required final bool showsAds,
      required final int showAdLevel,
      required final double nsfwScore}) = _$AdConfigRemoteEntityImpl;

  factory _AdConfigRemoteEntity.fromJson(Map<String, dynamic> json) =
      _$AdConfigRemoteEntityImpl.fromJson;

  @override
  List<String> get safeFlags;
  @override
  List<String> get highRiskFlags;
  @override
  List<String> get unsafeFlags;
  @override
  List<String> get wallUnsafeFlags;
  @override
  bool get showsAds;
  @override
  int get showAdLevel;
  @override
  double get nsfwScore;
  @override
  @JsonKey(ignore: true)
  _$$AdConfigRemoteEntityImplCopyWith<_$AdConfigRemoteEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
