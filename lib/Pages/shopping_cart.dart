import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: const Center(
        //TODO: Пользователь может добавлять продукты, на данной странице должна быть реализованна карта, а так же еда которую добавил пользователь 
        child: Text('Nothing'),
      ),
    );
  }
}
