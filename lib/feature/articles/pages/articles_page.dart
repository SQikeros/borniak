import 'dart:ui';
import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 250,
            pinned: false,
            floating: false,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              background: ArticlesView(),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: Text(
                              'Zrębki Wędzarnicze - Brzoza',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.check_circle_outline),
                            ),
                            Text('Certyfikat HACCP'),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.check_circle_outline),
                            ),
                            Text('Starannie wysuszono do 13% wilgotności'),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.check_circle_outline),
                            ),
                            Text('Odpylone dzięki procesowi technologicznemu'),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.check_circle_outline),
                            ),
                            Text('Wysokiej jakości zrębki do wędzarni'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 239,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Nazwy',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('Zrębki wędzarnicze - brzoza - 2L'),
                                  ],
                                ),
                              ),
                              const Text('10,00 zł'),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('Zrębki wędzarnicze - brzoza - 10L'),
                                  ],
                                ),
                              ),
                              const Text('42,00 zł'),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('Zrębki wędzarnicze - brzoza - 50L'),
                                  ],
                                ),
                              ),
                              const Text('162,50 zł'),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Ilość',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {},
                                    ),
                                    const Text('0'),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {},
                                    ),
                                    const Text('0'),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {},
                                    ),
                                    const Text('0'),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.teal.shade100),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          shadowColor: MaterialStateProperty.all(Colors.black),
                          overlayColor: MaterialStateProperty.all(Colors.teal),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.shopping_cart_outlined),
                            SizedBox(width: 12),
                            Text("Do koszyka"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Na ile wystarczą zrębki?',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Pojemność opakowania'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('2 L'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('10 L'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('50 L'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 4),
                                      child: Text(
                                          'Orientacyjny czas wędzenia'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 4),
                                      child: Text('8 h'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 4),
                                      child: Text('40 h'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 4),
                                      child: Text('200 h'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/wiorki.jpeg',
          ),
        ),
      ],
    );
  }
}
