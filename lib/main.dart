import 'package:architecture_template_v2/product/init/app/application_initialize.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/init/theme/custom_dark_theme.dart';
import 'package:architecture_template_v2/product/init/theme/custom_light_theme.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await ApplicationInitialize().setUp();
  runApp(ProductLocalization(child: const _MyApp()));
}

/// The _MyApp class is a StatelessWidget in Dart.
final class _MyApp extends StatelessWidget {
  const _MyApp();
  static final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
    );
  }
}
