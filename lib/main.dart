import 'package:flutter/material.dart';
import 'package:tutorial_prac/Homepage.dart';
import 'package:tutorial_prac/second_page.dart';
import 'package:tutorial_prac/settings.dart';
import 'first_page.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
      routes: {
          '/first':(context)=>FirstPage(),
          '/second':(context)=>SecondPage(),
          '/homepage':(context)=>Homepage(),
          '/settings':(context) =>Settings()
        },
    );
  }
}
