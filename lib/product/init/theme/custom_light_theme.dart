import 'package:architecture_template_v2/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_template_v2/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom light theme for app design
final class CustomLightTheme implements CustomTheme {
  @override
  //TODO: change to initialize ThemeData instead of computed
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.roboto().fontFamily,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();
}
