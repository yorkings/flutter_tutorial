import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 1'),
        backgroundColor: Colors.blue[700],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 48,
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
                leading: Icon(Icons.settings), title: Text(" S E T T I N G S"),
                onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
                ),

          ],
        ),
      ),
    );
  }
}
