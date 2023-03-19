import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/About/View/AboutView.dart';
import 'package:mywebsite_portfolio/Presentation/TopSection/TopSection.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      print(scrollController.offset);
    });
    return ListView(
      controller: scrollController,
      children: const [
        TopSection(),
        About(),
      ],
    );
  }
}
