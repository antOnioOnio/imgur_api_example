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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchImages value) fetchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchImages value)? fetchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchImages value)? fetchImages,
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
  }) {
    return fetchImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
  }) {
    return fetchImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
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
  }) {
    return fetchImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchImages value)? fetchImages,
  }) {
    return fetchImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchImages value)? fetchImages,
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
mixin _$HomeGalleryScreenState {
  ScreenStatus get screenStatus => throw _privateConstructorUsedError;

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
  $Res call({ScreenStatus screenStatus});

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
  }) {
    return _then(_value.copyWith(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
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
  $Res call({ScreenStatus screenStatus});

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
  }) {
    return _then(_$HomeGalleryScreenStateImpl(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
    ));
  }
}

/// @nodoc

class _$HomeGalleryScreenStateImpl implements _HomeGalleryScreenState {
  const _$HomeGalleryScreenStateImpl({required this.screenStatus});

  @override
  final ScreenStatus screenStatus;

  @override
  String toString() {
    return 'HomeGalleryScreenState(screenStatus: $screenStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeGalleryScreenStateImpl &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeGalleryScreenStateImplCopyWith<_$HomeGalleryScreenStateImpl>
      get copyWith => __$$HomeGalleryScreenStateImplCopyWithImpl<
          _$HomeGalleryScreenStateImpl>(this, _$identity);
}

abstract class _HomeGalleryScreenState implements HomeGalleryScreenState {
  const factory _HomeGalleryScreenState(
          {required final ScreenStatus screenStatus}) =
      _$HomeGalleryScreenStateImpl;

  @override
  ScreenStatus get screenStatus;
  @override
  @JsonKey(ignore: true)
  _$$HomeGalleryScreenStateImplCopyWith<_$HomeGalleryScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
