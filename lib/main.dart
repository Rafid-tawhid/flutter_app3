import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/Article.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final article=List<Article>.generate(20, (i) {
    return Article("Article No $i", "Article Details is $i lets find out");
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Send Data to Routes ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Send Data to Routes"),
        ),
        body: ListView.separated(itemBuilder: (BuildContext context,int index){
          return ListTile(
            title: Text(article[index].name,style: TextStyle(color: Colors.deepPurpleAccent),),
          onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsArticle(article[index])));
          },
          );
        }, separatorBuilder:(BuildContext context,int index)=>Divider(), itemCount: article.length),
      ),
    );
  }
}
class DetailsArticle extends StatelessWidget {
  Article selectArticle;

  DetailsArticle(this.selectArticle);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Apps",
      home: Scaffold(
        appBar: AppBar(title: Text("Send Data"),),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Text(selectArticle.name),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(selectArticle.details),
            )
          ],
        ),
      ),
    );
  }
}










