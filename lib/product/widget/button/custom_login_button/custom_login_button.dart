// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:architecture_template_v2/product/widget/button/normal_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uikit_widgets/uikit_widgets.dart';

part 'custom_login_button_mixin.dart';

final class CustomLoginButton extends StatefulWidget {
  const CustomLoginButton({
    required this.onOperation,
    super.key,
  });
  final AsyncValueGetter<bool> onOperation;
  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton>
    with MountedMixin, _CustomLoginButtonMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isLoadingNotifier,
      builder: (context, value, child) {
        if (value) return const CircularProgressIndicator();
        return NormalButton(
          title: 'Login',
          onPressed: () => _onPressed(context),
        );
      },
    );
  }
}
