// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_gallery_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeGalleryScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchImages,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchImages value) fetchImages,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchImages value)? fetchImages,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchImages value)? fetchImages,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeGalleryScreenEventCopyWith<$Res> {
  factory $HomeGalleryScreenEventCopyWith(HomeGalleryScreenEvent value,
          $Res Function(HomeGalleryScreenEvent) then) =
      _$HomeGalleryScreenEventCopyWithImpl<$Res, HomeGalleryScreenEvent>;
}

/// @nodoc
class _$HomeGalleryScreenEventCopyWithImpl<$Res,
        $Val extends HomeGalleryScreenEvent>
    implements $HomeGalleryScreenEventCopyWith<$Res> {
  _$HomeGalleryScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImagesImplCopyWith<$Res> {
  factory _$$FetchImagesImplCopyWith(
          _$FetchImagesImpl value, $Res Function(_$FetchImagesImpl) then) =
      __$$FetchImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImagesImplCopyWithImpl<$Res>
    extends _$HomeGalleryScreenEventCopyWithImpl<$Res, _$FetchImagesImpl>
    implements _$$FetchImagesImplCopyWith<$Res> {
  __$$FetchImagesImplCopyWithImpl(
      _$FetchImagesImpl _value, $Res Function(_$FetchImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImagesImpl implements _FetchImages {
  const _$FetchImagesImpl();

  @override
  String toString() {
    return 'HomeGalleryScreenEvent.fetchImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchImages,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) {
    return fetchImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) {
    return fetchImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (fetchImages != null) {
      return fetchImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchImages value) fetchImages,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) {
    return fetchImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchImages value)? fetchImages,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) {
    return fetchImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchImages value)? fetchImages,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (fetchImages != null) {
      return fetchImages(this);
    }
    return orElse();
  }
}

abstract class _FetchImages implements HomeGalleryScreenEvent {
  const factory _FetchImages() = _$FetchImagesImpl;
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
    extends _$HomeGalleryScreenEventCopyWithImpl<$Res,
        _$AddDataEntityToFavoritesImpl>
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
    return 'HomeGalleryScreenEvent.handleFavoritePressed(dataEntity: $dataEntity)';
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
    required TResult Function() fetchImages,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) {
    return handleFavoritePressed(dataEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) {
    return handleFavoritePressed?.call(dataEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
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
    required TResult Function(_FetchImages value) fetchImages,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) {
    return handleFavoritePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchImages value)? fetchImages,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) {
    return handleFavoritePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchImages value)? fetchImages,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (handleFavoritePressed != null) {
      return handleFavoritePressed(this);
    }
    return orElse();
  }
}

abstract class _AddDataEntityToFavorites implements HomeGalleryScreenEvent {
  const factory _AddDataEntityToFavorites(
      {required final DataEntity dataEntity}) = _$AddDataEntityToFavoritesImpl;

  DataEntity get dataEntity;
  @JsonKey(ignore: true)
  _$$AddDataEntityToFavoritesImplCopyWith<_$AddDataEntityToFavoritesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeGalleryScreenState {
  ScreenStatus get screenStatus => throw _privateConstructorUsedError;
  List<DataEntity> get dataEntityListResponse =>
      throw _privateConstructorUsedError;
  List<DataEntity> get dataEntityListFavorites =>
      throw _privateConstructorUsedError;
  List<DataEntity> get dataEntityListSearched =>
      throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeGalleryScreenStateCopyWith<HomeGalleryScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeGalleryScreenStateCopyWith<$Res> {
  factory $HomeGalleryScreenStateCopyWith(HomeGalleryScreenState value,
          $Res Function(HomeGalleryScreenState) then) =
      _$HomeGalleryScreenStateCopyWithImpl<$Res, HomeGalleryScreenState>;
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      List<DataEntity> dataEntityListResponse,
      List<DataEntity> dataEntityListFavorites,
      List<DataEntity> dataEntityListSearched,
      int currentPage});

  $ScreenStatusCopyWith<$Res> get screenStatus;
}

/// @nodoc
class _$HomeGalleryScreenStateCopyWithImpl<$Res,
        $Val extends HomeGalleryScreenState>
    implements $HomeGalleryScreenStateCopyWith<$Res> {
  _$HomeGalleryScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? dataEntityListResponse = null,
    Object? dataEntityListFavorites = null,
    Object? dataEntityListSearched = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      dataEntityListResponse: null == dataEntityListResponse
          ? _value.dataEntityListResponse
          : dataEntityListResponse // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
      dataEntityListFavorites: null == dataEntityListFavorites
          ? _value.dataEntityListFavorites
          : dataEntityListFavorites // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
      dataEntityListSearched: null == dataEntityListSearched
          ? _value.dataEntityListSearched
          : dataEntityListSearched // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$HomeGalleryScreenStateImplCopyWith<$Res>
    implements $HomeGalleryScreenStateCopyWith<$Res> {
  factory _$$HomeGalleryScreenStateImplCopyWith(
          _$HomeGalleryScreenStateImpl value,
          $Res Function(_$HomeGalleryScreenStateImpl) then) =
      __$$HomeGalleryScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      List<DataEntity> dataEntityListResponse,
      List<DataEntity> dataEntityListFavorites,
      List<DataEntity> dataEntityListSearched,
      int currentPage});

  @override
  $ScreenStatusCopyWith<$Res> get screenStatus;
}

/// @nodoc
class __$$HomeGalleryScreenStateImplCopyWithImpl<$Res>
    extends _$HomeGalleryScreenStateCopyWithImpl<$Res,
        _$HomeGalleryScreenStateImpl>
    implements _$$HomeGalleryScreenStateImplCopyWith<$Res> {
  __$$HomeGalleryScreenStateImplCopyWithImpl(
      _$HomeGalleryScreenStateImpl _value,
      $Res Function(_$HomeGalleryScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? dataEntityListResponse = null,
    Object? dataEntityListFavorites = null,
    Object? dataEntityListSearched = null,
    Object? currentPage = null,
  }) {
    return _then(_$HomeGalleryScreenStateImpl(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      dataEntityListResponse: null == dataEntityListResponse
          ? _value._dataEntityListResponse
          : dataEntityListResponse // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
      dataEntityListFavorites: null == dataEntityListFavorites
          ? _value._dataEntityListFavorites
          : dataEntityListFavorites // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
      dataEntityListSearched: null == dataEntityListSearched
          ? _value._dataEntityListSearched
          : dataEntityListSearched // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeGalleryScreenStateImpl implements _HomeGalleryScreenState {
  const _$HomeGalleryScreenStateImpl(
      {required this.screenStatus,
      required final List<DataEntity> dataEntityListResponse,
      required final List<DataEntity> dataEntityListFavorites,
      required final List<DataEntity> dataEntityListSearched,
      required this.currentPage})
      : _dataEntityListResponse = dataEntityListResponse,
        _dataEntityListFavorites = dataEntityListFavorites,
        _dataEntityListSearched = dataEntityListSearched;

  @override
  final ScreenStatus screenStatus;
  final List<DataEntity> _dataEntityListResponse;
  @override
  List<DataEntity> get dataEntityListResponse {
    if (_dataEntityListResponse is EqualUnmodifiableListView)
      return _dataEntityListResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataEntityListResponse);
  }

  final List<DataEntity> _dataEntityListFavorites;
  @override
  List<DataEntity> get dataEntityListFavorites {
    if (_dataEntityListFavorites is EqualUnmodifiableListView)
      return _dataEntityListFavorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataEntityListFavorites);
  }

  final List<DataEntity> _dataEntityListSearched;
  @override
  List<DataEntity> get dataEntityListSearched {
    if (_dataEntityListSearched is EqualUnmodifiableListView)
      return _dataEntityListSearched;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataEntityListSearched);
  }

  @override
  final int currentPage;

  @override
  String toString() {
    return 'HomeGalleryScreenState(screenStatus: $screenStatus, dataEntityListResponse: $dataEntityListResponse, dataEntityListFavorites: $dataEntityListFavorites, dataEntityListSearched: $dataEntityListSearched, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeGalleryScreenStateImpl &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus) &&
            const DeepCollectionEquality().equals(
                other._dataEntityListResponse, _dataEntityListResponse) &&
            const DeepCollectionEquality().equals(
                other._dataEntityListFavorites, _dataEntityListFavorites) &&
            const DeepCollectionEquality().equals(
                other._dataEntityListSearched, _dataEntityListSearched) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      screenStatus,
      const DeepCollectionEquality().hash(_dataEntityListResponse),
      const DeepCollectionEquality().hash(_dataEntityListFavorites),
      const DeepCollectionEquality().hash(_dataEntityListSearched),
      currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeGalleryScreenStateImplCopyWith<_$HomeGalleryScreenStateImpl>
      get copyWith => __$$HomeGalleryScreenStateImplCopyWithImpl<
          _$HomeGalleryScreenStateImpl>(this, _$identity);
}

abstract class _HomeGalleryScreenState implements HomeGalleryScreenState {
  const factory _HomeGalleryScreenState(
      {required final ScreenStatus screenStatus,
      required final List<DataEntity> dataEntityListResponse,
      required final List<DataEntity> dataEntityListFavorites,
      required final List<DataEntity> dataEntityListSearched,
      required final int currentPage}) = _$HomeGalleryScreenStateImpl;

  @override
  ScreenStatus get screenStatus;
  @override
  List<DataEntity> get dataEntityListResponse;
  @override
  List<DataEntity> get dataEntityListFavorites;
  @override
  List<DataEntity> get dataEntityListSearched;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$HomeGalleryScreenStateImplCopyWith<_$HomeGalleryScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
