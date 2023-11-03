import 'package:architecture_template_v2/feature/home/view/widget/home_post_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gen/gen.dart';

void main() {
  setUp(() {});
  testWidgets('Home Post List test', (tester) async {
    final posts = [
      PostModel(body: 'post', id: 1, userId: 1, title: 'a'),
      PostModel(body: 'post2', id: 2, userId: 2, title: 'a2'),
      PostModel(body: 'post3', id: 3, userId: 3, title: 'a3'),
    ];

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: HomePostList(posts: posts),
        ),
      ),
    );
    for (final item in posts) {
      expect(find.text(item.title!), findsOneWidget);
    }
  });
}
