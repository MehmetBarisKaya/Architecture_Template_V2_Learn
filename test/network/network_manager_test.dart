import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/service/manager/product_network_manager.dart';
import 'package:architecture_template_v2/product/service/manager/product_network_path.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

void main() {
  late final ProductNetworkManager networkManager;
  setUp(() {
    AppEnvironment.general();
    networkManager = ProductNetworkManager.base();
  });
  test('Get Users post form api', () async {
    final response = await networkManager.send<PostModel, PostModel>(
      ProductNetworkPath.posts.withQuery('1'),
      parseModel: PostModel(),
      method: RequestType.GET,
    );
    expect(response.data, isNotNull);
  });
}
