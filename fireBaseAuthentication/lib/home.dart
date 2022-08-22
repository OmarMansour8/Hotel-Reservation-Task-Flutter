import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  runApp(home1());
}

class home1 extends StatelessWidget {
   home1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(appBar:AppBar(
        title: Text("Lesson 7"),

      ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '1');
              }, child: Text('New User Account')),
              SizedBox( height: 50,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '2');
              }, child: Text('Login')),
              SizedBox( height: 50,),
              ElevatedButton(onPressed: (){Navigator.pushNamed(context,'3');}, child: Text('Cloud')),



            ],
          )
        ),
      ),
    );
  }
}