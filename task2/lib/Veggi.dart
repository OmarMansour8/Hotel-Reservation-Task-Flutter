import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(MaterialApp(
      home: Scaffold(
      body:Veggi())));
}

class Veggi extends StatefulWidget {
  const Veggi({Key? key}) : super(key: key);
  @override
  State<Veggi> createState() => _VeggiState();
}
class _VeggiState extends State<Veggi> {
  @override
  int _index = 0;
  Widget build(BuildContext context) {
    return  Container(
            child: Column(
              children:<Widget> [

                Image.network("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png",width: 350,height: 350,),
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