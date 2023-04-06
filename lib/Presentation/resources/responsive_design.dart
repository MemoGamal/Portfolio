import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveDesign {
  static bool isIOSSystem(BuildContext context) =>
      Theme.of(context).platform == TargetPlatform.iOS;
  static bool isWindowsSystem(BuildContext context) =>
      Theme.of(context).platform == TargetPlatform.windows;
  static bool isMacSystem(BuildContext context) =>
      Theme.of(context).platform == TargetPlatform.macOS;
  static bool isAndroid(BuildContext context) =>
      Theme.of(context).platform == TargetPlatform.android;
  static bool isLinuxSystem(BuildContext context) =>
      Theme.of(context).platform == TargetPlatform.linux;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width < 1024;
}

getHeight() {
  return Get.height;
}

getWidth() {
  return Get.width;
}

// ignore: non_constant_identifier_names
GetHeightinPixels(double pixels) {
  double x = getHeight() / pixels;
  return getHeight() / x;
}

getWidthinPixels(double pixels) {
  double x = getWidth() / pixels;
  return getWidth() / x;
}
