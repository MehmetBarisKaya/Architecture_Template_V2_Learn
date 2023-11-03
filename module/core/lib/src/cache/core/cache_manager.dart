import 'package:core/src/cache/core/cache_model.dart';

///
/// The `CacheManager` is defining a interface for a cache manager.
abstract class CacheManager {
  /// The `path` parameter in the `CacheManager` class is used to specify
  /// the location or directory where the cache will be stored. It is a
  /// string value that represents the file path.
  CacheManager({
    required this.path,
  });

  /// The `init` method in the `CacheManager` class is used to initialize.
  Future<void> init({required List<CacheModel> items});

  /// This in the `CacheManager` class is used to remove the cache.
  void remove();

  /// It is a string value that represents the file path.
  final String? path;
}
