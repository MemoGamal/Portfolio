import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Theme_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/styles_manager.dart';

class TransparentGlass extends StatelessWidget {
  const TransparentGlass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}
