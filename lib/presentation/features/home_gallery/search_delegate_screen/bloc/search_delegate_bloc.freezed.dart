// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_delegate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchDelegateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchImages,
    required TResult Function(String query) deleteQueryFromHistory,
    required TResult Function() deleteHistory,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchImages,
    TResult? Function(String query)? deleteQueryFromHistory,
    TResult? Function()? deleteHistory,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchImages,
    TResult Function(String query)? deleteQueryFromHistory,
    TResult Function()? deleteHistory,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchImages value) searchImages,
    required TResult Function(_DeleteQueryFromHistory value)
        deleteQueryFromHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchImages value)? searchImages,
    TResult? Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchImages value)? searchImages,
    TResult Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDelegateEventCopyWith<$Res> {
  factory $SearchDelegateEventCopyWith(
          SearchDelegateEvent value, $Res Function(SearchDelegateEvent) then) =
      _$SearchDelegateEventCopyWithImpl<$Res, SearchDelegateEvent>;
}

/// @nodoc
class _$SearchDelegateEventCopyWithImpl<$Res, $Val extends SearchDelegateEvent>
    implements $SearchDelegateEventCopyWith<$Res> {
  _$SearchDelegateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchImagesImplCopyWith<$Res> {
  factory _$$SearchImagesImplCopyWith(
          _$SearchImagesImpl value, $Res Function(_$SearchImagesImpl) then) =
      __$$SearchImagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchImagesImplCopyWithImpl<$Res>
    extends _$SearchDelegateEventCopyWithImpl<$Res, _$SearchImagesImpl>
    implements _$$SearchImagesImplCopyWith<$Res> {
  __$$SearchImagesImplCopyWithImpl(
      _$SearchImagesImpl _value, $Res Function(_$SearchImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImagesImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImagesImpl implements _SearchImages {
  const _$SearchImagesImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchDelegateEvent.searchImages(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImagesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImagesImplCopyWith<_$SearchImagesImpl> get copyWith =>
      __$$SearchImagesImplCopyWithImpl<_$SearchImagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchImages,
    required TResult Function(String query) deleteQueryFromHistory,
    required TResult Function() deleteHistory,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) {
    return searchImages(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchImages,
    TResult? Function(String query)? deleteQueryFromHistory,
    TResult? Function()? deleteHistory,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) {
    return searchImages?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchImages,
    TResult Function(String query)? deleteQueryFromHistory,
    TResult Function()? deleteHistory,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (searchImages != null) {
      return searchImages(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchImages value) searchImages,
    required TResult Function(_DeleteQueryFromHistory value)
        deleteQueryFromHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) {
    return searchImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchImages value)? searchImages,
    TResult? Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) {
    return searchImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchImages value)? searchImages,
    TResult Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (searchImages != null) {
      return searchImages(this);
    }
    return orElse();
  }
}

abstract class _SearchImages implements SearchDelegateEvent {
  const factory _SearchImages({required final String query}) =
      _$SearchImagesImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchImagesImplCopyWith<_$SearchImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteQueryFromHistoryImplCopyWith<$Res> {
  factory _$$DeleteQueryFromHistoryImplCopyWith(
          _$DeleteQueryFromHistoryImpl value,
          $Res Function(_$DeleteQueryFromHistoryImpl) then) =
      __$$DeleteQueryFromHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$DeleteQueryFromHistoryImplCopyWithImpl<$Res>
    extends _$SearchDelegateEventCopyWithImpl<$Res,
        _$DeleteQueryFromHistoryImpl>
    implements _$$DeleteQueryFromHistoryImplCopyWith<$Res> {
  __$$DeleteQueryFromHistoryImplCopyWithImpl(
      _$DeleteQueryFromHistoryImpl _value,
      $Res Function(_$DeleteQueryFromHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$DeleteQueryFromHistoryImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteQueryFromHistoryImpl implements _DeleteQueryFromHistory {
  const _$DeleteQueryFromHistoryImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchDelegateEvent.deleteQueryFromHistory(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteQueryFromHistoryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteQueryFromHistoryImplCopyWith<_$DeleteQueryFromHistoryImpl>
      get copyWith => __$$DeleteQueryFromHistoryImplCopyWithImpl<
          _$DeleteQueryFromHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchImages,
    required TResult Function(String query) deleteQueryFromHistory,
    required TResult Function() deleteHistory,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) {
    return deleteQueryFromHistory(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchImages,
    TResult? Function(String query)? deleteQueryFromHistory,
    TResult? Function()? deleteHistory,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) {
    return deleteQueryFromHistory?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchImages,
    TResult Function(String query)? deleteQueryFromHistory,
    TResult Function()? deleteHistory,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (deleteQueryFromHistory != null) {
      return deleteQueryFromHistory(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchImages value) searchImages,
    required TResult Function(_DeleteQueryFromHistory value)
        deleteQueryFromHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) {
    return deleteQueryFromHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchImages value)? searchImages,
    TResult? Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) {
    return deleteQueryFromHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchImages value)? searchImages,
    TResult Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (deleteQueryFromHistory != null) {
      return deleteQueryFromHistory(this);
    }
    return orElse();
  }
}

abstract class _DeleteQueryFromHistory implements SearchDelegateEvent {
  const factory _DeleteQueryFromHistory({required final String query}) =
      _$DeleteQueryFromHistoryImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$DeleteQueryFromHistoryImplCopyWith<_$DeleteQueryFromHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteHistoryImplCopyWith<$Res> {
  factory _$$DeleteHistoryImplCopyWith(
          _$DeleteHistoryImpl value, $Res Function(_$DeleteHistoryImpl) then) =
      __$$DeleteHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteHistoryImplCopyWithImpl<$Res>
    extends _$SearchDelegateEventCopyWithImpl<$Res, _$DeleteHistoryImpl>
    implements _$$DeleteHistoryImplCopyWith<$Res> {
  __$$DeleteHistoryImplCopyWithImpl(
      _$DeleteHistoryImpl _value, $Res Function(_$DeleteHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteHistoryImpl implements _DeleteHistory {
  const _$DeleteHistoryImpl();

  @override
  String toString() {
    return 'SearchDelegateEvent.deleteHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchImages,
    required TResult Function(String query) deleteQueryFromHistory,
    required TResult Function() deleteHistory,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) {
    return deleteHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchImages,
    TResult? Function(String query)? deleteQueryFromHistory,
    TResult? Function()? deleteHistory,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) {
    return deleteHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchImages,
    TResult Function(String query)? deleteQueryFromHistory,
    TResult Function()? deleteHistory,
    TResult Function(DataEntity dataEntity)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (deleteHistory != null) {
      return deleteHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchImages value) searchImages,
    required TResult Function(_DeleteQueryFromHistory value)
        deleteQueryFromHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) {
    return deleteHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchImages value)? searchImages,
    TResult? Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) {
    return deleteHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchImages value)? searchImages,
    TResult Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (deleteHistory != null) {
      return deleteHistory(this);
    }
    return orElse();
  }
}

abstract class _DeleteHistory implements SearchDelegateEvent {
  const factory _DeleteHistory() = _$DeleteHistoryImpl;
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
    extends _$SearchDelegateEventCopyWithImpl<$Res,
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
    return 'SearchDelegateEvent.handleFavoritePressed(dataEntity: $dataEntity)';
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
    required TResult Function(String query) searchImages,
    required TResult Function(String query) deleteQueryFromHistory,
    required TResult Function() deleteHistory,
    required TResult Function(DataEntity dataEntity) handleFavoritePressed,
  }) {
    return handleFavoritePressed(dataEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchImages,
    TResult? Function(String query)? deleteQueryFromHistory,
    TResult? Function()? deleteHistory,
    TResult? Function(DataEntity dataEntity)? handleFavoritePressed,
  }) {
    return handleFavoritePressed?.call(dataEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchImages,
    TResult Function(String query)? deleteQueryFromHistory,
    TResult Function()? deleteHistory,
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
    required TResult Function(_SearchImages value) searchImages,
    required TResult Function(_DeleteQueryFromHistory value)
        deleteQueryFromHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
    required TResult Function(_AddDataEntityToFavorites value)
        handleFavoritePressed,
  }) {
    return handleFavoritePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchImages value)? searchImages,
    TResult? Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
    TResult? Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
  }) {
    return handleFavoritePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchImages value)? searchImages,
    TResult Function(_DeleteQueryFromHistory value)? deleteQueryFromHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    TResult Function(_AddDataEntityToFavorites value)? handleFavoritePressed,
    required TResult orElse(),
  }) {
    if (handleFavoritePressed != null) {
      return handleFavoritePressed(this);
    }
    return orElse();
  }
}

abstract class _AddDataEntityToFavorites implements SearchDelegateEvent {
  const factory _AddDataEntityToFavorites(
      {required final DataEntity dataEntity}) = _$AddDataEntityToFavoritesImpl;

  DataEntity get dataEntity;
  @JsonKey(ignore: true)
  _$$AddDataEntityToFavoritesImplCopyWith<_$AddDataEntityToFavoritesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchDelegateState {
  ScreenStatus get screenStatus => throw _privateConstructorUsedError;
  List<DataEntity> get dataEntityListSearched =>
      throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  List<String> get recentSearches => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDelegateStateCopyWith<SearchDelegateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDelegateStateCopyWith<$Res> {
  factory $SearchDelegateStateCopyWith(
          SearchDelegateState value, $Res Function(SearchDelegateState) then) =
      _$SearchDelegateStateCopyWithImpl<$Res, SearchDelegateState>;
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      List<DataEntity> dataEntityListSearched,
      int currentPage,
      List<String> recentSearches});

  $ScreenStatusCopyWith<$Res> get screenStatus;
}

/// @nodoc
class _$SearchDelegateStateCopyWithImpl<$Res, $Val extends SearchDelegateState>
    implements $SearchDelegateStateCopyWith<$Res> {
  _$SearchDelegateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? dataEntityListSearched = null,
    Object? currentPage = null,
    Object? recentSearches = null,
  }) {
    return _then(_value.copyWith(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      dataEntityListSearched: null == dataEntityListSearched
          ? _value.dataEntityListSearched
          : dataEntityListSearched // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      recentSearches: null == recentSearches
          ? _value.recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$SearchDelegateStateImplCopyWith<$Res>
    implements $SearchDelegateStateCopyWith<$Res> {
  factory _$$SearchDelegateStateImplCopyWith(_$SearchDelegateStateImpl value,
          $Res Function(_$SearchDelegateStateImpl) then) =
      __$$SearchDelegateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      List<DataEntity> dataEntityListSearched,
      int currentPage,
      List<String> recentSearches});

  @override
  $ScreenStatusCopyWith<$Res> get screenStatus;
}

/// @nodoc
class __$$SearchDelegateStateImplCopyWithImpl<$Res>
    extends _$SearchDelegateStateCopyWithImpl<$Res, _$SearchDelegateStateImpl>
    implements _$$SearchDelegateStateImplCopyWith<$Res> {
  __$$SearchDelegateStateImplCopyWithImpl(_$SearchDelegateStateImpl _value,
      $Res Function(_$SearchDelegateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? dataEntityListSearched = null,
    Object? currentPage = null,
    Object? recentSearches = null,
  }) {
    return _then(_$SearchDelegateStateImpl(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      dataEntityListSearched: null == dataEntityListSearched
          ? _value._dataEntityListSearched
          : dataEntityListSearched // ignore: cast_nullable_to_non_nullable
              as List<DataEntity>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      recentSearches: null == recentSearches
          ? _value._recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SearchDelegateStateImpl implements _SearchDelegateState {
  const _$SearchDelegateStateImpl(
      {required this.screenStatus,
      required final List<DataEntity> dataEntityListSearched,
      required this.currentPage,
      required final List<String> recentSearches})
      : _dataEntityListSearched = dataEntityListSearched,
        _recentSearches = recentSearches;

  @override
  final ScreenStatus screenStatus;
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
  final List<String> _recentSearches;
  @override
  List<String> get recentSearches {
    if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSearches);
  }

  @override
  String toString() {
    return 'SearchDelegateState(screenStatus: $screenStatus, dataEntityListSearched: $dataEntityListSearched, currentPage: $currentPage, recentSearches: $recentSearches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDelegateStateImpl &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus) &&
            const DeepCollectionEquality().equals(
                other._dataEntityListSearched, _dataEntityListSearched) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._recentSearches, _recentSearches));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      screenStatus,
      const DeepCollectionEquality().hash(_dataEntityListSearched),
      currentPage,
      const DeepCollectionEquality().hash(_recentSearches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDelegateStateImplCopyWith<_$SearchDelegateStateImpl> get copyWith =>
      __$$SearchDelegateStateImplCopyWithImpl<_$SearchDelegateStateImpl>(
          this, _$identity);
}

abstract class _SearchDelegateState implements SearchDelegateState {
  const factory _SearchDelegateState(
      {required final ScreenStatus screenStatus,
      required final List<DataEntity> dataEntityListSearched,
      required final int currentPage,
      required final List<String> recentSearches}) = _$SearchDelegateStateImpl;

  @override
  ScreenStatus get screenStatus;
  @override
  List<DataEntity> get dataEntityListSearched;
  @override
  int get currentPage;
  @override
  List<String> get recentSearches;
  @override
  @JsonKey(ignore: true)
  _$$SearchDelegateStateImplCopyWith<_$SearchDelegateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
