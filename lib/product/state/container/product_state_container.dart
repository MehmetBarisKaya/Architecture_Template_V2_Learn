import 'package:architecture_template_v2/product/cache/product_cache.dart';
import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:architecture_template_v2/product/state/view_model/product_view_model.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';

///Product core container for dependency injection
final class ProductStateContainer {
  const ProductStateContainer._();
  static final _getIt = GetIt.I;

  ///product core required items
  static void setUp() {
    _getIt
      ..registerSingleton(ProductCache(cacheManager: HiveCacheManager()))
      ..registerSingleton<ProductNetworkManager>(ProductNetworkManager.base())
      ..registerLazySingleton<ProductViewModel>(ProductViewModel.new);
  }

  ///read your dependency item for [ProductStateContainer]
  static T read<T extends Object>() => _getIt<T>();
}
