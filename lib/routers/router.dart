import '../Pages/all_pages.dart';
import '../widgets/all_wirdgets.dart';


final routers = {
  '/': (context) => const PizzaNavigation(),
  '/Shop': (context) => const Shop(),
  '/Favorite': (context) => const Favorite(),
  '/ShoppingCart': (context) => const ShoppingCart()
};