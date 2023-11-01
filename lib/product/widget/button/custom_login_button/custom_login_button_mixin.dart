part of 'custom_login_button.dart';

mixin _CustomLoginButtonMixin
    on MountedMixin<CustomLoginButton>, State<CustomLoginButton> {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  Future<void> _onPressed(BuildContext context) async {
    _isLoadingNotifier.value = true;
    final response = await widget.onOperation.call();
    await safeOperation(() async {
      if (response) return Navigator.of(context).pop();
      _isLoadingNotifier.value = false;
    });
  }
}
