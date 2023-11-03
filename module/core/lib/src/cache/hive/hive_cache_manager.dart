import 'package:core/src/cache/core/cache_manager.dart';
import 'package:core/src/cache/core/cache_model.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/// The `HiveCacheManager` class is a custom cache manager that extends the
/// `CacheManager`class. It is responsible for initializing and managing the
///  cache using the Hive database.
final class HiveCacheManager extends CacheManager {
  /// In the `HiveCacheManager` class, the `path` parameter is used to specify
  /// the directory path where the Hive database will be stored.
  HiveCacheManager({
    super.path,
  });

  @override
  Future<void> init({required List<CacheModel> items}) async {
    final documentPath =
        path ?? (await getApplicationDocumentsDirectory()).path;
    Hive.defaultDirectory = documentPath;

    for (final item in items) {
      Hive.registerAdapter('${item.runtimeType}', item.fromDynamicJson);
    }
  }

  @override
  void remove() {
    Hive.deleteAllBoxesFromDisk();
  }
}
