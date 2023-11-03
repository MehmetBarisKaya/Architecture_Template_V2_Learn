import 'package:architecture_template_v2/product/cache/product_cache.dart';
import 'package:architecture_template_v2/product/service/manager/product_network_manager.dart';
import 'package:architecture_template_v2/product/state/container/product_state_container.dart';
import 'package:architecture_template_v2/product/state/view_model/product_view_model.dart';

/// This class is used to provide access to instance o dependency
final class ProductStateItems {
  const ProductStateItems._();

  /// [ProductNetworkManager ]dependencies
  static ProductNetworkManager get productNetworkManager =>
      ProductStateContainer.read<ProductNetworkManager>();

  ///[ProductViewModel] dependencies
  static ProductViewModel get productViewModel =>
      ProductStateContainer.read<ProductViewModel>();

  static ProductCache get productCache =>
      ProductStateContainer.read<ProductCache>();
}
