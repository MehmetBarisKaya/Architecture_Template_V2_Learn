import 'package:architecture_template_v2/product/service/interface/post_operation.dart';
import 'package:gen/src/model/post_model.dart';
import 'package:mockito/mockito.dart';

class PostServiceMock extends Mock implements PostOperation {
  @override
  Future<List<PostModel>> fetch() async {
    return [
      PostModel(body: 'post', id: 1, userId: 1, title: 'a'),
      PostModel(body: 'post2', id: 2, userId: 2, title: 'a2'),
      PostModel(body: 'post3', id: 3, userId: 3, title: 'a3'),
    ];
  }
}
