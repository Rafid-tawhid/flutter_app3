import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("List"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.add_box), onPressed: (){}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Flutter "),
              decoration: BoxDecoration(
                color: Colors.orange.shade700
              ),
            ),
            ListTile(
              title: Text("Learning from tube"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Learning from books"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Learning from doc"),
              onTap: (){},
            )

          ],
        ),
      ),
      backgroundColor: Colors.white,
    ),
    );
  }
}
