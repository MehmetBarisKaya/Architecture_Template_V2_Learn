import 'package:flutter/material.dart';

///Project core padding
class ProjectPadding extends EdgeInsets {
  /// The line is defining a private constructor for the
  const ProjectPadding._() : super.all(0);

  ///All padding
  ///[ProjectPadding.allSmall] is 8
  const ProjectPadding.allSmall() : super.all(8);

  ///[ProjectPadding.allNormal] is 16
  const ProjectPadding.allNormal() : super.all(16);

  ///[ProjectPadding.allMedium] is 20
  const ProjectPadding.allMedium() : super.all(20);

  ///[ProjectPadding.allLarge] is 32
  const ProjectPadding.allLarge() : super.all(32);
}
