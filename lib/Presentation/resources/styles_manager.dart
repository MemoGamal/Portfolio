import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
  double fontsize,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: fontsize,
    fontWeight: fontWeight,
    color: color,
  );
}

// Regular Style..
TextStyle getRegularStyle({required double fontsize, required Color color}) {
  return _getTextStyle(
    fontsize,
    FontWeightManager.regular,
    color,
  );
}

// Bold Style..
TextStyle getBoldStyle({required double fontsize, required Color color}) {
  return _getTextStyle(
    fontsize,
    FontWeightManager.bold,
    color,
  );
}

// Semi-Bold Style..
TextStyle getSemiBoldStyle({required double fontsize, required Color color}) {
  return _getTextStyle(
    fontsize,
    FontWeightManager.semiBold,
    color,
  );
}

// Medium Style..

TextStyle getMediumStyle({required double fontsize, required Color color}) {
  return _getTextStyle(
    fontsize,
    FontWeightManager.medium,
    color,
  );
}

// Light Style..

TextStyle getLightStyle({required double fontsize, required Color color}) {
  return _getTextStyle(
    fontsize = FontSize.s12,
    FontWeightManager.light,
    color,
  );
}
