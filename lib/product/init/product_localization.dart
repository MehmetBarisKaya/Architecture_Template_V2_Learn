import 'package:architecture_template_v2/product/utility/constant/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable

/// Product localization manager
final class ProductLocalization extends EasyLocalization {
  ///Product need to [child] for a wrap locale item
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedLocales,
          path: _translationPath,
          useOnlyLangCode: true,
        );

  ///Project supported locales
  static final List<Locale> _supportedLocales = [
    Locales.en.locale,
    Locales.tr.locale,
  ];

  ///translations file path
  static const String _translationPath = 'asset/translations';

  ///change project language by using [Locales]
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) =>
      context.setLocale(value.locale);
}
