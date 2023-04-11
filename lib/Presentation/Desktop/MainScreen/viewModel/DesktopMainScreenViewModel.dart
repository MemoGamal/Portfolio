import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/base/base_viewModel.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';

class DesktopMainViewModel extends BaseViewModel
    with DesktopMainInPuts, DesktopMainOutPuts {
  @override
  void dispose() {}

  @override
  void start() {
    scrollListenr();
  }

  // Stream Controller..
  final StreamController myStream = StreamController();
  ScrollController scrollController = ScrollController();

  // Listens to controller and tells how much i scrolled!.
  @override
  void scrollListenr() {
    scrollController.addListener(() {
      print(scrollController.position.pixels);
    });
  }

  @override
  void toHomeScroll() {
    scrollController.animateTo(
      AnimatePosition.p300,
      duration: const Duration(milliseconds: Animatetimer.t300),
      curve: Curves.bounceInOut,
    );
  }

  @override
  void toAboutScroll() {
    scrollController.animateTo(
      AnimatePosition.p300,
      duration: const Duration(milliseconds: Animatetimer.t300),
      curve: Curves.bounceInOut,
    );
  }

  @override
  void toPortfolioScroll() {
    scrollController.animateTo(
      AnimatePosition.p300,
      duration: const Duration(milliseconds: Animatetimer.t300),
      curve: Curves.bounceInOut,
    );
  }

  @override
  void toServiceScroll() {
    scrollController.animateTo(
      AnimatePosition.p300,
      duration: const Duration(milliseconds: Animatetimer.t300),
      curve: Curves.bounceInOut,
    );
  }

  @override
  void toTestimonialScroll() {
    scrollController.animateTo(
      AnimatePosition.p300,
      duration: const Duration(milliseconds: Animatetimer.t300),
      curve: Curves.bounceInOut,
    );
  }

  @override
  Sink get mainDesktopInputsObjects => myStream.sink;

  @override
  Stream get mainDesktopOutPutsObjects => myStream.stream.map((event) => event);
}

abstract class DesktopMainInPuts {
  void scrollListenr();
  void toHomeScroll();
  void toAboutScroll();
  void toServiceScroll();
  void toPortfolioScroll();
  void toTestimonialScroll();
  Sink get mainDesktopInputsObjects;
}

abstract class DesktopMainOutPuts {
  Stream get mainDesktopOutPutsObjects;
}
