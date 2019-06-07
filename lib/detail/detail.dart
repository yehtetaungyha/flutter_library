import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState()=> new _DetailPageState();
}

class _DetailPageState extends State<DetailPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
         backgroundColor: Colors.cyan,
        title:new Text("Detail Page "),
        ),
      body: new Center(
       child: Container(
          padding: const EdgeInsets.all(50.0) ,
          child: Column(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: <Widget>[
             new Image(
            image: new AssetImage("assets/bootstrap.png")),
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut tortor ligula. Nam et eros in elit maximus euismod ut non tortor. Maecenas id ipsum eu diam iaculis egestas ac id mauris. Vivamus vel porta nulla. Nulla faucibus tellus vestibulum efficitur cursus. Pellentesque ante odio, luctus nec commodo at, aliquet vel risus. Mauris mollis nisi lacus, sed pretium quam vestibulum vitae. In convallis ligula leo, in venenatis neque porttitor placerat."),
            ]
             ),
          ],
          ),
          ),
          ),
      );
  }
}