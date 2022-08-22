import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'login.dart';

void main() {
  runApp(Service());
}

class Service extends StatelessWidget {
  Service({Key? key}) : super(key: key);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference rtDB = FirebaseDatabase.instance.ref().child("My_Services");
  String Email = login().Email;
  String Password = login().Password;
  sendData(){
    rtDB.push().set(
      {'Name ': 'omar', 'Email ': '$Email', 'Password ': '$Password'});
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Services'),
        ),
        body: Center(
            child: Stack(

              children: [

                ListView(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: 200,),
                          Text('enjoy our services',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ,)),
                          SizedBox(height: 50,),

                        ],
                      ),
                      // child:Text('New User account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ,)),
                    ),


                        Center(
                        child :ElevatedButton(onPressed: (){
                          sendData();
                          }, child: Text('Save')),
                        ),


                        IconButton(onPressed: (){
                          _auth.signOut();
                          Navigator.pop(context);
                        }, icon: Icon(Icons.exit_to_app))

                  ],
                )


          ]
        ),
      ),
    ));
  }
}