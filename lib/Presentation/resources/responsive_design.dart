import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ResponsiveDesign {
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
