import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywebsite_portfolio/Presentation/base/base_viewModel.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

import '../../../resources/strings_manager.dart';

class BottomBarViewModel extends BaseViewModel
    with BottomBarViewModelInputs, BottomBarViewModelOutPuts {
  final StreamController theStreamController = StreamController();
  @override
  void start() {}
  @override
  void dispose() {}
  // int selectedIndex = 0;
  // Widget hover = Image.asset(
  //   Assets.hoverIMG,
  //   fit: BoxFit.fill,
  // );

  // // We can get Index of Tapped item from onTap Func..
  // void onTap(element, index) {
  //   selectedIndex = items.indexOf(element);
  //   update();
  // }

  @override
  Sink get bottomBarViewModelInputsObjects => theStreamController.sink;

  @override
  Stream get bottomBarViewModelOutPutsObjects =>
      theStreamController.stream.map((event) => event);
}

abstract class BottomBarViewModelInputs {
  Sink get bottomBarViewModelInputsObjects;
}

abstract class BottomBarViewModelOutPuts {
  Stream get bottomBarViewModelOutPutsObjects;
}
