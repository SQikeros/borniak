import 'package:borniak/feature/login/pages/login_page.dart';
import 'package:borniak/feature/profile/bloc/person.dart';
import 'package:borniak/hivestore/hivestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'feature/meals/models/meals_model.dart';
import 'feature/meals/pages/recipe_page.dart';
import 'feature/profile/bloc/boxes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final client = await initClient();
  await Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  //Hive.registerAdapter(ShoppingItemAdapter());
  //await Hive.openBox<ShoppingItem>('shoppingBox');
  boxPersons = await Hive.openBox<Person>('PersonBox');



  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LoginPage(),
    );
  }
}
