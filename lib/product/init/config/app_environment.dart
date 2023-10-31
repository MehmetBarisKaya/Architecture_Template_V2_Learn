import 'package:architecture_template_v2/product/init/config/app_config_interface.dart';
import 'package:architecture_template_v2/product/init/config/dev_env.dart';
import 'package:architecture_template_v2/product/init/config/prod_env.dart';
import 'package:flutter/foundation.dart';

///App environment manager class
final class AppEnvironment {
  ///SetUp application environment
  AppEnvironment.setUp(AppConfigInterface config) {
    _config = config;
  }

  ///General app environment setup
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfigInterface _config;
}

///Get app environment items
enum AppEnvironmentItems {
  ///Network base url
  baseUrl,

  /// Google Maps api key
  apiKey;

  ///Environment items value
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment is not initialized.');
    }
  }
}
