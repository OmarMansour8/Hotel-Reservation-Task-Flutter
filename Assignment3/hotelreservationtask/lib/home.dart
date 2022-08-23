import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'checkout.dart';

void main() {
  runApp( MaterialApp(
      home: MyHomePage()));
}


class MyHomePage extends StatefulWidget {

  MyHomePage({Key? key,}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {



  DateTime date1 = DateTime.now();
  DateTime date2 = DateTime.now();
  Future<Null> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date1,
      firstDate: DateTime(1960),
      lastDate: DateTime(2025),);
    if (picked != null && picked != date1) {
      setState(() {
        date1 = picked;
        print(date1.toString());
      });
    }
  }

  Future<Null> selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date2,
      firstDate: DateTime(1960),
      lastDate: DateTime(2025),);
    if (picked != null && picked != date2) {
      setState(() {
        date2 = picked;
        print(date2.toString());
      });
    }
  }
  var numberOfAdults =0.0;
  var numberOfChildren = 0.0;
  static String checked1 = '';
  String checkInDate = '';
  String checkOutDate = '';
  static List<String> extras = [''] ;
  @override
  Widget build(BuildContext context) {
    checkInDate=('${date1.year} - ${date1.month} - ${date1.day}').toString();
    checkOutDate=('${date2.year} - ${date2.month} - ${date2.day}').toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Reservation',style: TextStyle(fontFamily: 'DancingScript',),),

        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Stack(
          children:<Widget> [
            ListView(
              shrinkWrap: true,
              children: [
                Column(
                  children: [
                    Image(image: NetworkImage('https://media.cntraveler.com/photos/61eae28b9580ae68b5219061/master/w_1920%2Cc_limit/Bermuda_GettyImages-1159363129.jpg')),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Check-in Date:'),
                        SizedBox(width: 39,),
                        IconButton(onPressed: () {selectDate(context);}, icon: Icon(Icons.date_range)),
                        Text(('${date1.year} - ${date1.month} - ${date1.day}').toString()),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Check-out Date:'),
                        SizedBox(width: 30,),
                        IconButton(onPressed: () {selectDate1(context);}, icon: Icon(Icons.date_range)),
                        Text(('${date2.year} - ${date2.month} - ${date2.day}').toString()),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Number Of Adults:'),
                        SizedBox(width: 30,),
                        Slider(value: numberOfAdults, onChanged: (value){
                          setState(() {
                            numberOfAdults=value;
                          });
                        },
                          divisions: 10,
                          label: numberOfAdults.toInt().toString(),
                          min: 0,
                          max: 10,

                        ),
                        Text('${numberOfAdults.toInt().toString()}')

                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Number Of Children:'),
                        SizedBox(width: 19,),
                        Slider(value: numberOfChildren, onChanged: (value){
                          setState(() {
                            numberOfChildren=value;
                          });
                        },
                          divisions: 10,
                          label: numberOfChildren.toInt().toString(),
                          min: 0,
                          max: 10,

                        ),
                        Text('${numberOfChildren.toInt().toString()}')

                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                            children:[
                              SizedBox(width: 10,),
                              Text('Extras:'),]),
                        SizedBox(height: 10,),
                        CheckboxGroup(
                            margin: EdgeInsets.only(left: 10),
                            labels: <String>[
                              'Breakfast (50EGP/Day)',
                              'Internet WI\iFi (50EGP/Day)',
                              'Parking (100EGP/Day)'
                            ],
                            onSelected: (List<String> checked) {
                              print(checked.toString());
                              extras = checked;
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            children:[
                              SizedBox(width: 15,),
                              Text('View:'),]),
                        SizedBox(height: 10,),
                        RadioButtonGroup(
                            margin: EdgeInsets.only(left: 10),
                            labels: <String>['Garden View', 'Sea View'],
                            onSelected: (String selected) {
                              checked1 = selected;
                            }

                        )
                      ],
                    ),
                  ],

                ),

                Center(
                    child: ElevatedButton(onPressed: (){
                      print(checkInDate);
                      print(checkOutDate);
                      print(numberOfChildren);
                      print(numberOfAdults);
                      print(checked1);
                      print(extras);
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>checkout(numberOfAdults: numberOfAdults, numberOfChildren: numberOfChildren, checked: checked1, checkInDate: checkInDate, checkOutDate: checkOutDate, selected: extras)));
                    }, child: Text('Check Rooms and Rates'),style:ElevatedButton.styleFrom(primary: Colors.lightBlueAccent) )),



              ],
            )
          ],
        ),

      ),);
  }
}
