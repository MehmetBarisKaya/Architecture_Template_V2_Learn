import 'package:gen/gen.dart';

///Post Service interface
abstract class PostOperation {
  ///Get Post method
  Future<List<PostModel>> fetch();
}
