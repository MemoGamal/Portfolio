import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/base/base_viewModel.dart';
import 'package:mywebsite_portfolio/Presentation/resources/assets_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/color_manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

class ServiceViewModel extends BaseViewModel
    with ServieViewModelInputs, ServiceViewModelOutPuts {
  // Stream Controller
  final StreamController _streamController = StreamController();

  // Create Posting Data Fun..
  // void postDatatoUI() {
  //   servieViewModelInputsObjects.add(StringManager.serviceNames);
  // }

//
  @override
  void start() {
    // postDatatoUI();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Sink get servieViewModelInputsObjects => _streamController.sink;

  @override
  Stream get servieViewModelOutPutsObjects =>
      _streamController.stream.map((event) => event);
}

abstract class ServieViewModelInputs {
  Sink get servieViewModelInputsObjects;
}

abstract class ServiceViewModelOutPuts {
  Stream get servieViewModelOutPutsObjects;
}

// Class Service..
class Service {
  final int id;
  final String title, image;
  final Color color;

  Service(this.id, this.title, this.image, this.color);
}

List<Service> service = [
  Service(
    1,
    StringManager.serviceNames[0],
    Assets.graphicIMG,
    ColorManager.serviceCardColours[0],
  ),
  Service(
    2,
    StringManager.serviceNames[1],
    Assets.desktopIMG,
    ColorManager.serviceCardColours[1],
  ),
  Service(
    3,
    StringManager.serviceNames[2],
    Assets.diamondIconIMG,
    ColorManager.serviceCardColours[2],
  ),
  Service(
    4,
    StringManager.serviceNames[3],
    Assets.interactionDesignIMG,
    ColorManager.serviceCardColours[3],
  ),
];
