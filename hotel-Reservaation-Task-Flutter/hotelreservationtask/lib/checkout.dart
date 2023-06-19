import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'home.dart';
import 'home.dart';

class checkout extends StatefulWidget {
  var numberOfAdults = 0.0;
  var numberOfChildren = 0.0;
  String checked = '';
  String checkInDate = '';
  String checkOutDate = '';
  List<String> selected = [''];
  checkout(
      {required this.numberOfAdults,
        required this.numberOfChildren,
        required this.checked,
        required this.checkInDate,
        required this.checkOutDate,
        required this.selected});


  @override
  State<checkout> createState() => _checkoutState(numberOfAdults: numberOfAdults, numberOfChildren: numberOfChildren, checked: checked, checkInDate: checkInDate, checkOutDate: checkOutDate, selected: selected);
}

class _checkoutState extends State<checkout> {
  var numberOfAdults = 0.0;
  var numberOfChildren = 0.0;
  String checked = '';
  String checkInDate = '';
  String checkOutDate = '';
  List<String> selected = [''];



  _checkoutState( {required this.numberOfAdults,
    required this.numberOfChildren,
    required this.checked,
    required this.checkInDate,
    required this.checkOutDate,
    required this.selected});
  bool singleValue = false;
  bool doubleValue = false;
  bool suiteValue = false;
  String roomValue = '';
  List<MyItem> singleRoom = <MyItem>[
    MyItem(
      body: Row(
        children: [
          Image(
            image: NetworkImage(
                'https://as1.ftcdn.net/v2/jpg/03/22/73/02/1000_F_322730229_d3WmzXvTumDznXMxpz0ePEnmCvuuJrXm.jpg'),
            width: 100,
            height: 30,
          ),
          SizedBox(
            width: 50,
          ),
          Text('A room assigned to one person.')
        ],
      ),
      header: Row(children: <Widget>[
        Image(
          image: NetworkImage(
              'https://www.hotelparadies.com/fileadmin/_optimized_/1280/976935/csm_paradies-latsch-wohnen-single-room-1_105edfc753.jpg'),
          width: 100,
          height: 100,
        ),
        SizedBox(
          width: 15,
        ),
        Text('Single Room'),
        SizedBox(
          width: 15,
        ),
      ]),
    )
  ];

