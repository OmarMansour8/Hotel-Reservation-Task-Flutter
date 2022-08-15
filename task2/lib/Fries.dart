import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body:Fries())));
}

class Fries extends StatefulWidget {
  const Fries({Key? key}) : super(key: key);
  @override
  State<Fries> createState() => _FriesState();
}
class _FriesState extends State<Fries> {
  @override
  int _index = 0;
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children:<Widget> [

          Image.network("https://www.pngall.com/wp-content/uploads/4/French-Fries-PNG-File.png",width: 300,height: 300) ,
          SizedBox(height: 40),
          DataTable(
            columns: [
              DataColumn(label: Text("Size",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
              DataColumn(label: Text("Price",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),



            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("S",style: TextStyle( fontSize: 18))),
                DataCell(Text("10",style: TextStyle( fontSize: 18))),


              ]),
              DataRow(cells: [
                DataCell(Text("M",style: TextStyle( fontSize: 18))),
                DataCell(Text("25",style: TextStyle( fontSize: 18))),


              ]),

              DataRow(cells: [
                DataCell(Text("L",style: TextStyle( fontSize: 18))),
                DataCell(Text("40",style: TextStyle( fontSize: 18))),


              ]),



            ],
          ),

        ],
      ),
    );


  }
}