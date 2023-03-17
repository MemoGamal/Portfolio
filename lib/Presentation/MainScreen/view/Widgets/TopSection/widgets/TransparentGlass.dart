import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
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
        padding: const EdgeInsets.only(top: AppPading.p50),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: SizedBox(
              height: ResponsiveDesign.isDesktop(context)
                  ? backGroundIMGHeight * 0.40
                  : backGroundIMGHeight * 0.30,
              width: backGroundIMGWidth * 0.90,
              child: Column(
                children: [
                  Text(
                    StringManager.transParentScreenWelcome,
                    style: Theme.of(context).textTheme.headlineSmall,
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
