import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled3/facebook.dart';
import 'homePage.dart';
import 'facebook.dart';
import 'instagram.dart';
import 'Veggi.dart';
import 'Cheese.dart';
import 'Fries.dart';
import 'defaultPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() =>
      _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  dynamic itemSelected = "One";
  dynamic itemPopUpSelected = "default";
  Widget build(BuildContext context) {
    return MaterialApp(
      home: defaultPage(),


      routes:{ '0': (context)=> facebook(),
        '1': (context)=> instagram(),
        '2': (context)=> Veggi(),
        '3': (context)=> Cheese(),
        '4': (context)=> Fries(),
        '5': (context)=> homePage(),
      },

    );
  }}


