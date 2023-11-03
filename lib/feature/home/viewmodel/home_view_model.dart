import 'package:architecture_template_v2/feature/home/viewmodel/state/home_view_state.dart';
import 'package:architecture_template_v2/product/cache/model/post_cache_model.dart';
import 'package:architecture_template_v2/product/service/interface/post_operation.dart';
import 'package:architecture_template_v2/product/state/base/base_cubit.dart';
import 'package:core/core.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

///Manage your home view business
final class HomeViewModel extends BaseCubit<HomeViewState> {
  ///
  HomeViewModel({
    required PostOperation postOperation,
    required HiveCacheOperation<PostCacheModel> postCacheOperation,
  })  : _postOperation = postOperation,
        _postCacheOperation = postCacheOperation,
        super(const HomeViewState(isLoading: false));
  final PostOperation _postOperation;
  final HiveCacheOperation<PostCacheModel> _postCacheOperation;

  ///Change loading state
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  ///Get Posts
  Future<void> getPosts() async {
    CustomLogger.showError<PostModel>(postsFromCache);

    //changeLoading();
    final response = await _postOperation.fetch();
    _saveItems(response);
    emit(state.copyWith(posts: response));
    //changeLoading();
  }

  void _saveItems(List<PostModel> posts) {
    for (final element in posts) {
      _postCacheOperation.add(PostCacheModel(post: element));
    }
  }

  List<PostModel> get postsFromCache =>
      _postCacheOperation.getAll().map((e) => e.post).toList();
}