  List<MyItem> doubleRoom = <MyItem>[
    MyItem(
        body: Row(
          children: [
            Image(
              image: NetworkImage(
                  'https://as2.ftcdn.net/v2/jpg/03/42/48/61/1000_F_342486113_ifLbH9Y9c9bJvyrN5M3RAjnJc3jgmjHK.jpg'),
              width: 100,
              height: 30,
            ),
            SizedBox(
              width: 50,
            ),
            Column(children: [
              Text(
                'A room assigned to two people,',
              ),
              Text('May have one or more beds.')
            ]),
          ],
        ),
        header: Row(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  'https://assets-global.website-files.com/5c6d6c45eaa55f57c6367749/628d35d6b9575f5b35b4231a_Twin%20Hotel%20Room%20(1)%20(1).jpg'),
              width: 100,
              height: 100,
            ),
            SizedBox(
              width: 15,
            ),
            Text('Double Room'),
            SizedBox(
              width: 15,
            ),
          ],
        ))
  ];
  List<MyItem> Suite = <MyItem>[
    MyItem(
        body: Row(
          children: [
            Image(
              image: NetworkImage(
                  'https://as1.ftcdn.net/v2/jpg/03/22/73/02/1000_F_322730229_d3WmzXvTumDznXMxpz0ePEnmCvuuJrXm.jpg'),
              width: 100,
              height: 30,
            ),
            SizedBox(
              width: 50,
            ),
            Column(children: [
              Text('A room with one or more bedrooms'),
              Text('and a separate living spaces')
            ])
          ],
        ),
        header: Row(children: <Widget>[
          Image(
            image: NetworkImage(
                'https://ecck.or.kr/wp-content/uploads/2019/05/GrandHyattSeoul-Presidential-Suite-1320x910.jpg'),
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 15,
          ),
          Text('Suite Room'),
          SizedBox(
            width: 25,
          ),
        ]))
  ];

  void ShowAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Are you sure you want to proceed to checking out?'),
      content: Text(
          'this is a confirmation message that you agree to all date you entered'),
      actions: [
        ElevatedButton(
            onPressed: () {
              print('thanks');
              if(singleValue==true&&doubleValue==false&&suiteValue==false){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Your form has been succesfully updated'),
                    duration: Duration(seconds: 3),
                  ),
                );
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()), // this mymainpage is your page to refresh
                      (Route<dynamic> route) => false,
                );
                FirebaseFirestore.instance.collection('Rooms').add({
                  'checkInDate': '${checkInDate}',
                  'checkOutDate': '${checkOutDate}',
                  'extras': '${selected}',
                  'numOfAdults': '${numberOfAdults}',
                  'numOfChildren': '${numberOfChildren}',
                  'rooms': '${roomValue}',
                  'views': '${checked}'
                });


              }

              else if(singleValue==false&&doubleValue==true&&suiteValue==false){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Your form has been succesfully updated'),
                    duration: Duration(seconds: 3),
                  ),
                );
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()), // this mymainpage is your page to refresh
                      (Route<dynamic> route) => false,
                );
                FirebaseFirestore.instance.collection('Rooms').add({
                  'checkInDate': '${checkInDate}',
                  'checkOutDate': '${checkOutDate}',
                  'extras': '${selected}',
                  'numOfAdults': '${numberOfAdults}',
                  'numOfChildren': '${numberOfChildren}',
                  'rooms': '${roomValue}',
                  'views': '${checked}'
                });

              }

              else if(singleValue==false&&doubleValue==false&&suiteValue==true){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Your form has been succesfully updated'),
                    duration: Duration(seconds: 3),
                  ),
                );
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()), // this mymainpage is your page to refresh
                      (Route<dynamic> route) => false,
                );
                FirebaseFirestore.instance.collection('Rooms').add({
                  'checkInDate': '${checkInDate}',
                  'checkOutDate': '${checkOutDate}',
                  'extras': '${selected}',
                  'numOfAdults': '${numberOfAdults}',
                  'numOfChildren': '${numberOfChildren}',
                  'rooms': '${roomValue}',
                  'views': '${checked}'
                });


              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('you can only choose one type of room per application'),
                  duration: Duration(seconds: 5),
                ),
              );
              }

            },
            child: Text('Confirm')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Discard'))
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hotel Reservation',
          style: TextStyle(
            fontFamily: 'DancingScript',
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
          child: Column(children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  singleRoom[index].isExpanded = !singleRoom[index].isExpanded;
                });
              },
              children: singleRoom.map<ExpansionPanel>((MyItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Row(children: <Widget>[
                      Image(
                        image: NetworkImage(
                            'https://www.hotelparadies.com/fileadmin/_optimized_/1280/976935/csm_paradies-latsch-wohnen-single-room-1_105edfc753.jpg'),
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Single Room'),
                      SizedBox(
                        width: 15,
                      ),
                      Switch(
                        value: singleValue,
                        onChanged: (bool val) {
                          setState(() {
                            singleValue = val;
                          });
                        },
                        activeColor: Colors.lightBlueAccent,
                      ),
                    ]);
                  },
                  body: item.body,
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  doubleRoom[index].isExpanded = !doubleRoom[index].isExpanded;
                });
              },
              children: doubleRoom.map<ExpansionPanel>((MyItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Row(
                      children: <Widget>[
                        Image(
                          image: NetworkImage(
                              'https://assets-global.website-files.com/5c6d6c45eaa55f57c6367749/628d35d6b9575f5b35b4231a_Twin%20Hotel%20Room%20(1)%20(1).jpg'),
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Double Room'),
                        SizedBox(
                          width: 15,
                        ),
                        Switch(
                          value: doubleValue,
                          onChanged: (bool val) {
                            setState(() {
                              doubleValue = val;
                            });
                          },
                          activeColor: Colors.lightBlueAccent,
                        ),
                      ],
                    );
                  },
                  body: item.body,
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  Suite[index].isExpanded = !Suite[index].isExpanded;
                });
              },
              children: Suite.map<ExpansionPanel>((MyItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Row(children: <Widget>[
                      Image(
                        image: NetworkImage(
                            'https://ecck.or.kr/wp-content/uploads/2019/05/GrandHyattSeoul-Presidential-Suite-1320x910.jpg'),
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Suite Room'),
                      SizedBox(
                        width: 25,
                      ),
                      Switch(
                        value: suiteValue,
                        onChanged: (bool val) {
                          setState(() {
                            suiteValue = val;
                          });
                        },
                        activeColor: Colors.lightBlueAccent,
                      ),
                    ]);
                  },
                  body: item.body,
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      if (singleValue == true) {
                        roomValue = 'Single Room';
                      } else if (doubleValue == true) {
                        roomValue = 'Double Room';
                      } else if (suiteValue == true) {
                        roomValue = 'Suite';
                      }
                      // print();
                      ShowAlertDialog(context);



                    },
                    child: Text('Book now'),
                    style:
                    ElevatedButton.styleFrom(primary: Colors.lightBlueAccent)))
          ])),
    );
  }
}

class MyItem {
  bool isExpanded;
  final Widget body;
  final Widget header;
  MyItem({this.isExpanded = false, required this.body, required this.header});
}
