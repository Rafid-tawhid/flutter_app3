import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> parts=["keyboard","mouse","monitor","headphone","scissors","salt","pendrive","chanachur","keyboard","mouse","monitor","headphone","scissors","salt","pendrive","chanachur"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Routes & Navigation",
      home: RoutesA(),
    );
  }
}
class RoutesA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route A"),),
      body: Center(
        child: RaisedButton(child: Text("Navigate"),onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>RoutesB()
          ));
        },),
      )
    );
  }
}
class RoutesB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Route A"),),
        body: Center(
          child: Text("Welcome to screen B",style: TextStyle(fontSize: 20),),
        )
    );
  }
}









