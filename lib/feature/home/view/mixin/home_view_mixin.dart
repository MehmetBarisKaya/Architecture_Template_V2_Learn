import 'package:architecture_template_v2/feature/home/view/home_view.dart';
import 'package:architecture_template_v2/product/service/login_service/post_service.dart';
import 'package:architecture_template_v2/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template_v2/product/state/product_state_items.dart';
import 'package:flutter/material.dart';

///Manage  home view logic
mixin HomeViewMixin on State<HomeView> {
  late final PostService postService;
  late final ProductNetworkErrorManager productNetworkErrorManager;

  @override
  void initState() {
    super.initState();
    postService =
        PostService(networkManager: ProductStateItems.productNetworkManager);
    productNetworkErrorManager = ProductNetworkErrorManager(context: context);

    ProductStateItems.productNetworkManager.listenErrorState(
      onErrorStatus: productNetworkErrorManager.handleError,
    );
  }
}
