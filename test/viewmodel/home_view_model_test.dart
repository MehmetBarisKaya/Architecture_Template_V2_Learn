import 'package:architecture_template_v2/feature/home/viewmodel/home_view_model.dart';
import 'package:architecture_template_v2/feature/home/viewmodel/state/home_view_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock/post_cache_mock.dart';
import 'mock/post_service_mock.dart';

void main() {
  late HomeViewModel homeViewModel;
  setUp(() {
    homeViewModel = HomeViewModel(
      postOperation: PostServiceMock(),
      postCacheOperation: PostCacheMock(),
    );
  });

  group('HomeViewModel test', () {
    test('Initial state is loading', () {
      expect(homeViewModel.state.isLoading, false);
    });

    blocTest<HomeViewModel, HomeViewState>(
      'loading',
      build: () => homeViewModel,
      act: (bloc) async => bloc.changeLoading(),
      expect: () => [
        isA<HomeViewState>().having((state) => state.isLoading, 'posts', true),
      ],
    );
    blocTest<HomeViewModel, HomeViewState>(
      'fetch posts',
      build: () => homeViewModel,
      act: (bloc) async => bloc.getPosts(),
      expect: () => [
        isA<HomeViewState>()
            .having((state) => state.posts, 'post s', isNotEmpty),
      ],
    );

    test('Check database for items', () async {
      await homeViewModel.getPosts();

      expect(homeViewModel.postsFromCache, isNotEmpty);
    });
  });
}
