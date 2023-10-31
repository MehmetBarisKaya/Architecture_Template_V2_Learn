// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uikit_widgets/src/core/dialog_base.dart';

///User question answers
class QuestionAnswer {
  QuestionAnswer({required this.response});

  ///Answer text
  final String response;
}

///Show a success dialog
class QuestionDialog extends StatefulWidget {
  const QuestionDialog({
    required this.title,
    super.key,
  });

  ///Title for dialog
  final String title;

  ///Show the dialog for success
  ///This method always returns true
  static Future<QuestionAnswer?> show({
    required BuildContext context,
    required String title,
  }) async {
    return DialogBase.show<QuestionAnswer>(
      context: context,
      builder: (context) => QuestionDialog(title: title),
    );
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  String _response = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: TextField(
        onChanged: (value) => _response = value,
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (_response.isEmpty) Navigator.of(context).pop(null);
            Navigator.of(context).pop(QuestionAnswer(response: _response));
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
