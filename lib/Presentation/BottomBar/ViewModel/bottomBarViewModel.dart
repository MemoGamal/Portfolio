import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';

import '../../resources/strings_manager.dart';

class BottomBarViewModel extends GetxController {
  int selectedIndex = 0;
  Widget hover = Image.asset(
    Assets.hoverIMG,
    scale: 2,
  );
  List<String> items = [
    StringManager.home,
    StringManager.about,
    StringManager.services,
    StringManager.portfolio,
    StringManager.testimonial,
    StringManager.contact,
  ];
  // We can get Index of Tapped item from onTap Func..
  void onTap(element, index) {
    selectedIndex = items.indexOf(element);
    update();
  }
}
