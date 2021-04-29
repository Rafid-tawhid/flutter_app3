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
       appBar: AppBar(title: Text("Row & Column"),),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurpleAccent,
                ),
                SizedBox(width: 10,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

