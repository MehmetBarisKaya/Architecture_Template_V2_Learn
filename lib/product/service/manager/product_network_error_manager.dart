import 'dart:io';

import 'package:flutter/material.dart';

///Manage Your network error with view
final class ProductNetworkErrorManager {
  /// Context constructor
  ProductNetworkErrorManager({required this.context});

  ///context for View
  final BuildContext context;

  ///Handle error state
  void handleError(int value) {
    if (value == HttpStatus.unauthorized) {}
  }
}
