import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body:Cheese())));
}

class Cheese extends StatefulWidget {
  const Cheese({Key? key}) : super(key: key);
  @override
  State<Cheese> createState() => _CheeseState();
}
class _CheeseState extends State<Cheese> {
  @override
  int _index = 0;
  Widget build(BuildContext context) {
    return   Container(
      child: Column(
        children:<Widget> [

          Image.network("https://www.seekpng.com/png/full/148-1483373_cheese-pizza-cheese-pizza-top-view-png.png",width: 300,height: 300) ,
          SizedBox(height: 40),

          DataTable(
            columns: [
              DataColumn(label: Text("Size",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
              DataColumn(label: Text("Price",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),



            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("S",style: TextStyle( fontSize: 18))),
                DataCell(Text("20",style: TextStyle( fontSize: 18))),


              ]),
              DataRow(cells: [
                DataCell(Text("M",style: TextStyle( fontSize: 18))),
                DataCell(Text("50",style: TextStyle( fontSize: 18))),


              ]),

              DataRow(cells: [
                DataCell(Text("L",style: TextStyle( fontSize: 18))),
                DataCell(Text("80",style: TextStyle( fontSize: 18))),


              ]),



            ],
          ),

        ],
      ),

    );


  }
}