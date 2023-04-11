import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/responsive_design.dart';
import 'package:mywebsite_portfolio/Presentation/resources/strings_manager.dart';

import 'assets_manager.dart';
import 'color_manager.dart';

Widget hiringWidget(context, Containercolor) {
  return InkWell(
    onTap: () {
      // ReDirect to Freelancer Link...
    },
    child: Container(
      width: getWidthinPixels(150),
      height: GetHeightinPixels(50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Containercolor,
        border: Border.all(
          color: ColorManager.greyContainerBorder,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.handIMG,
            height: GetHeightinPixels(30),
          ),
          SizedBox(
            width: getWidthinPixels(20),
          ),
          Text(
            StringManager.hireMe,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: ColorManager.blackColor),
          ),
        ],
      ),
    ),
  );
}
