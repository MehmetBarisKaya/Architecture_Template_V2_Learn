// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage<bool?>()
class HomeDetailView extends StatelessWidget {
  const HomeDetailView({
    required this.id,
    super.key,
  });

  final String id;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
