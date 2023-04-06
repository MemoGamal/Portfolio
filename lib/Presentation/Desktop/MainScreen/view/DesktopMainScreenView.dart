import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/About/View/DesktopAboutView.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/About/TopSection/DesktopTopSection.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    scrollController.addListener(() {});
    return ListView(
      controller: scrollController,
      children: const [
        TopSection(),
        About(),
      ],
    );
  }
}
