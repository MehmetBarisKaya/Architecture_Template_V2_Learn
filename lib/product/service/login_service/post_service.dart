// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/product/service/manager/product_network_path.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

final class PostService {
  PostService({required INetworkManager<EmptyModel> networkManager})
      : _networkManager = networkManager;
  final INetworkManager<EmptyModel> _networkManager;

  Future<List<PostModel>> fetch() async {
    final response = await _networkManager.send<PostModel, List<PostModel>>(
      ProductNetworkPath.posts.value,
      parseModel: PostModel(),
      method: RequestType.GET,
    );
    return response.data ?? [];
  }
}
