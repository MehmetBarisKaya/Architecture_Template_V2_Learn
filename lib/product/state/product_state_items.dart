import 'package:architecture_template_v2/product/service/manager/product_network_manager.dart';
import 'package:architecture_template_v2/product/state/product_state_container.dart';

final class ProductStateItems {
  const ProductStateItems._();

  static ProductNetworkManager get productNetworkManager =>
      ProductStateContainer.read<ProductNetworkManager>();
}
