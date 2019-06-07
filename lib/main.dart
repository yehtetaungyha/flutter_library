import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:yehtet/pages/Page.dart';
import 'package:yehtet/pages/register.dart';
void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage(), 
  routes: <String,WidgetBuilder>{
        '/BottomNavBar':(BuildContext context)=> new BottomNavBar(),
        '/pages/register':(BuildContext context)=> new AddData(),
      },));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}

class LoginPage extends StatefulWidget {
 
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   GlobalKey<FormState>_key =new GlobalKey();
  bool _validate =false;
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();

    
  String msg='';
  void _login() async {
    final response =await http.post("https://www.rapidspice.com/yehtet/login.php",body: {
      "email":email.text,
      "password":pass.text,
    });

    var datauser = json.decode(response.body);

    if (datauser.length==0){
      setState(() {
        msg ="Login Fail";
      });
    }else{
        Navigator.pushReplacementNamed(context, '/BottomNavBar');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Form(
                      key: _key,
                      autovalidate: _validate,
                      child: new Theme(
                    data: new ThemeData(
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                      color: Colors.cyan[300],
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ))),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            controller: email,
                            decoration: new InputDecoration(
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan),
                              ),
                              labelText: "Enter Email",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator:validateEmail,
                          ),
                          new TextFormField(
                            controller: pass,
                            decoration: new InputDecoration(
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan),
                              ),
                              labelText: "Enter Password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            validator:validatePassword,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                          ),
                          new RaisedButton(
                              
                              onPressed: () {
                                _sendToServer;
                               _login();
                              },
                              color: Colors.cyan,
                              child: new Text('Login'),
                              textColor: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(6.0))),
                            Text(msg,style: TextStyle(fontSize: 10.0,color: Colors.red),), 
                             new RaisedButton(
                              
                              onPressed: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new AddData(),
                                ));
                              },
                              color: Colors.cyan,
                              child: new Text('Register'),
                              textColor: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(6.0))),     
                          new Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
    String validateEmail(String value) {
    String pattern =r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp =new RegExp(pattern);

  if (value.length == 0){
    return "Email is required";
  }else if(!regExp.hasMatch(value)){
    return "Invaild Email";
    }else{
    return null;
  }
}
String validatePassword(String value) {
  if (value.length == 0){
    return "Password is required";
  }else{
    return null;
  }
}
  get _sendToServer{
  if(_key.currentState.validate()){
    //no any error validation
  _key.currentState.save();
  }else{
    //validation error
    setState((){
      _validate=true;
    });
  }
}
}




