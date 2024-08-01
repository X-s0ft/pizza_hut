import 'package:flutter/material.dart';
import 'theme.dart';
import 'router/router.dart';

class PizzaShop extends StatelessWidget {
  const PizzaShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza shop',
      theme: themeData,
      routes: routers,
    );
  }
}