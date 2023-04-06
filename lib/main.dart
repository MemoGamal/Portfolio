import 'package:flutter/material.dart';
import 'package:mywebsite_portfolio/Presentation/resources/Responsive_Director.dart';
import 'package:mywebsite_portfolio/Presentation/resources/injections.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      actions: init(),
      home: const Director(),
    );
  }
}
