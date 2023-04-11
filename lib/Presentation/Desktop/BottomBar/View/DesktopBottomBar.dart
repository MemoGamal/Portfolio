import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/constants.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Theme_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/injections.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int hoverIndex = 0;
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
          4,
          (index) {
            return TextButton(
              onPressed: () {},
              child: InkWell(
                onHover: (value) {
                  // Setstate to hover..
                  setState(() {
                    value
                        ? hoverIndex = index
                        : hoverIndex =
                            Injections.bottomBarInjection.selectedIndex;
                  });
                },
                onTap: () {
                  Injections.bottomBarInjection
                      .onTap(Injections.bottomBarInjection.items[index], index);

                  setState(() {
                    index == Injections.bottomBarInjection.selectedIndex;
                  });
                },
                child: SizedBox(
                  height: 100,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        Injections.bottomBarInjection.items[index],
                        style: getApplicationTheme().textTheme.bodySmall,
                      ),
                      // Hover
                      AnimatedPositioned(
                        curve: Curves.bounceInOut,
                        left: 0,
                        right: 0,
                        bottom:
                            index == Injections.bottomBarInjection.selectedIndex
                                ? 0
                                : -32,
                        child: Injections.bottomBarInjection.hover,
                        duration:
                            Duration(seconds: Constants.animationHoverDuration),
                      ),
                      // Select
                      AnimatedPositioned(
                        duration: Duration(
                          milliseconds:
                              Constants.animationSelectedHoverDuration,
                        ),
                        left: 0,
                        right: 0,
                        bottom: hoverIndex == index ? -2 : -32,
                        child: Image.asset("assets/images/Hover.png"),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
