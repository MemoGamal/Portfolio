// AppSize.backGroundIMGHeight = MediaQuery.of(context).size.height;
//   AppSize.backGroundIMGWidth = MediaQuery.of(context).size.width;
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

class Constants {
  static double backGroundImageHeigt = getHeight() * 0.80;
  static double backGroundImageWidth = getWidth();
// static double backGroundImageHeigt=;

  static double scaleFactorBGIMG = 2.5;
  static double scaleFactorPersonIMG = 0;
  // Getting The Scale Of Person Image
  void getScaleFactorPersonImage(context) {
    scaleFactorPersonIMG = ResponsiveDesign.isDesktop(context) ? 1.8 : 4;
  }

  static double positionedRowPersonImageRight = 40;
  static double positionedRowPersonImageLeft = 60;
  static double positionedRowPersonImageBottom = 0;
  static double positionedRowPersonImageTop = 0;
  void positionedRowPersonImage(context) {
    positionedRowPersonImageBottom =
        ResponsiveDesign.isDesktop(context) ? 30 : 0;
    positionedRowPersonImageTop =
        ResponsiveDesign.isDesktop(context) ? 50 : 100;
    print(positionedRowPersonImageTop);
  }

  // static double positionedTransparentTextRight = 20;
  // static double positionedTransparentTextLeft = 40;
  // static double positionedTransparentTextBottom = 170;

  static double positionedTransparentGlassRight = 30;
  static double positionedTransparentGlassLeft = 30;
  void getPositionedTransparentGlass(context) {
    positionedTransparentGlassBottom =
        ResponsiveDesign.isDesktop(context) ? 60 : 60;
    positionedTransparentGlassTop =
        ResponsiveDesign.isDesktop(context) ? 150 : 240;
  }

  static double positionedTransparentGlassBottom = 0;
  static double positionedTransparentGlassTop = 0;

  static double bottomBarHeigt = 60;
  static double positionedBottomBarRight = 30;
  static double positionedBottomBarLeft = 30;
  static double positionedBottomBarBottom = 0;

  static double bottomBarBorderRadius = 10;
  static double bottomBarBorderPadding = AppPading.p20;

  static int bottomBarItemsCount = 5;
}
