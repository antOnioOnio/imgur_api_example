// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryRequest {
  String get section => throw _privateConstructorUsedError;
  String get sort => throw _privateConstructorUsedError;
  String get window => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get showViral => throw _privateConstructorUsedError;
  bool get mature => throw _privateConstructorUsedError;
  bool get albumPreviews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalleryRequestCopyWith<GalleryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryRequestCopyWith<$Res> {
  factory $GalleryRequestCopyWith(
          GalleryRequest value, $Res Function(GalleryRequest) then) =
      _$GalleryRequestCopyWithImpl<$Res, GalleryRequest>;
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
class _$GalleryRequestCopyWithImpl<$Res, $Val extends GalleryRequest>
    implements $GalleryRequestCopyWith<$Res> {
  _$GalleryRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$GalleryRequestImplCopyWith<$Res>
    implements $GalleryRequestCopyWith<$Res> {
  factory _$$GalleryRequestImplCopyWith(_$GalleryRequestImpl value,
          $Res Function(_$GalleryRequestImpl) then) =
      __$$GalleryRequestImplCopyWithImpl<$Res>;
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
class __$$GalleryRequestImplCopyWithImpl<$Res>
    extends _$GalleryRequestCopyWithImpl<$Res, _$GalleryRequestImpl>
    implements _$$GalleryRequestImplCopyWith<$Res> {
  __$$GalleryRequestImplCopyWithImpl(
      _$GalleryRequestImpl _value, $Res Function(_$GalleryRequestImpl) _then)
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
    return _then(_$GalleryRequestImpl(
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

class _$GalleryRequestImpl implements _GalleryRequest {
  const _$GalleryRequestImpl(
      {this.section = 'hot',
      this.sort = 'viral',
      this.window = 'day',
      required this.page,
      this.showViral = true,
      this.mature = true,
      this.albumPreviews = true});

  @override
  @JsonKey()
  final String section;
  @override
  @JsonKey()
  final String sort;
  @override
  @JsonKey()
  final String window;
  @override
  final int page;
  @override
  @JsonKey()
  final bool showViral;
  @override
  @JsonKey()
  final bool mature;
  @override
  @JsonKey()
  final bool albumPreviews;

  @override
  String toString() {
    return 'GalleryRequest(section: $section, sort: $sort, window: $window, page: $page, showViral: $showViral, mature: $mature, albumPreviews: $albumPreviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryRequestImpl &&
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
  _$$GalleryRequestImplCopyWith<_$GalleryRequestImpl> get copyWith =>
      __$$GalleryRequestImplCopyWithImpl<_$GalleryRequestImpl>(
          this, _$identity);
}

abstract class _GalleryRequest implements GalleryRequest {
  const factory _GalleryRequest(
      {final String section,
      final String sort,
      final String window,
      required final int page,
      final bool showViral,
      final bool mature,
      final bool albumPreviews}) = _$GalleryRequestImpl;

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
  _$$GalleryRequestImplCopyWith<_$GalleryRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
