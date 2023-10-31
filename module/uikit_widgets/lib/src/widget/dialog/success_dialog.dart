// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uikit_widgets/src/core/dialog_base.dart';

///Show a success dialog
class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    required this.title,
    super.key,
  });

  ///Title for dialog
  final String title;

  ///Show the dialog for success
  ///This method always returns true
  static Future<bool> show({
    required BuildContext context,
    required String title,
  }) async {
    await DialogBase.show<bool>(
      context: context,
      builder: (context) => SuccessDialog(title: title),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
