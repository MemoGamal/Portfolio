import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/Service_Offerings/Widgets/Service_card.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/Service_Offerings/Widgets/Service_offer_text.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

class Service_Offering extends StatelessWidget {
  const Service_Offering({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Service_offer_text(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.20,
            vertical: MediaQuery.of(context).size.height * 0.10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              StringManager.serviceNames.length,
              (index) => ServiceCard(index: index),
            ),
          ),
        ),
      ],
    );
  }
}
