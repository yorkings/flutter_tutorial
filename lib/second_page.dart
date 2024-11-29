import 'package:flutter/material.dart';
import 'package:tutorial_prac/Homepage.dart';
import 'package:tutorial_prac/profile_page.dart';
import 'package:tutorial_prac/settings.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedindex=0;
  
  final List _pages=[
    Homepage(),
    Profile(),
    Settings(),
  ];

  void _navigationbottomBar(int index){
      setState(() {
        _selectedindex=index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("2nd page"),
      backgroundColor: Colors.blue[700],),
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap:_navigationbottomBar ,
        items:[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label:"Home"
            ),


          // profile
            BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label:"profile"
            ),

          // settings
           BottomNavigationBarItem(
            icon:Icon(Icons.settings),
            label:"settings"
            ),

        ]),
    );
  }
}