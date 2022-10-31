import 'package:flutter/material.dart';
import 'package:money_app/home.dart';


void main() async {
  //await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      title: 'Personal Expenses',
      home: Home(),
    );
  }
}
