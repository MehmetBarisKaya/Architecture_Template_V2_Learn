// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:architecture_template_v2/product/widget/button/normal_button.dart';
import 'package:flutter/material.dart';
import 'package:uikit_widgets/uikit_widgets.dart';

class DialogNormalButton extends StatelessWidget {
  const DialogNormalButton({
    required this.title,
    required this.onComplete,
    super.key,
  });
  final String title;
  final ValueChanged<bool> onComplete;
  @override
  Widget build(BuildContext context) {
    return NormalButton(
      title: title,
      onPressed: () async {
        final response =
            await SuccessDialog.show(context: context, title: title);
        onComplete.call(response);
      },
    );
  }
}
