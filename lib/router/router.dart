import 'package:pizza_hut/Pages/all_pages.dart';

final routers = {
  '/': (content) => const Shop(),
  '/Favorite': (content) => const Favorite(),
  '/Shopping_cart': (content) => const ShoppingCart()
};