import 'package:architecture_template_v2/feature/home/viewmodel/state/home_view_state.dart';
import 'package:architecture_template_v2/product/service/interface/post_operation.dart';
import 'package:architecture_template_v2/product/state/base/base_cubit.dart';

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
    changeLoading();
    final response = await _postOperation.fetch();
    emit(state.copyWith(posts: response));
    changeLoading();
  }
}
