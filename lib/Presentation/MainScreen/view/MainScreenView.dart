import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/MainScreen/view/Widgets/TopSection/TopSection.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TopSection(),
      ],
    );
  }
}
