import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

///Project network image with lottie loading
class ProjectNetworkImage extends StatelessWidget {
  /// Project network image constructor
  const ProjectNetworkImage({
    super.key,
    this.url,
  });

  ///Network image url
  final String? url;
  @override
  Widget build(BuildContext context) {
    return CustomCachedNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lottie.animZombie.lottie(
        package: 'gen',
      ),
    );
  }
}
