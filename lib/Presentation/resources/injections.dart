import 'package:get/get.dart';
import 'package:mywebsite_portfolio/Presentation/BottomBar/ViewModel/bottomBarViewModel.dart';
import 'package:mywebsite_portfolio/Presentation/resources/constants.dart';

class Injections {
  static get bottomBarInjection => Get.put(BottomBarViewModel());
  static get constantsInjection => Get.put(Constants());
}

init() {
  Injections.bottomBarInjection;
  Injections.constantsInjection;
}
