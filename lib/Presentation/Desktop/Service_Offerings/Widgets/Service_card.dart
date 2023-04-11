import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebsite_portfolio/Presentation/Desktop/Service_Offerings/View_Model/Service_view_model.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Value_Manager.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';

import '../../../resources/strings_manager.dart';

class ServiceCard extends StatefulWidget {
  final int index;
  const ServiceCard({super.key, required this.index});

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

bool isHover = false;

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          print("Hover");
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(),
        decoration: BoxDecoration(
          color: service[widget.index].color,
          borderRadius: BorderRadius.circular(getWidthinPixels(10)),
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: const Offset(0, 20),
                blurRadius: getWidthinPixels(50),
                color: Colors.black.withOpacity(0.1),
              ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: getWidthinPixels(10),
            ),
            AnimatedContainer(
              height: 100,
              width: 100,
              padding: EdgeInsets.all(AppPading.p30),
              duration: const Duration(),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                service[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: getWidthinPixels(10),
            ),
            Text(
              service[widget.index].title,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontSize: getWidthinPixels(13),
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
