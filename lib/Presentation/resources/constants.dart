// AppSize.backGroundIMGHeight = MediaQuery.of(context).size.height;
//   AppSize.backGroundIMGWidth = MediaQuery.of(context).size.width;
import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

class Constants {
  static const kDefaultPadding = 20.0;

  static double backGroundImageHeigt = 0;
  static double backGroundImageWidth = 0;
  void getBGImageSize(context) {
    backGroundImageWidth = MediaQuery.of(context).size.width;
    backGroundImageHeigt = MediaQuery.of(context).size.height * 0.80;
  }
// static double backGroundImageHeigt=;

  static double scaleFactorBGIMG = 0;
  static double scaleFactorPersonIMG = 0;
  // Getting The Scale Of Person Image
  void getScaleFactorPersonImage(context) {
    // scaleFactorPersonIMG = ResponsiveDesign.isDesktop(context) ? 1.8 : 4;
    scaleFactorPersonIMG = 1.5;
    scaleFactorBGIMG = 2;
  }

  static double widthFactorBGIMG = 0;
  static double heightFactorPersonIMG = 0;
  void getSizeFactorPersonImage(context) {
    widthFactorBGIMG = getWidthinPixels(120);
    heightFactorPersonIMG = GetHeightinPixels(120);
  }

  static double positionedRowPersonImageRight = 0;
  static double positionedRowPersonImageLeft = 0;
  static double positionedRowPersonImageBottom = 0;
  static double positionedRowPersonImageTop = 0;
  void positionedRowPersonImage(context) {
    // positionedRowPersonImageBottom =
    //     ResponsiveDesign.isDesktop(context) ? 30 : 20;
    // positionedRowPersonImageTop =
    //     ResponsiveDesign.isDesktop(context) ? 50 : 100;

    // positionedRowPersonImageRight =
    //     ResponsiveDesign.isDesktop(context) ? 40 : 0;
    // positionedRowPersonImageLeft =
    //     ResponsiveDesign.isDesktop(context) ? 60 : 40;

    positionedRowPersonImageBottom = 0;
    positionedRowPersonImageTop = GetHeightinPixels(10);
    positionedRowPersonImageRight = getWidthinPixels(20);
    positionedRowPersonImageLeft = getWidthinPixels(300);
  }

  // static double positionedTransparentTextRight = 20;
  // static double positionedTransparentTextLeft = 40;
  // static double positionedTransparentTextBottom = 170;

  static double positionedTransparentGlassRight = 0;
  static double positionedTransparentGlassLeft = 0;
  void getPositionedTransparentGlass(context) {
    // positionedTransparentGlassBottom =
    //     ResponsiveDesign.isDesktop(context) ? 60 : 60;
    // positionedTransparentGlassTop =
    //     ResponsiveDesign.isDesktop(context) ? 150 : 240;
    positionedTransparentGlassBottom = 160;
    positionedTransparentGlassTop = 70;
    // positionedTransparentGlassRight = 30;
    positionedTransparentGlassLeft = getWidth() * 0.20;
  }

  static double positionedTransparentGlassBottom = 0;
  static double positionedTransparentGlassTop = 0;

  static double bottomBarHeigt = 60;
  static double positionedBottomBarRight = 0;
  static double positionedBottomBarLeft = 0;
  static double positionedBottomBarBottom = 0;
  void getPositionedBottomBar(context) {
    positionedBottomBarRight = MediaQuery.of(context).size.width * 0.20;
    positionedBottomBarLeft = MediaQuery.of(context).size.width * 0.20;
  }

  static double bottomBarBorderRadius = 10;
  static double bottomBarBorderPadding = AppPading.p20;

  // Animation
  static int animationHoverDuration = 2;
  static int animationSelectedHoverDuration = 200;

  static double blurRadiusNumOfExp = 10;
}
