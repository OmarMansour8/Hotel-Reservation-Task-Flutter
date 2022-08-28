import 'package:flutter/material.dart';
import 'package:stomache/BuffaloChickenPizza.dart';
import 'package:stomache/SpicyChickenRanchPizza.dart';
import 'package:stomache/VeggiPizza.dart';
import 'package:stomache/pizza_add_to_cart.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';

class pizza extends StatefulWidget {

  const pizza({Key? key}) : super(key: key);

  @override
  State<pizza> createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {

//  late WebViewController controller;
  var _index = 0;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   Column(children:<Widget> [

      Row(children:<Widget> [
        Container(
          width: 375,
          height: 280,
          padding: EdgeInsets.only(top: 20),

          child: Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            color: Colors.white,
            child:Container(

              child:
              ListTile(

                contentPadding: EdgeInsets.only(left: 20,top: 200,right: 18),
                trailing: Icon(Icons.add_shopping_cart),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VeggiPizza()));
                },
                iconColor: Colors.deepOrange,

                title: Text("Veggi Pizza",style: TextStyle(fontSize: 17)),


              ),


              decoration: BoxDecoration(


                borderRadius: BorderRadius.all( Radius.circular(25)),
                image: DecorationImage(image: AssetImage("images/pizza1.jpg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),



          ),

        ),

      ],),

      Row(children:<Widget> [
        Container(
          width: 375,
          height: 280,
          padding: EdgeInsets.only(top: 20),

          child: Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            color: Colors.white,
            child:Container(

              child:
              ListTile(

                contentPadding: EdgeInsets.only(left: 20,top: 200,right: 18),
                trailing: Icon(Icons.add_shopping_cart),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BuffaloChickenPizza()));
                },
                iconColor: Colors.deepOrange,

                title: Text("Buffalo Chicken Pizza",style: TextStyle(fontSize: 17)),


              ),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.all( Radius.circular(25)),
                image: DecorationImage(image: AssetImage("images/pizza2.jpg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),



          ),

        ),

      ],),




      Row(children:<Widget> [
        ///////////Cheesy Burger/////////////

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SpicyChickenRanchPizza()));
                },
                iconColor: Colors.deepOrange,

                title: Text("Spicy Chicken Ranch Pizza",style: TextStyle(fontSize: 14)),


              ),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.all( Radius.circular(25)),
                image: DecorationImage(image: AssetImage("images/pizza3.jpg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),



          ),

        ),

        SizedBox(width: 10),


        ///////////////Cheesy Pizza///////////////
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                iconColor: Colors.deepOrange,

                title: Text(" Cheesy Pizza",style: TextStyle(fontSize: 14)),


              ),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.all( Radius.circular(25)),
                image: DecorationImage(image: AssetImage("images/image6.jpeg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),



          ),

        ),

      ],),


    ],);

  }
}