import 'package:flutter/material.dart';

/// Internal usage
final class DialogBase {
  DialogBase._();

  ///Show general dialog with [barrierDismissible] is false and
  ///[useSafeArea] is false
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: builder,
    );
  }
}
