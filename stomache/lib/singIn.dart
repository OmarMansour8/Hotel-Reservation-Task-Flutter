import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stomache/mainMenu.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);
  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  String Email = '';
  String Password = '';
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _controller = new TextEditingController();
  //final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
            body: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      alignment: Alignment.topLeft,
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        )),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2)),
                          ]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        onChanged: (value) {
                          Email = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'User Name',
                            prefixIcon: Icon(Icons.account_circle)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2)),
                          ]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        onChanged: (value) {
                          Password = value;
                        },
                        controller: _controller,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '3');
                      },
                      child: const Text('Forgot Password',
                          style: TextStyle(color: Colors.deepOrange)),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: size.width * 0.9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: ElevatedButton(
                            // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                            // color: Colors.deepOrange,
                            onPressed: () async {
                              try {
                                final newUser =
                                    await _auth.signInWithEmailAndPassword(
                                        email: Email, password: Password);
                                if (newUser != null) {
                                  print('Account has been successfuly created');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => homePage()));
                                  _controller.clear();
                                }
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Text(
                              'Sign In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent,
                            ),
                          ),
                        )),
                    Row(
                      children: <Widget>[
                        const Text('Does not have account?'),
                        TextButton(
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 20, color: Colors.deepOrange),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '2');
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ))
            //backgroundColor: Colors.white,
//       body:Column(
//            //crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                  Text('Sing In',
//                    style: TextStyle(
//                     color: Colors.black,
//                         fontSize: 40 ,
//                           fontWeight: FontWeight.bold,
// ),
// ),
//                 SizedBox(height: 50),
//                   buildEmail(),
// ]
//     )
            // body:Container(
            //   margin: EdgeInsets.symmetric(vertical: 10),
            //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            //   width: size.width*0.8,
            //   decoration: BoxDecoration(
            //     color: Colors.orange[50],
            //     borderRadius: BorderRadius.circular(29)
            //   ),
            //
            //
            // ),

            ));
  }
}
