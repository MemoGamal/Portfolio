import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/About/TopSection/widgets/DesktopTransparentGlass.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/About/TopSection/widgets/DesktopTransparentText.dart';
import 'package:mywebsite_portfolio/Presentation/resources/constants.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/injections.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';
import '../../../resources/assets_manager.dart';
import '../../BottomBar/View/DesktopBottomBar.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Injections.constantsInjection.getScaleFactorPersonImage(context);
    Injections.constantsInjection.getPositionedTransparentGlass(context);
    Injections.constantsInjection.positionedRowPersonImage(context);
    Injections.constantsInjection.getBGImageSize(context);
    Injections.constantsInjection.getSizeFactorPersonImage(context);
    Injections.constantsInjection.getPositionedBottomBar(context);

    return Stack(
      children: [
        //Back Ground Image..
        Image.asset(
          Assets.backGroundIMG,
          fit: BoxFit.cover,
          height: Constants.backGroundImageHeigt,
          width: Constants.backGroundImageWidth,
          filterQuality: FilterQuality.high,
        ),
        // Logo Image
        Padding(
          padding: EdgeInsets.only(top: AppPading.p10, left: AppPading.p20),
          child: Container(
            alignment: Alignment.topLeft,
            height: Constants.backGroundImageHeigt / 2,
            width: Constants.backGroundImageWidth / 2,
            child: Image.asset(
              Assets.logoIMG,
              fit: BoxFit.fill,
              scale: Constants.scaleFactorBGIMG,
            ),
          ),
        ),

        // Transparent Glass
        Positioned(
          bottom: Constants.positionedTransparentGlassBottom,
          top: Constants.positionedTransparentGlassTop,
          left: Constants.positionedTransparentGlassLeft,
          child: const TransparentGlass(),
        ),
        // Positioned Image ..

        Positioned(
          left: Constants.positionedRowPersonImageLeft,
          bottom: Constants.positionedRowPersonImageBottom,
          top: Constants.positionedRowPersonImageTop,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text..
              const TransparentText(),
              // right: Constants.positionedPersonImageRight,
              // bottom: Constants.positionedPersonImageBottom,

              Image.asset(
                Assets.personIMG,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
                scale: Constants.scaleFactorPersonIMG,
              ),
              // Positioned Text
              //  left: Constants.positionedTransparentTextLeft,
              //   bottom: Constants.positionedTransparentTextBottom,
            ],
          ),
        ),
        //BottomBar
        Positioned(
          bottom: Constants.positionedBottomBarBottom,
          right: Constants.positionedBottomBarRight,
          left: Constants.positionedBottomBarLeft,
          child: const BottomBar(),
        ),
      ],
    );
  }
}
