import 'package:architecture_template_v2/product/cache/model/post_cache_model.dart';
import 'package:core/core.dart';
import 'package:mockito/mockito.dart';

class PostCacheMock extends Mock implements HiveCacheOperation<PostCacheModel> {
  final List<PostCacheModel> _postCacheModel = [];
  @override
  void add(PostCacheModel item) {
    _postCacheModel.add(item);
  }

  @override
  List<PostCacheModel> getAll() {
    return _postCacheModel;
  }
}
