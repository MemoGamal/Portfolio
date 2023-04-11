import 'dart:async';

import 'package:mywebsite_portfolio/Presentation/base/base_viewModel.dart';

import '../../../resources/injections.dart';

class HomeViewModel extends BaseViewModel
    with HomeViewModelInPuts, HomeViewModelOutPuts {
  StreamController mystreamController = StreamController();

  @override
  Sink get homeViewModelInPutsObjects => mystreamController.sink;
  @override
  Stream get homeViewModelOutPutsObjects =>
      mystreamController.stream.map((event) => event);

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void theInjections(context) {
    Injections.constantsInjection.getScaleFactorPersonImage(context);
    Injections.constantsInjection.getPositionedTransparentGlass(context);
    Injections.constantsInjection.positionedRowPersonImage(context);
    Injections.constantsInjection.getBGImageSize(context);
    Injections.constantsInjection.getSizeFactorPersonImage(context);
    Injections.constantsInjection.getPositionedBottomBar(context);
  }
}

abstract class HomeViewModelInPuts {
  void theInjections(context);
  Sink get homeViewModelInPutsObjects;
}

abstract class HomeViewModelOutPuts {
  Stream get homeViewModelOutPutsObjects;
}
