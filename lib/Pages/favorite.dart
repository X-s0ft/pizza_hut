import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your favorite food'),
      ),
      body: const Center(
        //TODO: После нажатия на сердечко на странице SHOP сюда должны добавиться продукты
        child: Text('Nothing'),
      ),
    );
  }
}
