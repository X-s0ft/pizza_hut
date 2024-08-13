import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:flutter/widgets.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 32, color: Colors.black),
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
            ],
          ),
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
              //TODO: ПОдумать как реализовать выбор еды по его виду
              ElevatedButton(
                onPressed: () {
                  dev.log('Pizza');
                },
                child: const Text('Pizza'),
              ),
              ElevatedButton(
                onPressed: () {
                  dev.log('Salads');
                },
                child: const Text('Salads'),
              ),
              ElevatedButton(
                onPressed: () {
                  dev.log('Soups');
                },
                child: const Text('Soups'),
              ),
              ElevatedButton(
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView(
              //TODO: Задизайнить блоки с едой (общая)
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(blurRadius: 2)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.abc),
                          Text('data'),
                          Text('datas'),
                          Row(
                            children: [
                              Text('price'),
                              IconButton(
                                onPressed: () {
                                  dev.log('message');
                                },
                                icon: Icon(Icons.remove),
                              ),
                              Text('Count'),
                              IconButton(
                                onPressed: () {
                                  dev.log('message');
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 2)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.abc),
                          Text('data'),
                          Text('datas'),
                          Row(
                            children: [
                              Text('price'),
                              IconButton(
                                onPressed: () {
                                  dev.log('message');
                                },
                                icon: Icon(Icons.remove),
                              ),
                              Text('Count'),
                              IconButton(
                                onPressed: () {
                                  dev.log('message');
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 2)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.abc),
                          Text('data'),
                          Text('datas'),
                          Row(
                            children: [
                              Text('price'),
                              IconButton(
                                onPressed: () {
                                  dev.log('message');
                                },
                                icon: Icon(Icons.remove),
                              ),
                              Text('Count'),
                              IconButton(
                                onPressed: () {
                                  dev.log('message');
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 2)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.abc),
                          Text('data'),
                          Text('datas'),
                          Row(
                            children: [
                              Text('price'),
                              IconButton(
                                onPressed: () {
                                  dev.log('message');
                                },
                                icon: Icon(Icons.remove),
                              ),
                              Text('Count'),
                              IconButton(
                                onPressed: () {
                                  dev.log('message');
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
