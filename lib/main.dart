import 'package:flutter/material.dart';
import 'widgets/all_wirdgets.dart';

void main() {
  runApp(const MainNavBar());
}

class MainNavBar extends StatelessWidget {
  const MainNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  PizzaNavigation(),
    );
  }
}