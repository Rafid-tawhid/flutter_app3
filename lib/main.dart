import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TexBox & Dropdown",
      home: book(),
    );
    
  }
}

class book extends StatefulWidget {
  @override
  _bookState createState() => _bookState();
}

class _bookState extends State<book> {
  String namebook="";
  var writers=["Rafid Tawhid","Hymayun","kobir","salman"];
  var _currentItem='Rafid Tawhid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (String userinput)
              {
                setState(() {
                  namebook=userinput;
                });
              },
            ),

             DropdownButton(items: writers.map((String dropdownitems){
               return DropdownMenuItem(value: dropdownitems,child: Text(dropdownitems),);

             }).toList(),
               onChanged: (String newVal)
               {
                 setState(() {
                   this._currentItem=newVal;
                 });
               },
               value: _currentItem,),
            Text("Enter book name is $namebook",style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}

