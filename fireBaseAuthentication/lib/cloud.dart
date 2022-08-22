import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(cloud());
}

class cloud extends StatelessWidget {
  cloud({Key? key}) : super(key: key);

  List<Widget> dataListWidget(AsyncSnapshot snapshot) {
    return snapshot.data.docs.map<Widget>((document) {
      return ListTile(
          title: Text(document['City']), subtitle: Text(document['Name']));
    }).toList();
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
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('Customer').snapshots(),
            builder: (context, snapshot) {
              return ListView(
                children: dataListWidget(snapshot),
              );
            },
          ),
        ),
      ),
    ));
  }
}
