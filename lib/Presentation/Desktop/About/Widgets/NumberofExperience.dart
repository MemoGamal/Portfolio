import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/constants.dart';
import '../../../resources/responsive_design.dart';
import '../../../resources/strings_manager.dart';

class NumberofExperience extends StatelessWidget {
  const NumberofExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: Constants.kDefaultPadding),
      padding: const EdgeInsets.all(Constants.kDefaultPadding),
      height: GetHeightinPixels(150),
      width: getWidthinPixels(150),
      decoration: BoxDecoration(
        color: ColorManager.yearsOfExperienceFirstContainerColour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ColorManager.yearsOfExperienceSecondContainerColour,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 6,
              color: ColorManager.yearsOfExperienceBoxShadow.withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  StringManager.myYearsOfExperience,
                  style: TextStyle(
                    fontSize: GetHeightinPixels(50),
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = ColorManager.yearsOfExperienceNumberColour
                          .withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: Constants.blurRadiusNumOfExp,
                        color: ColorManager.yearsOfExperienceNumberBorderColour
                            .withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  StringManager.myYearsOfExperience,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: GetHeightinPixels(50),
                    color: ColorManager.whiteColour,
                  ),
                ),
              ],
            ),
            Text(
              StringManager.myYearsOfExperienceText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: GetHeightinPixels(10),
                color: ColorManager.whiteColour,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
