import 'package:architecture_template_v2/feature/home/view/home_view.dart';
import 'package:architecture_template_v2/feature/home/viewmodel/home_view_model.dart';
import 'package:architecture_template_v2/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template_v2/product/service/post_service/post_service.dart';
import 'package:architecture_template_v2/product/state/base/base_state.dart';
import 'package:architecture_template_v2/product/state/container/product_state_items.dart';

///Manage  home view logic
mixin HomeViewMixin on BaseState<HomeView> {
  late final HomeViewModel _homeViewModel;

  late final ProductNetworkErrorManager _productNetworkErrorManager;

  ///HomeViewModel getter
  HomeViewModel get homeViewModel => _homeViewModel;

  @override
  void initState() {
    super.initState();

    _productNetworkErrorManager = ProductNetworkErrorManager(context: context);

    productNetworkManager.listenErrorState(
      onErrorStatus: _productNetworkErrorManager.handleError,
    );

    _homeViewModel = HomeViewModel(
      postOperation: PostService(
        networkManager: productNetworkManager,
      ),
      postCacheOperation: ProductStateItems.productCache.postCacheOperation,
    );
  }
}
