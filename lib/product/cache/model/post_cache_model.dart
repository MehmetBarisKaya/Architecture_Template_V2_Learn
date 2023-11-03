// ignore_for_file: public_member_api_docs

import 'package:core/core.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

final class PostCacheModel with CacheModel {
  PostCacheModel({required this.post});
  PostCacheModel.empty() : post = PostModel();
  final PostModel post;

  @override
  PostCacheModel fromDynamicJson(dynamic json) {
    final jsonMap = json as Map<String, dynamic>?;
    if (jsonMap == null) {
      CustomLogger.showError<PostModel>('Json cannot be null');
      return this;
    }
    return copyWith(post: post.fromJson(jsonMap));
  }

  @override
  String get id => post.id.toString();

  @override
  Map<String, dynamic> toJson() {
    return post.toJson();
  }

  PostCacheModel copyWith({
    PostModel? post,
  }) {
    return PostCacheModel(post: post ?? this.post);
  }
}
