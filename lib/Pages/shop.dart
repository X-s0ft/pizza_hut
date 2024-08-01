import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          title: RichText(
            text: const TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Delivery of your\nfavorite pizza\n',
                  ),
                  TextSpan(
                    text: 'in 42 minutes',
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 46, 46),
                    ),
                  ),
                ]),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 343,
              child: CupertinoSearchTextField(
                placeholder: 'Start typing the name of the dish',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    dev.log('Pizza');
                  },
                  child: const Text('Pizza'),
                ),
                TextButton(
                  onPressed: () {
                    dev.log('Salads');
                  },
                  child: const Text('Salads'),
                ),
                TextButton(
                  onPressed: () {
                    dev.log('Soups');
                  },
                  child: const Text('Soups'),
                ),
                TextButton(
                  onPressed: () {
                    dev.log('Pasta');
                  },
                  child: const Text('Pasta'),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(),
          ],
        ),
      ),
    );
  }
}
