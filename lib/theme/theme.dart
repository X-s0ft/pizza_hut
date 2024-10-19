import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 255, 255, 255);
const secondaryColor = Color.fromARGB(255, 229, 46, 46);

const primaryText = TextStyle();
const secondaryText = TextStyle();

final mainTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    
  ),
  scaffoldBackgroundColor: primaryColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: secondaryColor,
      backgroundColor: Colors.white,
      foregroundColor: secondaryColor,
      textStyle: const TextStyle(
        color: secondaryColor,
        fontSize: 15,
      ),
      side: const BorderSide(
        color: secondaryColor,
        width: 2,
      ),
    ),
  ),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: primaryColor,
    labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
    indicatorShape: CircleBorder(eccentricity: 0.7),
    indicatorColor: secondaryColor,
    iconTheme: WidgetStatePropertyAll(
      IconThemeData(color: Colors.black, size: 35),
    ),
    labelTextStyle: WidgetStatePropertyAll(
      TextStyle(
        fontSize: 15,
      ),
    ),
  ),
);
