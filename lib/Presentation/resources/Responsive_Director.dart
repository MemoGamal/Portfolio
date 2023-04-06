import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

import '../Desktop/MainScreen/view/DesktopMainScreenView.dart';

Widget tempWidget = Container();

class Director extends StatelessWidget {
  const Director({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveDesign.isIOSSystem(context) ||
        ResponsiveDesign.isAndroid(context)) {}

    // Desktops Systems
    if (ResponsiveDesign.isMacSystem(context) ||
        ResponsiveDesign.isWindowsSystem(context) ||
        ResponsiveDesign.isLinuxSystem(context)) {
      tempWidget = const MainScreenView();
    }
    return tempWidget;
  }
}
