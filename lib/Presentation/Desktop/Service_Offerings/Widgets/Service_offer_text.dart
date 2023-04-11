import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

class Service_offer_text extends StatelessWidget {
  const Service_offer_text({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: getWidthinPixels(8),
            height: GetHeightinPixels(100),
            padding: EdgeInsets.only(bottom: AppPading.p70),
            color: ColorManager.blackColor,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: ColorManager.errorColour),
            ),
          ),
          SizedBox(
            width: getWidthinPixels(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                StringManager.strongAreas,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: getWidthinPixels(20)),
              ),
              Text(
                StringManager.serviceOffering,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: ColorManager.bigTextColour),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
