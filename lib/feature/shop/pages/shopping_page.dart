import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  ShoppingPageBody createState() => ShoppingPageBody();
}

class ShoppingPageBody extends State<ShoppingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Lista zakupów'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Brak zebranych przepisów lub produktów '),
          ],
        ),
      ),
    );
  }

}