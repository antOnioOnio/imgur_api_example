// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_remote_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryRemoteRequest {
  String get section => throw _privateConstructorUsedError;
  String get sort => throw _privateConstructorUsedError;
  String get window => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get showViral => throw _privateConstructorUsedError;
  bool get mature => throw _privateConstructorUsedError;
  bool get albumPreviews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalleryRemoteRequestCopyWith<GalleryRemoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryRemoteRequestCopyWith<$Res> {
  factory $GalleryRemoteRequestCopyWith(GalleryRemoteRequest value,
          $Res Function(GalleryRemoteRequest) then) =
      _$GalleryRemoteRequestCopyWithImpl<$Res, GalleryRemoteRequest>;
  @useResult
  $Res call(
      {String section,
      String sort,
      String window,
      int page,
      bool showViral,
      bool mature,
      bool albumPreviews});
}

/// @nodoc
class _$GalleryRemoteRequestCopyWithImpl<$Res,
        $Val extends GalleryRemoteRequest>
    implements $GalleryRemoteRequestCopyWith<$Res> {
  _$GalleryRemoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
    Object? sort = null,
    Object? window = null,
    Object? page = null,
    Object? showViral = null,
    Object? mature = null,
    Object? albumPreviews = null,
  }) {
    return _then(_value.copyWith(
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      window: null == window
          ? _value.window
          : window // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      showViral: null == showViral
          ? _value.showViral
          : showViral // ignore: cast_nullable_to_non_nullable
              as bool,
      mature: null == mature
          ? _value.mature
          : mature // ignore: cast_nullable_to_non_nullable
              as bool,
      albumPreviews: null == albumPreviews
          ? _value.albumPreviews
          : albumPreviews // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryRemoteRequestImplCopyWith<$Res>
    implements $GalleryRemoteRequestCopyWith<$Res> {
  factory _$$GalleryRemoteRequestImplCopyWith(_$GalleryRemoteRequestImpl value,
          $Res Function(_$GalleryRemoteRequestImpl) then) =
      __$$GalleryRemoteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String section,
      String sort,
      String window,
      int page,
      bool showViral,
      bool mature,
      bool albumPreviews});
}

/// @nodoc
class __$$GalleryRemoteRequestImplCopyWithImpl<$Res>
    extends _$GalleryRemoteRequestCopyWithImpl<$Res, _$GalleryRemoteRequestImpl>
    implements _$$GalleryRemoteRequestImplCopyWith<$Res> {
  __$$GalleryRemoteRequestImplCopyWithImpl(_$GalleryRemoteRequestImpl _value,
      $Res Function(_$GalleryRemoteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
    Object? sort = null,
    Object? window = null,
    Object? page = null,
    Object? showViral = null,
    Object? mature = null,
    Object? albumPreviews = null,
  }) {
    return _then(_$GalleryRemoteRequestImpl(
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      window: null == window
          ? _value.window
          : window // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      showViral: null == showViral
          ? _value.showViral
          : showViral // ignore: cast_nullable_to_non_nullable
              as bool,
      mature: null == mature
          ? _value.mature
          : mature // ignore: cast_nullable_to_non_nullable
              as bool,
      albumPreviews: null == albumPreviews
          ? _value.albumPreviews
          : albumPreviews // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GalleryRemoteRequestImpl implements _GalleryRemoteRequest {
  const _$GalleryRemoteRequestImpl(
      {required this.section,
      required this.sort,
      required this.window,
      required this.page,
      required this.showViral,
      required this.mature,
      required this.albumPreviews});

  @override
  final String section;
  @override
  final String sort;
  @override
  final String window;
  @override
  final int page;
  @override
  final bool showViral;
  @override
  final bool mature;
  @override
  final bool albumPreviews;

  @override
  String toString() {
    return 'GalleryRemoteRequest(section: $section, sort: $sort, window: $window, page: $page, showViral: $showViral, mature: $mature, albumPreviews: $albumPreviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryRemoteRequestImpl &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.window, window) || other.window == window) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.showViral, showViral) ||
                other.showViral == showViral) &&
            (identical(other.mature, mature) || other.mature == mature) &&
            (identical(other.albumPreviews, albumPreviews) ||
                other.albumPreviews == albumPreviews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section, sort, window, page,
      showViral, mature, albumPreviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryRemoteRequestImplCopyWith<_$GalleryRemoteRequestImpl>
      get copyWith =>
          __$$GalleryRemoteRequestImplCopyWithImpl<_$GalleryRemoteRequestImpl>(
              this, _$identity);
}

abstract class _GalleryRemoteRequest implements GalleryRemoteRequest {
  const factory _GalleryRemoteRequest(
      {required final String section,
      required final String sort,
      required final String window,
      required final int page,
      required final bool showViral,
      required final bool mature,
      required final bool albumPreviews}) = _$GalleryRemoteRequestImpl;

  @override
  String get section;
  @override
  String get sort;
  @override
  String get window;
  @override
  int get page;
  @override
  bool get showViral;
  @override
  bool get mature;
  @override
  bool get albumPreviews;
  @override
  @JsonKey(ignore: true)
  _$$GalleryRemoteRequestImplCopyWith<_$GalleryRemoteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
