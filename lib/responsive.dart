import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
      required this.desktop,
      this.tablet,
      this.largeMobile,
      required this.mobile})
      : super(key: key);
  final Widget desktop;
  final Widget? tablet;
  final Widget? largeMobile;
  final Widget mobile;

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isLargeMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024)
      return desktop;
    else if (_size.width >= 700 && tablet != null)
      return tablet!;
    else if (_size.width >= 600 && largeMobile != null)
      return largeMobile!;
    else
      return mobile;
  }
}
