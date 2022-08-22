import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'home.dart';
import 'login.dart';
import 'newUserAccount.dart';
import 'cloud.dart';
import 'Services.dart';
void main() async{

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: home1(),
      routes: {
        '0' : (context)=>home1(),
        '1' : (context)=>newUser(),
        '2' : (context)=>login(),
        '3' : (context)=>cloud(),
        '4' : (context)=>Service(),

      },
    );
  }
}

