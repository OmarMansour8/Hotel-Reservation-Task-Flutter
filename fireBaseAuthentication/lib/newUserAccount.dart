import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() {
  runApp(newUser());
}

class newUser extends StatelessWidget {
  newUser({Key? key}) : super(key: key);
    String Email='';
    String Password='';
    final FirebaseAuth _auth = FirebaseAuth.instance;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Stack(
              children: [

                    ListView(
                      children: [

                           Center(
                             child: Column(
                               children: [
                                 SizedBox(height: 200,),
                                 Text('New User account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ,)),
                                 SizedBox(height: 50,),

                               ],
                             ),
                             // child:Text('New User account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ,)),
                           ),
                        Row(
                          children: [
                            Text('Email Address'),
                            SizedBox(
                              width: 50,
                            ),
                            SizedBox(
                              width: 200,
                              child: TextField(
                                maxLength: 25,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                autocorrect: true,
                                cursorColor: Colors.blue,
                                onChanged: (value){

                                  Email=value;

                                },
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('Password'),
                            SizedBox(
                              width: 80,
                            ),
                            SizedBox(
                              width: 200,
                              child: TextField(
                                maxLength: 25,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                autocorrect: true,
                                cursorColor: Colors.blue,
                                  onChanged: (value){

                                    Password=value;

                                  }

                              ),

                            )
                          ],
                        ),

                        Center(

                            child:ElevatedButton(onPressed: ()async{
                              try{
                                final newUser = await _auth.createUserWithEmailAndPassword(email: Email, password: Password);
                                if(newUser != null){
                                  print('Account has been successfuly created');
                                  Navigator.pushNamed(context,'0');

                                }

                              }
                              catch(e){
                                print(e);
                              }
                            }, child: Text('Create')),

                        ),
                      ],
                    )
                    // Text('New User Account'),

              ],
            )
        ),
      ),
    );
  }
}