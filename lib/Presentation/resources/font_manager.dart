import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

class FontConstants {
  static const String fontFamily = "Montserrat";
}

class FontWeightManager {
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
}

class FontSize {
  static double s12 = getWidthinPixels(12);
  static double s14 = getWidthinPixels(14);
  static double s16 = getWidthinPixels(16);
  static double s18 = getWidthinPixels(18);
  static double s20 = getWidthinPixels(20);
  static double s22 = getWidthinPixels(22);
  static double s30 = getWidthinPixels(30);
  static double s40 = getWidthinPixels(40);
  static double s60 = getWidthinPixels(60);
}
