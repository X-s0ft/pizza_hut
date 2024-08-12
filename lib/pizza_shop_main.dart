import 'package:flutter/material.dart';
import 'package:pizza_hut/routers/router.dart';
import 'package:pizza_hut/theme/theme.dart';


class PizzaShop extends StatelessWidget {
  const PizzaShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza shop',
      theme: mainTheme,
      routes: routers,
    );
  }
}