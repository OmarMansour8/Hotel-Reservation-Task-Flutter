import 'package:flutter/material.dart';
class Change_Email extends StatefulWidget {
  String Email='';
  String Password='';
  String fullName = '';
  String mobileNumber = '';
  String gender='';
  String dateOfBirth = '';





  Change_Email({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
    required this.gender,required this.dateOfBirth});

  @override
  State<Change_Email> createState() => _Change_EmailState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth);
}
class _Change_EmailState extends State<Change_Email> {
  String Email='';
  String Password='';
  String fullName = '';
  String mobileNumber = '';
  String gender='';
  String dateOfBirth = '';


  _Change_EmailState(
      {required this.Email,
     required this.Password,
     required this.fullName,
     required this.mobileNumber,
     required this.gender,
     required this.dateOfBirth,
     });

  @override
  Widget build(BuildContext context) {
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
                        alignment: Alignment.topLeft,),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Change your Email',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                  offset: Offset(0, 2)
                              ),
                            ]),
                        padding: EdgeInsets.all(1),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'New email',
                              prefixIcon: Icon(Icons.alternate_email_outlined)
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                  offset: Offset(0, 2)
                              ),
                            ]),
                        padding: EdgeInsets.all(1),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Confirm new email',
                              prefixIcon: Icon(Icons.alternate_email)
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                  offset: Offset(0, 2)
                              ),
                            ]),
                        padding: EdgeInsets.all(1),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Current Password',
                              prefixIcon: Icon(Icons.password)
                          ),
                        ),
                      ),
                    ]
                )
            )
        )
    );
  }
}