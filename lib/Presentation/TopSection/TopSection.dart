import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/BottomBar/View/BottomBar.dart';
import 'package:mywebsite_portfolio/Presentation/TopSection/widgets/TransparentGlass.dart';
import 'package:mywebsite_portfolio/Presentation/TopSection/widgets/TransparentText.dart';
import 'package:mywebsite_portfolio/Presentation/resources/constants.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/injections.dart';

import '../resources/assets_manager.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Injections.constantsInjection.getScaleFactorPersonImage(context);
    Injections.constantsInjection.getPositionedTransparentGlass(context);
    Injections.constantsInjection.positionedRowPersonImage(context);

    return Stack(
      children: [
        //Back Ground Image..
        Image.asset(
          Assets.backGroundIMG,
          fit: BoxFit.fill,
          height: Constants.backGroundImageHeigt,
          width: Constants.backGroundImageWidth,
          filterQuality: FilterQuality.high,
        ),
        // Logo Image
        Padding(
          padding:
              const EdgeInsets.only(top: AppPading.p10, left: AppPading.p20),
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
          right: Constants.positionedTransparentGlassRight,
          left: Constants.positionedTransparentGlassLeft,
          child: const TransparentGlass(),
        ),
        // Positioned Image ..

        Positioned(
          bottom: Constants.positionedRowPersonImageBottom,
          top: Constants.positionedRowPersonImageTop,
          left: Constants.positionedRowPersonImageLeft,
          right: Constants.positionedRowPersonImageRight,
          child: Padding(
            padding: EdgeInsets.only(
              top: Constants.positionedRowPersonImageTop,
              bottom: Constants.positionedRowPersonImageBottom,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text..
                TransparentText(),
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
