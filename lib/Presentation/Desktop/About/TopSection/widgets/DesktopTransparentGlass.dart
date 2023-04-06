import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

class TransparentGlass extends StatelessWidget {
  const TransparentGlass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidthinPixels(800),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(),
          // child: Padding(
          //   padding: EdgeInsets.only(
          //     left: ResponsiveDesign.isDesktop(context)
          //         ? AppPading.p50
          //         : AppPading.p20,
          //     top: AppPading.p20,
          //     bottom: AppPading.p20,
          //   ),
          //   child:
        ),
      ),
    );
  }
}
