import 'package:flutter/material.dart';
import 'package:stomache/Healthy_Taco_Salad.dart';
import 'package:stomache/Vegan_Breakfast.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';

class salads extends StatefulWidget {

  const salads({Key? key}) : super(key: key);

  @override
  State<salads> createState() => _saladsState();
}

class _saladsState extends State<salads> {

//  late WebViewController controller;
  var _index = 0;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Row(children:<Widget> [

      Container(
        width: 180,
        height: 190,
        padding: EdgeInsets.only(top: 20),

        child: Card(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          elevation: 10,
          color: Colors.white,
          child:Container(

            child:
            ListTile(

              contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
              trailing: Icon(Icons.add_shopping_cart),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>VeganBreakfast()));
              },
              iconColor: Colors.deepOrange,

              title: Text("Vegan Breakfast",style: TextStyle(fontSize: 14)),


            ),

            decoration: BoxDecoration(

              borderRadius: BorderRadius.all( Radius.circular(25)),
              image: DecorationImage(image: AssetImage("images/image9.png"),
                scale: 1,
                alignment: AlignmentDirectional.topCenter,
              ),
            ),
          ),



        ),

      ),

      SizedBox(width: 10),

      Container(
        width: 180,
        height: 190,
        padding: EdgeInsets.only(top: 20),

        child: Card(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          elevation: 10,
          color: Colors.white,
          child:Container(

            child:
            ListTile(

              contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
              trailing: Icon(Icons.add_shopping_cart),
              iconColor: Colors.deepOrange,
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthyTacoSalad()));
              } ,
              title: Text("Healthy Taco Salad",style: TextStyle(fontSize: 14)),


            ),

            decoration: BoxDecoration(

              borderRadius: BorderRadius.all( Radius.circular(25)),
              image: DecorationImage(image: AssetImage("images/image2.jpeg"),
                scale: 1,
                alignment: AlignmentDirectional.topCenter,
              ),
            ),
          ),



        ),

      ),

    ],);

  }
}