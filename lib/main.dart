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
      title: "ListView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is Appbar"),
        ),
        body: ListView.separated(
            itemCount: parts.length,
            itemBuilder: (BuildContext context,int index){
          return ListTile(
            title: Text(parts[index],style: TextStyle(fontSize: 20),)
          );

        },

            separatorBuilder: (BuildContext context,int index) =>Divider(),
        )
      ),
    );
  }
}









