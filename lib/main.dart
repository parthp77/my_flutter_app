//Following the tutorial by Let's Build That App

import 'package:flutter/material.dart';

void main() => runApp(new my_flutter_app());

class my_flutter_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Parth's First Flutter App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Haaave you met Kotlin?"),
        ),
        body: new HomeWidget(),
      )
    );
  }
}

class HomeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 20,
      itemBuilder: (context, rowNumber){
        return Container(
          //add padding to each row
          padding: new EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
                new Image.network("https://3wga6448744j404mpt11pbx4-wpengine.netdna-ssl.com/wp-content/uploads/2017/09/kotlin-origami.jpg"),
                new Text("Check out Kotlin $rowNumber",
                    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                new Divider(color: Colors.orange)
              ],
            )
        );
      }, //itemBuilder
    );
  }// build
}