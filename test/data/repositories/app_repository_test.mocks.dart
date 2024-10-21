// Mocks generated by Mockito 5.4.4 from annotations
// in igmur_images_example/test/data/repositories/app_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:igmur_images_example/data/models/remote_entities/data_remote_entity.dart'
    as _i7;
import 'package:igmur_images_example/data/models/remote_entities/response_remote_entity.dart'
    as _i2;
import 'package:igmur_images_example/data/models/requests/gallery_remote_request.dart'
    as _i5;
import 'package:igmur_images_example/data/repositories/data_source_contracts/local/app_local_datasource_contract.dart'
    as _i6;
import 'package:igmur_images_example/data/repositories/data_source_contracts/remote/app_remote_data_source_contract.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponseRemoteEntity_0 extends _i1.SmartFake
    implements _i2.ResponseRemoteEntity {
  _FakeResponseRemoteEntity_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AppRemoteDataSourceContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppRemoteDataSourceContract extends _i1.Mock
    implements _i3.AppRemoteDataSourceContract {
  MockAppRemoteDataSourceContract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.ResponseRemoteEntity> getGalleryImages(
          {required _i5.GalleryRemoteRequest? request}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGalleryImages,
          [],
          {#request: request},
        ),
        returnValue: _i4.Future<_i2.ResponseRemoteEntity>.value(
            _FakeResponseRemoteEntity_0(
          this,
          Invocation.method(
            #getGalleryImages,
            [],
            {#request: request},
          ),
        )),
      ) as _i4.Future<_i2.ResponseRemoteEntity>);

  @override
  _i4.Future<_i2.ResponseRemoteEntity> searchGalleryImages(
          {required _i5.SearchGalleryRemoteRequest? request}) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchGalleryImages,
          [],
          {#request: request},
        ),
        returnValue: _i4.Future<_i2.ResponseRemoteEntity>.value(
            _FakeResponseRemoteEntity_0(
          this,
          Invocation.method(
            #searchGalleryImages,
            [],
            {#request: request},
          ),
        )),
      ) as _i4.Future<_i2.ResponseRemoteEntity>);
}

/// A class which mocks [AppLocalDataSourceContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppLocalDataSourceContract extends _i1.Mock
    implements _i6.AppLocalDataSourceContract {
  MockAppLocalDataSourceContract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i7.DataRemoteEntity>> getGalleryFavorites() =>
      (super.noSuchMethod(
        Invocation.method(
          #getGalleryFavorites,
          [],
        ),
        returnValue: _i4.Future<List<_i7.DataRemoteEntity>>.value(
            <_i7.DataRemoteEntity>[]),
      ) as _i4.Future<List<_i7.DataRemoteEntity>>);

  @override
  _i4.Future<void> saveGalleryFavorite(
          {required _i7.DataRemoteEntity? dataEntity}) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveGalleryFavorite,
          [],
          {#dataEntity: dataEntity},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  _i4.Future<void> deleteGalleryFavorite(
          {required _i7.DataRemoteEntity? dataEntity}) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteGalleryFavorite,
          [],
          {#dataEntity: dataEntity},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
