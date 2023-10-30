import 'package:flutter/material.dart';

/// The ` CustomTheme` is defining a blueprint for a custom theme in Flutter.

abstract class CustomTheme {
  /// The `themeData`   returns an instance of the `ThemeData`
  ThemeData get themeData;

  ///FloatingActionButton theme
  FloatingActionButtonThemeData get floatingActionButtonThemeData;
}
