import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/re_usableWidget.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        color: ColorManager.whiteColour,
        borderRadius: BorderRadius.circular(getWidthinPixels(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getWidthinPixels(20),
              vertical: GetHeightinPixels(25),
            ),
            child: Image.asset(Assets.emailIMG),
          ),
          Container(
            width: getWidthinPixels(3),
            height: GetHeightinPixels(70),
            color: ColorManager.bigTextColour,
          ),
          SizedBox(
            width: getWidthinPixels(20),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringManager.startingNewJobHeadline,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: getWidthinPixels(25),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                StringManager.startingNewJobSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: AppPading.p20),
            child: hiringWidget(context, ColorManager.halfBlueConatinerColour),
          ),
        ],
      ),
    );
  }
}
