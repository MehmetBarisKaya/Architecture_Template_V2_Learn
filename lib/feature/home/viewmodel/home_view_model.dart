import 'package:architecture_template_v2/feature/home/viewmodel/state/home_view_state.dart';
import 'package:architecture_template_v2/product/cache/model/post_cache_model.dart';
import 'package:architecture_template_v2/product/service/interface/post_operation.dart';
import 'package:architecture_template_v2/product/state/base/base_cubit.dart';
import 'package:architecture_template_v2/product/state/container/product_state_items.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

///Manage your home view business
final class HomeViewModel extends BaseCubit<HomeViewState> {
  ///
  HomeViewModel({required PostOperation postOperation})
      : _postOperation = postOperation,
        super(const HomeViewState(isLoading: false));
  late final PostOperation _postOperation;

  ///Change loading state
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  ///Get Posts
  Future<void> getPosts() async {
    CustomLogger.showError<PostModel>(posts);

    changeLoading();
    final response = await _postOperation.fetch();
    _saveItems(response);
    emit(state.copyWith(posts: response));
    changeLoading();
  }

  void _saveItems(List<PostModel> posts) {
    for (final element in posts) {
      ProductStateItems.productCache.postCacheOperation
          .add(PostCacheModel(post: element));
    }
  }

  List<PostModel> get posts => ProductStateItems.productCache.postCacheOperation
      .getAll()
      .map((e) => e.post)
      .toList();
}
