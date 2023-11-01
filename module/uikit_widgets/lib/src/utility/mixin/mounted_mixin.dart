import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///Stateful Mounted mixin
mixin MountedMixin<T extends StatefulWidget> on State<T> {
  ///Manage  your mounted state
  Future<void> safeOperation(AsyncCallback callback) async {
    if (!mounted) return;
    await callback.call();
  }
}
