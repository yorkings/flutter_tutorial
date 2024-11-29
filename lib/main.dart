import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void userTapped() {
  print("user tapped");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[100],
              child: Center(child: Text("tap me !")),
            ),
          ),
        ),
      ),
    );
  }
}
