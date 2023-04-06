import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/constants.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

import '../../../../resources/Theme_Manager.dart';
import '../../../../resources/strings_manager.dart';

class TransparentText extends StatelessWidget {
  const TransparentText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppPading.p70),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringManager.transParentScreenWelcome,
              // style: ResponsiveDesign.isDesktop(context)
              //     ? getApplicationTheme().textTheme.headlineLarge
              //     : getApplicationTheme().textTheme.headlineMedium,
              style: getApplicationTheme().textTheme.headlineLarge!,

              overflow: TextOverflow.ellipsis,
            ),
            Text(
              StringManager.myName,
              // style: ResponsiveDesign.isDesktop(context)
              //     ? getApplicationTheme().textTheme.headlineLarge
              //     : getApplicationTheme().textTheme.displayLarge,
              style: getApplicationTheme().textTheme.headlineLarge!,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              StringManager.myJob,
              // style: ResponsiveDesign.isDesktop(context)
              //     ? getApplicationTheme().textTheme.headlineLarge
              //     : getApplicationTheme().textTheme.displayLarge,
              style: getApplicationTheme().textTheme.headlineLarge!,

              overflow: TextOverflow.ellipsis,
            ),
          ]),
    );
  }
}
