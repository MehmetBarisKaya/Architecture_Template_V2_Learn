// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:architecture_template_v2/product/widget/constant/project_radius.dart';
import 'package:flutter/material.dart';

///Radius is 20
class NormalButton extends StatelessWidget {
  const NormalButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  /// title text
  final String title;

  ///Button on pressed
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: ProjectRadius.medium.value,
      onTap: onPressed,
      child: Text(title),
    );
  }
}
