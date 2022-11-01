import 'package:flutter/material.dart';
import 'view/intro.dart';
import 'package:flutter/material.dart';


void main() async {

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
      home: introScreen(),

    );
  }
}
