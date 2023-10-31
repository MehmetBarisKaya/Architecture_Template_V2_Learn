// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

///Define your custom widget for all platform
///mobile,desktop,mobile
final class ResponsiveAllView extends StatelessWidget {
  const ResponsiveAllView({
    required this.phone,
    required this.tablet,
    required this.desktop,
    super.key,
  });

  ///define your custom widget for phone
  final Widget phone;

  ///define your custom widget for tablet
  final Widget tablet;

  ///define your custom widget for desktop
  final Widget desktop;
  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;
    if (ResponsiveBreakpoints.of(context).isDesktop) return desktop;

    return phone;
  }
}
