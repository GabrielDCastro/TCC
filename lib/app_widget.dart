import 'dart:html';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        '/': (context) => Home(),
        //'/home': (context) => Home(),
      },
    );
  }
}