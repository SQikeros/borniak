import 'package:borniak/feature/home/pages/home_page.dart';
import 'package:borniak/feature/login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
