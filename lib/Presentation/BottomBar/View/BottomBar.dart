import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:mywebsite_portfolio/Presentation/BottomBar/ViewModel/BottomBarViewModel.dart';
import 'package:mywebsite_portfolio/Presentation/resources/constants.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Theme_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/injections.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: Constants.bottomBarHeigt,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Constants.bottomBarBorderRadius),
          topLeft: Radius.circular(Constants.bottomBarBorderRadius),
        ),
        color: ColorManager.whiteColour,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          Constants.bottomBarItemsCount,
          (index) {
            return TextButton(
              onPressed: () {
                Injections.bottomBarInjection
                    .onTap(Injections.bottomBarInjection.items[index], index);
                setState(() {
                  Injections.bottomBarInjection.hover;
                });
              },
              child: Padding(
                //Edit here..
                padding: const EdgeInsets.only(top: AppPading.p20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Injections.bottomBarInjection.items[index],
                      style: GetApplicationTheme().textTheme.bodySmall,
                    ),
                    const Spacer(),
                    if (index == Injections.bottomBarInjection.selectedIndex)
                      Injections.bottomBarInjection.hover
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
