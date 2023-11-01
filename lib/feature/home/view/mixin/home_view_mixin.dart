import 'package:architecture_template_v2/feature/home/view/home_view.dart';
import 'package:architecture_template_v2/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template_v2/product/service/manager/product_network_manager.dart';
import 'package:flutter/material.dart';

///Manage  home view logic
mixin HomeViewMixin on State<HomeView> {
  late final ProductNetworkManager productNetworkManager;
  late final ProductNetworkErrorManager productNetworkErrorManager;

  @override
  void initState() {
    super.initState();
    productNetworkManager = ProductNetworkManager.base();
    productNetworkErrorManager = ProductNetworkErrorManager(context: context);

    productNetworkManager.listenErrorState(
      onErrorStatus: productNetworkErrorManager.handleError,
    );
  }
}
