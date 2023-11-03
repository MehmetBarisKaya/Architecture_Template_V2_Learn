import 'package:architecture_template_v2/product/cache/model/post_cache_model.dart';
import 'package:core/core.dart';

/// [ProductCache] is a cache manager for the product module.
final class ProductCache {
  ProductCache({required CacheManager cacheManager})
      : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  Future<void> init() async {
    await _cacheManager.init(
      items: [
        PostCacheModel.empty(),
      ],
    );
  }

  late final HiveCacheOperation<PostCacheModel> postCacheOperation =
      HiveCacheOperation<PostCacheModel>();
}
