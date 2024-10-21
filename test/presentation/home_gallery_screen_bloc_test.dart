import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:igmur_images_example/app/types/result.dart';
import 'package:igmur_images_example/app/types/screen_status.dart';
import 'package:igmur_images_example/domain/models/requests/gallery_request.dart';
import 'package:igmur_images_example/domain/repository_contracts/app_repository_contract.dart';
import 'package:igmur_images_example/presentation/features/home_gallery/tabs/home_tab/bloc/home_gallery_screen_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../instruments/model_instruments.dart';
import 'home_gallery_screen_bloc_test.mocks.dart';

@GenerateMocks([AppRepositoryContract])
void main() {
  late HomeGalleryScreenBloc bloc;
  late MockAppRepositoryContract mockAppRepositoryContract;

  setUp(() {
    mockAppRepositoryContract = MockAppRepositoryContract();
    bloc = HomeGalleryScreenBloc(
      repositoryContract: mockAppRepositoryContract,
    );
  });

  test(
    'Given an empty bloc When we check initial state Then state is correctly set to initial',
    () {
      expect(
        bloc.state,
        HomeGalleryScreenState.initial(),
      );
    },
  );
  blocTest(
    'GIVEN CvDetailScreenBloc WHEN trigger searchCvs event and the response is correct THEN we set the correct state  ',
    build: () => bloc,
    setUp: () {
      when(
        mockAppRepositoryContract.getGalleryImages(
          request: const GalleryRequest(page: 1),
        ),
      ).thenAnswer(
        (realInvocation) async => Result.success(
          ModelInstruments.getListDataEntity(),
        ),
      );
    },
    act: (bloc) => bloc.add(const HomeGalleryScreenEvent.fetchImages()),
    expect: () => [
      HomeGalleryScreenState.initial().copyWith(
        screenStatus: const ScreenStatus.loading(),
        currentPage: 1,
      ),
      HomeGalleryScreenState.initial().copyWith(
        screenStatus: const ScreenStatus.success(),
        dataEntityListResponse: ModelInstruments.getListDataEntity(),
        currentPage: 1,
      ),
    ],
  );
}
