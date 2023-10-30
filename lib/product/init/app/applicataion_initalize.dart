import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

/// The `ApplicationInitialize` class is used to initialize application process
final class ApplicationInitialize {
  ///Project basic initialize
  Future<void> setUp() async {
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error);
    });
  }

  /// The method is used to initialize application process
  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    ///Kartal
    ///TODO : Splash
    await DeviceUtility.instance.initPackageInfo();
    FlutterError.onError = (details) {
      ///crashlytics  log insert here
      ///custom service  or custom logger
      ///TODO : add custom logger
      Logger().e(details);
    };
  }
}