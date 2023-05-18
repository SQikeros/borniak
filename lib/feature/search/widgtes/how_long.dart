import 'package:flutter/material.dart';

class HowLongView extends StatelessWidget {
  const HowLongView({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Na ile wystarczą zrębki?',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
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
    );
  }

}