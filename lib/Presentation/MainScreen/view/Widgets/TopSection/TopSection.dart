import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/MainScreen/view/Widgets/TopSection/widgets/TransparentGlass.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';

import '../../../../resources/assets_manager.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.backGroundIMGHeight = MediaQuery.of(context).size.height;
    AppSize.backGroundIMGWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          Assets.backGroundIMG,
          fit: BoxFit.fill,
          height: AppSize.backGroundIMGHeight / 2,
          width: AppSize.backGroundIMGWidth,
          filterQuality: FilterQuality.high,
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppPading.p10),
          child: Container(
            alignment: Alignment.topCenter,
            width: AppSize.backGroundIMGWidth / 2,
            height: AppSize.backGroundIMGHeight / 2,
            child: Image.asset(
              Assets.logoIMG,
              fit: BoxFit.fill,
              scale: 2.5,
            ),
          ),
        ),
        TransparentGlass(
          backGroundIMGHeight: AppSize.backGroundIMGHeight,
          backGroundIMGWidth: AppSize.backGroundIMGWidth,
        ),
      ],
    );
  }
}
