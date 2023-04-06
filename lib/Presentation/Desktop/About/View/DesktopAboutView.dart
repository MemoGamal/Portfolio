import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';

import '../Widgets/DesktopAboutMeRow.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AboutMeRow(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorManager.halfBlueConatinerColour,
              ),
              child: Row(
                children: [
                  Image.asset(
                    Assets.downloadIMG,
                    height: 40,
                  ),
                  Text(
                    "Download CV",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: ColorManager.blackColor),
                  ),
                ],
              ),
            ),
            TextButton(
              child: Row(
                children: [
                  Text("Download CV"),
                  Image.asset(Assets.downloadIMG),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
