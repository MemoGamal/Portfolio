import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/About/Widgets/NumberofExperience.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Theme_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
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
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.30),
      child: Row(
        children: [
          // About me Text and Logo..
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringManager.aboutMyStory,
                style: getApplicationTheme().textTheme.labelSmall,
              ),
              Image.asset(
                Assets.signIMG,
                height: 40,
              ),
            ],
          ),
          // About me Text..
          Padding(
            padding: EdgeInsets.only(top: AppPading.p20, left: AppPading.p20),
            child: SizedBox(
              width: getWidthinPixels(100),
              child: Text(
                StringManager.myStory,
                style: getApplicationTheme().textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(
            width: getWidthinPixels(50),
          ),

          // Number of Experience container..
          const NumberofExperience(),
          //Number of Experience Text..
          Padding(
            padding: EdgeInsets.only(top: AppPading.p20, left: AppPading.p20),
            child: SizedBox(
              width: getWidthinPixels(100),
              child: Text(
                StringManager.aboutMyExperience,
                style: getApplicationTheme().textTheme.titleSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
