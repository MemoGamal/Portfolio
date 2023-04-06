import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/About/Widgets/NumberofExperience.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Theme_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/constants.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

import '../../../resources/Font_Manager.dart';
import '../../../resources/color_manager.dart';

class AboutMeRow extends StatelessWidget {
  const AboutMeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              StringManager.aboutMyStory,
              style: getApplicationTheme().textTheme.labelSmall,
            ),
            SizedBox(
              height: GetHeightinPixels(50),
            ),
            Image.asset(Assets.signIMG),
          ],
        ),
        SizedBox(
          width: getWidthinPixels(200),
          child: Text(
            StringManager.myStory,
            style: getApplicationTheme().textTheme.titleSmall,
          ),
        ),
        SizedBox(
          width: getWidthinPixels(50),
        ),
        const NumberofExperience(),
        SizedBox(
          width: getWidthinPixels(200),
          child: Text(
            StringManager.aboutMyExperience,
            style: getApplicationTheme().textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
