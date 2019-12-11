import 'package:flutter/material.dart';
import 'package:aspp/componets/home.dart';
//import 'package:aspp/login.dart';
//import 'package:aspp/signUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASPP',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Home(),
      routes: {
        //'/signUp': (context) => SignUp(),
        //'/login': (context) => Login(),
        '/home': (context) => Home(),
        '/feedback': (context) => Home(),
      },
    );
  }
}