import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/About/Widgets/CV&Hiring.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';

import '../Widgets/DesktopAboutMeRow.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AboutMeRow(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.10),
        CV_Hiring(),
      ],
    );
  }
}
