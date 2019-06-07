import 'package:flutter/material.dart';
class DevicePage extends StatefulWidget {
  @override
  _DevicePageState createState()=> new _DevicePageState();
}

class _DevicePageState extends State<DevicePage>{
  @override
 Widget build(BuildContext context){
    return new Scaffold(
      
      appBar: new AppBar(
        backgroundColor: Colors.cyan,
        title:new Text("Device Page ",
        ),),
      body: new Center(
        child: new Text("Devicepage"),
      ),
    );
  }
}