// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavEventCopyWith<$Res> {
  factory $FavEventCopyWith(FavEvent value, $Res Function(FavEvent) then) =
      _$FavEventCopyWithImpl<$Res, FavEvent>;
}

/// @nodoc
class _$FavEventCopyWithImpl<$Res, $Val extends FavEvent>
    implements $FavEventCopyWith<$Res> {
  _$FavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadFavoritesImplCopyWith<$Res> {
  factory _$$LoadFavoritesImplCopyWith(
          _$LoadFavoritesImpl value, $Res Function(_$LoadFavoritesImpl) then) =
      __$$LoadFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoritesImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$LoadFavoritesImpl>
    implements _$$LoadFavoritesImplCopyWith<$Res> {
  __$$LoadFavoritesImplCopyWithImpl(
      _$LoadFavoritesImpl _value, $Res Function(_$LoadFavoritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadFavoritesImpl implements _LoadFavorites {
  const _$LoadFavoritesImpl();

  @override
  String toString() {
    return 'FavEvent.loadFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) {
    return loadFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) {
    return loadFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) {
    return loadFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) {
    return loadFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites(this);
    }
    return orElse();
  }
}

abstract class _LoadFavorites implements FavEvent {
  const factory _LoadFavorites() = _$LoadFavoritesImpl;
}

/// @nodoc
abstract class _$$AddDataEntityToFavoritesImplCopyWith<$Res> {
  factory _$$AddDataEntityToFavoritesImplCopyWith(
          _$AddDataEntityToFavoritesImpl value,
          $Res Function(_$AddDataEntityToFavoritesImpl) then) =
      __$$AddDataEntityToFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DataEntity dataEntity});

  $DataEntityCopyWith<$Res> get dataEntity;
}

/// @nodoc
class __$$AddDataEntityToFavoritesImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$AddDataEntityToFavoritesImpl>
    implements _$$AddDataEntityToFavoritesImplCopyWith<$Res> {
  __$$AddDataEntityToFavoritesImplCopyWithImpl(
      _$AddDataEntityToFavoritesImpl _value,
      $Res Function(_$AddDataEntityToFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataEntity = null,
  }) {
    return _then(_$AddDataEntityToFavoritesImpl(
      dataEntity: null == dataEntity
          ? _value.dataEntity
          : dataEntity // ignore: cast_nullable_to_non_nullable
              as DataEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DataEntityCopyWith<$Res> get dataEntity {
    return $DataEntityCopyWith<$Res>(_value.dataEntity, (value) {
      return _then(_value.copyWith(dataEntity: value));
    });
  }
}

/// @nodoc

class _$AddDataEntityToFavoritesImpl implements _AddDataEntityToFavorites {
  const _$AddDataEntityToFavoritesImpl({required this.dataEntity});

  @override
  final DataEntity dataEntity;

  @override
  String toString() {
    return 'FavEvent.handleFavoritePressed(dataEntity: $dataEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDataEntityToFavoritesImpl &&
            (identical(other.dataEntity, dataEntity) ||
                other.dataEntity == dataEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDataEntityToFavoritesImplCopyWith<_$AddDataEntityToFavoritesImpl>
      get copyWith => __$$AddDataEntityToFavoritesImplCopyWithImpl<
          _$AddDataEntityToFavoritesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) {
    return handleFavoritePressed(dataEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) {
    return handleFavoritePressed?.call(dataEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (handleFavoritePressed != null) {
      return handleFavoritePressed(dataEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) {
    return handleFavoritePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) {
    return handleFavoritePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (handleFavoritePressed != null) {
      return handleFavoritePressed(this);
    }
    return orElse();
  }
}

abstract class _AddDataEntityToFavorites implements FavEvent {
  const factory _AddDataEntityToFavorites(
      {required final DataEntity dataEntity}) = _$AddDataEntityToFavoritesImpl;

  DataEntity get dataEntity;
  @JsonKey(ignore: true)
  _$$AddDataEntityToFavoritesImplCopyWith<_$AddDataEntityToFavoritesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavState {
  ScreenStatus get screenStatus => throw _privateConstructorUsedError;
  List<DataEntity> get dataEntityListFavorites =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavStateCopyWith<FavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavStateCopyWith<$Res> {
  factory $FavStateCopyWith(FavState value, $Res Function(FavState) then) =
      _$FavStateCopyWithImpl<$Res, FavState>;
  @useResult
  $Res call(
      {ScreenStatus screenStatus, List<DataEntity> dataEntityListFavorites});

  $ScreenStatusCopyWith<$Res> get screenStatus;
}

/// @nodoc
class _$FavStateCopyWithImpl<$Res, $Val extends FavState>
    implements $FavStateCopyWith<$Res> {
  _$FavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? dataEntityListFavorites = null,
  }) {
    return _then(_value.copyWith(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      dataEntityListFavorites: null == dataEntityListFavorites
          ? _value.dataEntityListFavorites
          : dataEntityListFavorites // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScreenStatusCopyWith<$Res> get screenStatus {
    return $ScreenStatusCopyWith<$Res>(_value.screenStatus, (value) {
      return _then(_value.copyWith(screenStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavStateImplCopyWith<$Res>
    implements $FavStateCopyWith<$Res> {
  factory _$$FavStateImplCopyWith(
          _$FavStateImpl value, $Res Function(_$FavStateImpl) then) =
      __$$FavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus screenStatus, List<DataEntity> dataEntityListFavorites});

  @override
  $ScreenStatusCopyWith<$Res> get screenStatus;
}

/// @nodoc
class __$$FavStateImplCopyWithImpl<$Res>
    extends _$FavStateCopyWithImpl<$Res, _$FavStateImpl>
    implements _$$FavStateImplCopyWith<$Res> {
  __$$FavStateImplCopyWithImpl(
      _$FavStateImpl _value, $Res Function(_$FavStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? dataEntityListFavorites = null,
  }) {
    return _then(_$FavStateImpl(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      dataEntityListFavorites: null == dataEntityListFavorites
          ? _value._dataEntityListFavorites
          : dataEntityListFavorites // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
    ));
  }
}

/// @nodoc

class _$FavStateImpl implements _FavState {
  const _$FavStateImpl(
      {required this.screenStatus,
      required final List<DataEntity> dataEntityListFavorites})
      : _dataEntityListFavorites = dataEntityListFavorites;

  @override
  final ScreenStatus screenStatus;
  final List<DataEntity> _dataEntityListFavorites;
  @override
  List<DataEntity> get dataEntityListFavorites {
    if (_dataEntityListFavorites is EqualUnmodifiableListView)
      return _dataEntityListFavorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataEntityListFavorites);
  }

  @override
  String toString() {
    return 'FavState(screenStatus: $screenStatus, dataEntityListFavorites: $dataEntityListFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavStateImpl &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus) &&
            const DeepCollectionEquality().equals(
                other._dataEntityListFavorites, _dataEntityListFavorites));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenStatus,
      const DeepCollectionEquality().hash(_dataEntityListFavorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavStateImplCopyWith<_$FavStateImpl> get copyWith =>
      __$$FavStateImplCopyWithImpl<_$FavStateImpl>(this, _$identity);
}

abstract class _FavState implements FavState {
  const factory _FavState(
          {required final ScreenStatus screenStatus,
          required final List<DataEntity> dataEntityListFavorites}) =
      _$FavStateImpl;

  @override
  ScreenStatus get screenStatus;
  @override
  List<DataEntity> get dataEntityListFavorites;
  @override
  @JsonKey(ignore: true)
  _$$FavStateImplCopyWith<_$FavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
