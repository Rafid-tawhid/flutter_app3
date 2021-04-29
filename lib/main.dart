import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/pg1.dart';
import 'package:flutter_app3/pg2.dart';
import 'package:flutter_app3/pg3.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller=PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _controller,

          children: [
            page1(),
            page2(),
            page3(),
          ],
        ),
      ),
    );
  }
}




