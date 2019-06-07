import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState()=> new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
         backgroundColor: Colors.cyan,
        title:new Text("Home Page "),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, '/');
            },
            child: Icon(Icons.exit_to_app),
          )
        ],
      
        ),
      body: new Center(
        child: new Text("HomePage"),
      ),
    );
  }
}