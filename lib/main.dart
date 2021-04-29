import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(registration());
}

class registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(color: Colors.deepOrange),
            child: Center(
              child: Text(
                "I love coding",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.deepPurple,

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

