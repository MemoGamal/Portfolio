import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/About/View/DesktopAboutView.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/MainScreen/viewModel/DesktopMainScreenViewModel.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/Recent_Works/View/Recent_view.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/Service_Offerings/View/Service_Offering_view.dart';

import '../../Home/View/HomeView.dart';

DesktopMainViewModel theDesktopScreenViewModel = DesktopMainViewModel();

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    theDesktopScreenViewModel.start();
    return Scaffold(
      body: ListView(
        controller: theDesktopScreenViewModel.scrollController,
        children: [
          const TopSection(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.10),
          const About(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.10),
          const Service_Offering(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.10),
          const RecentWorksView(),
        ],
      ),
    );
  }
}
