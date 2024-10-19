import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  var pizza = 1;
  var caserole = 1;
  var pepsi = 1;

  var min_maxobj = 1;

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
            // Панель с кнопками выбора вида еды
            children: [
              ElevatedButton(
                onPressed: () {
                  dev.log('all');
                },
                child: const Text('All'),
              ),
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
            height: 20,
          ),

          // Общий контейнер
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Разграничитель
                const SizedBox(
                  width: 10,
                ),

                // Контейнер Treviso
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(blurRadius: 1)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text('Treviso'),
                          Image.asset(
                            "lib/assets/images/notfound.png",
                            width: 90,
                            height: 100,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  'Mustard sauce, Mozzarella \nchese, salami, pork, hunting \nsausages, tomatoes, pickled...'),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(r'$7.75'),
                              const SizedBox(
                                width: 45,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (pizza == 1) {
                                      } else {
                                        pizza -= min_maxobj;
                                        dev.log("pizza- = $pizza");
                                      }
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Color.fromARGB(255, 229, 46, 46),
                                ),
                              ),
                              Text('$pizza'),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (pizza == 10) {
                                    } else {
                                      pizza += min_maxobj;
                                    }
                                  });
                                  dev.log("pizza+ = $pizza");
                                },
                                icon: const Icon(Icons.add,
                                    size: 20,
                                    color: Color.fromARGB(255, 229, 46, 46)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 229, 46, 46),
                              ),
                              child: const Text(
                                'To order',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //Разграничитель
                const SizedBox(
                  width: 50,
                ),
                // Контейнер Bavaria
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(blurRadius: 1)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text('Bavaria'),
                          Image.asset(
                            "lib/assets/images/notfound.png",
                            width: 100,
                            height: 100,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  'Mustard sauce, Mozzarella \nchese, salami, pork, hunting \nsausages, tomatoes, pickled...'),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(r'$7.75'),
                              const SizedBox(
                                width: 45,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (caserole == 1) {
                                      } else {
                                        caserole -= min_maxobj;
                                        dev.log('caserole- = $caserole');
                                      }
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Color.fromARGB(255, 229, 46, 46),
                                ),
                              ),
                              Text('$caserole'),
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (caserole == 10) {
                                      } else {
                                        caserole += min_maxobj;
                                        dev.log('caserole+ = $caserole');
                                      }
                                    },
                                  );
                                },
                                icon: const Icon(Icons.add,
                                    size: 20,
                                    color: Color.fromARGB(255, 229, 46, 46)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 229, 46, 46),
                              ),
                              child: const Text(
                                'To order',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Разграничитель Pepsi
                const SizedBox(
                  width: 50,
                ),
                // Контейнер Bavaria
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(blurRadius: 1)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text('Pepsi'),
                          Image.asset(
                            "lib/assets/images/notfound.png",
                            width: 100,
                            height: 100,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  'Mustard sauce, Mozzarella \nchese, salami, pork, hunting \nsausages, tomatoes, pickled...'),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(r'$7.75'),
                              const SizedBox(
                                width: 45,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (pepsi == 1) {
                                      } else {
                                        pepsi -= min_maxobj;
                                        dev.log('pepsi- = $pepsi');
                                      }
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Color.fromARGB(255, 229, 46, 46),
                                ),
                              ),
                              Text('$pepsi'),
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (pepsi == 10) {
                                      } else {
                                        pepsi += min_maxobj;
                                        dev.log('pepsi+ = $pepsi');
                                      }
                                    },
                                  );
                                },
                                icon: const Icon(Icons.add,
                                    size: 20,
                                    color: Color.fromARGB(255, 229, 46, 46)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 229, 46, 46),
                              ),
                              child: const Text(
                                'To order',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//TODO: 1) Решить проблемы с изменением размера окна
//TODO: 2) Добавить локализацию 