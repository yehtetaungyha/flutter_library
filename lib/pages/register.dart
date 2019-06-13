import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerPhone = new TextEditingController();
  var _formkey = GlobalKey<FormState>();
  bool _validate = false;

  String errname = '';
  void addData() async {
    final response =
        await http.post("https://www.rapidspice.com/yehtet/adddata.php", body: {
      "username": controllerUsername.text,
      "password": controllerPassword.text,
      "email": controllerEmail.text,
      "phone": controllerPhone.text
    });
    print(response.body);
    var condition = response.body;
    if (condition.length == 3) {
      setState(() {
      errname = "success";
      Navigator.pushReplacementNamed(context, '/BottomNavBar');
      });
    }else{
      errname = "fail";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      key: _formkey,
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
                                controller: controllerUsername,
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
                                  labelText: "Enter Username",
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty)
                                    return "please fill username";
                                },
                              ),
                              new TextFormField(
                                controller: controllerEmail,
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
                                validator: validateEmail,
                              ),
                              new TextFormField(
                                controller: controllerPassword,
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
                                validator: validatePassword,
                              ),
                              new TextFormField(
                                controller: controllerPhone,
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
                                  labelText: "Enter Phone",
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty)
                                    return "please fill Phonenumber";
                                },
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                              ),
                              new RaisedButton(
                                  onPressed: () {
                                    _sendToServer;
                                    if (_formkey.currentState.validate()) {
                                      addData();
                                      // Navigator.pop(context);
                                    }
                                  },
                                  color: Colors.cyan,
                                  child: new Text('Save'),
                                  textColor: Colors.white,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(6.0))),
                              Text(
                                errname,
                                style: TextStyle(
                                    fontSize: 10.0, color: Colors.red),
                              ),
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
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);

    if (value.length == 0) {
      return "Email is required";
    } else if (!regExp.hasMatch(value)) {
      return "Invaild Email";
    } else {
      return null;
    }
  }

  String validatePassword(String value) {
    if (value.length == 0) {
      return "Password is required";
    } else {
      return null;
    }
  }

  get _sendToServer {
    if (_formkey.currentState.validate()) {
      //no any error validation
      _formkey.currentState.save();
    } else {
      //validation error
      setState(() {
        _validate = true;
      });
    }
  }
}
