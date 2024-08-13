import 'package:flutter/material.dart';
import 'package:pizza_hut/Pages/all_pages.dart';

class PizzaNavigation extends StatefulWidget {
  const PizzaNavigation({super.key});

  @override
  State<PizzaNavigation> createState() => _PizzaNavigationState();
}

class _PizzaNavigationState extends State<PizzaNavigation> {
  int currentIndex = 1;
  static const body = [Favorite(), Shop(), ShoppingCart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body.elementAt(currentIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 3,
              offset: Offset(0, 0.72),
            ),
          ],
        ),
        child: NavigationBar(
          // height: 70,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
              label: 'Favorite',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
            ),
          ],
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
