import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Theme_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

class AboutMeRow extends StatelessWidget {
  const AboutMeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              StringManager.aboutMyStory,
              style: GetApplicationTheme().textTheme.labelSmall,
            ),
            // ChangeFont here..
            Text(
              StringManager.mySignature,
              style: GetApplicationTheme().textTheme.titleSmall,
            ),
          ],
        ),
        SizedBox(
          width: 100,
          child: Text(
            StringManager.myStory,
            style: GetApplicationTheme().textTheme.titleSmall,
          ),
        )
      ],
    );
  }
}
