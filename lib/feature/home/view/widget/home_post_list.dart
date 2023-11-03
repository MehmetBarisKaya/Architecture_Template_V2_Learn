// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class HomePostList extends StatelessWidget {
  const HomePostList({
    required this.posts,
    super.key,
  });

  final List<PostModel> posts;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(posts[index].title ?? ''),
          subtitle: Text(posts[index].body ?? ''),
        );
      },
    );
  }
}
