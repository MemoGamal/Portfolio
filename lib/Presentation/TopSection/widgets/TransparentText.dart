import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

import '../../resources/Theme_Manager.dart';
import '../../resources/strings_manager.dart';

class TransparentText extends StatelessWidget {
  const TransparentText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringManager.transParentScreenWelcome,
            style: ResponsiveDesign.isDesktop(context)
                ? GetApplicationTheme().textTheme.headlineLarge
                : GetApplicationTheme().textTheme.headlineMedium,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            StringManager.myName,
            style: ResponsiveDesign.isDesktop(context)
                ? GetApplicationTheme().textTheme.headlineLarge
                : GetApplicationTheme().textTheme.displayLarge,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            StringManager.myJob,
            style: ResponsiveDesign.isDesktop(context)
                ? GetApplicationTheme().textTheme.headlineLarge
                : GetApplicationTheme().textTheme.displayLarge,
            overflow: TextOverflow.ellipsis,
          ),
        ]);
  }
}
