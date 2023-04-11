import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/Recent_Works/Widgets/hireMeCard.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';

class RecentWorksView extends StatelessWidget {
  const RecentWorksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            color: ColorManager.recentWorkImageBgColour,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                Assets.recentWorkIMG,
              ),
            ),
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: const Offset(0, -20),
                child: const HireMeCard(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
