import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/re_usableWidget.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/color_manager.dart';

class CV_Hiring extends StatelessWidget {
  const CV_Hiring({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        hiringWidget(context, ColorManager.whiteColour),

        SizedBox(
          width: getWidthinPixels(20),
        ),

        // Download Cv container..

        InkWell(
          onTap: () {
            // Download Cv..
          },
          child: Container(
            width: getWidthinPixels(170),
            height: GetHeightinPixels(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorManager.halfBlueConatinerColour,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.downloadIMG,
                  height: GetHeightinPixels(30),
                ),
                SizedBox(
                  width: getWidthinPixels(20),
                ),
                Text(
                  StringManager.downloadCV,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: ColorManager.blackColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
