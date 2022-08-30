import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() {
  runApp(cloud());
}


class cloud extends StatelessWidget {
  cloud({Key? key}) : super(key: key);

  String dataListWidget(AsyncSnapshot snapshot) {
    return snapshot.data.docs.map<Widget>((document) {
      return (document['Full Name']);
    });
  }
  void omar(){
    FirebaseFirestore.instance
        .collection('Users')
        .doc('ZiadEmad@yahoo.com')
        .get()
        .then((value) {
      print(value.get('Full Name'));
    });
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Use Cloud DB'),
          ),
          body: Center(
            child: Container(
             child: ElevatedButton(onPressed: (){
               omar();
             },child: Text('omar'),),
            ),
          ),
        ));
  }
}
