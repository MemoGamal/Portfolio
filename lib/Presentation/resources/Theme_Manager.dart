import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/styles_manager.dart';

import 'Font_Manager.dart';

ThemeData GetApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.whiteColour,
    primaryColorDark: ColorManager.bigTextColour,
    disabledColor: ColorManager.smalltextColour,
    splashColor: ColorManager.shadowColour,

    // CardView Theme:
    cardTheme: const CardTheme(
      color: ColorManager.whiteColour,
      shadowColor: ColorManager.smalltextColour,
      elevation: AppSize.s4,
    ),

    // AppBar Theme:
    appBarTheme: AppBarTheme(
      color: ColorManager.whiteColour,
      elevation: AppSize.s4,
      titleTextStyle: getRegularStyle(
          fontsize: FontSize.s16, color: ColorManager.whiteColour),
    ),

    //Button Theme:
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      // splashColor: ColorManager.lightPrimary,
      buttonColor: ColorManager.whiteColour,
    ),

    //Elevated Button Theme:
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.whiteColour,
          fontsize: FontSize.s16,
        ),
        backgroundColor: ColorManager.whiteColour,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)),
      ),
    ),

    // Text Theme :

    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
          color: ColorManager.whiteColour, fontsize: FontSize.s20),
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.bigTextColour, fontsize: FontSize.s16),
      headlineMedium: getRegularStyle(
          color: ColorManager.whiteColour, fontsize: FontSize.s14),
      titleMedium: getMediumStyle(
          color: ColorManager.smalltextColour, fontsize: FontSize.s16),
      titleSmall: getRegularStyle(
          color: ColorManager.smalltextColour, fontsize: FontSize.s16),
      bodyLarge: getRegularStyle(color: ColorManager.smalltextColour),
      bodySmall: getRegularStyle(color: ColorManager.smalltextColour),
      bodyMedium: getRegularStyle(
          color: ColorManager.smalltextColour, fontsize: FontSize.s12),
      labelSmall: getBoldStyle(
          color: ColorManager.smalltextColour, fontsize: FontSize.s12),
    ),

    // Input Decoration Theme:

    inputDecorationTheme: InputDecorationTheme(
      // Content Padding..
      contentPadding: const EdgeInsets.all(AppPading.p8),
      // Hint Style: ..
      hintStyle: getRegularStyle(
          color: ColorManager.smalltextColour, fontsize: FontSize.s14),
      // Error Style:..
      errorStyle: getRegularStyle(
          color: ColorManager.errorColour, fontsize: FontSize.s14),
      // Label Style: ..
      labelStyle: getRegularStyle(
          color: ColorManager.smalltextColour, fontsize: FontSize.s14),
      //EnabledBorder: ..
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
            color: ColorManager.smalltextColour, width: AppSize.s1_5),
      ),

      //Focused Border Style :..
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
            color: ColorManager.smalltextColour, width: AppSize.s1_5),
      ),

      //Error Border Style: ..
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
            color: ColorManager.errorColour, width: AppSize.s1_5),
      ),

      //Focused Error Border Style:..
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
            color: ColorManager.smalltextColour, width: AppSize.s1_5),
      ),

      //Disabled Border:..
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
            color: ColorManager.smalltextColour, width: AppSize.s1_5),
      ),
    ),
  );
}
