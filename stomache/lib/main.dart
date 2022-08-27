import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'mainMenu.dart';
import 'breakfast.dart';
import 'pizza_add_to_cart.dart';
import 'Healthy_Taco_Salad.dart';
void main() {
  runApp(MaterialApp(
      home:MyApp()));
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

        ),
        home: homePage(),

    routes: {

      'Cheesy Pizza': (context) => MyHomePage(),
      'Healthy Taco Salad': (context) => HealthyTacoSalad(),

    }


    );
  }
  }