import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/styles_manager.dart';

class TransparentGlass extends StatelessWidget {
  final double backGroundIMGWidth;
  final double backGroundIMGHeight;
  const TransparentGlass({
    super.key,
    required this.backGroundIMGHeight,
    required this.backGroundIMGWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: backGroundIMGHeight * 0.10),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: SizedBox(
              height: ResponsiveDesign.isDesktop(context)
                  ? backGroundIMGHeight * 0.40
                  : backGroundIMGHeight * 0.30,
              width: backGroundIMGWidth * 0.90,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: ResponsiveDesign.isDesktop(context)
                          ? AppPading.p50
                          : AppPading.p20,
                      top: AppPading.p20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringManager.transParentScreenWelcome,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          StringManager.myName,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: AppPading.p20,
                      top: AppPading.p20,
                    ),
                    //Person Image
                    child: Image.asset(
                      Assets.personIMG,
                      alignment: Alignment.centerRight,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
