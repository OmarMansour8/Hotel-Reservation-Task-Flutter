import 'package:flutter/material.dart';
import 'package:stomache/BurgerWithFetaCream.dart';
import 'package:stomache/Fire_Burger.dart';
import 'package:stomache/GrandFamilyBox.dart';
import 'package:stomache/OmahaBurger.dart';
import 'package:stomache/pizza_add_to_cart.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';

class burger extends StatefulWidget {

  const burger({Key? key}) : super(key: key);

  @override
  State<burger> createState() => _burgerState();
}

class _burgerState extends State<burger> {

//  late WebViewController controller;
  var _index = 0;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return


      Column(children:<Widget> [

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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GrandFamilyBox()));
                  },
                  iconColor: Colors.deepOrange,

                  title: Text("Grand Family Box",style: TextStyle(fontSize: 17)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/burger0.png"),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                  },
                  iconColor: Colors.deepOrange,

                  title: Text("Cheesy Burger",style: TextStyle(fontSize: 14)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/image4.jpeg"),
                    scale: 1,
                    alignment: AlignmentDirectional.topCenter,
                  ),
                ),
              ),



            ),

          ),

          SizedBox(width: 10),


          ///////////////Fire Burger///////////////
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FireBurger()));
                  },
                  iconColor: Colors.deepOrange,

                  title: Text("Fire Burger",style: TextStyle(fontSize: 14)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/image5.jpg"),
                    scale: 1,
                    alignment: AlignmentDirectional.topCenter,
                  ),
                ),
              ),



            ),

          ),

        ],),














/////////////////Greek Burger with Feta Cream//////////////////

        Row(children:<Widget> [

          ///////////Bagel with Cream Cheese/////////////

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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BurgerWithCreamFeta()));
                  },
                  iconColor: Colors.deepOrange,


                  title:
                  Text("Burger with Feta Cream",style: TextStyle(fontSize: 14),),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/burger1.jpg"),
                    scale: 1,
                    alignment: AlignmentDirectional.topCenter,
                  ),
                ),
              ),



            ),

          ),

          SizedBox(width: 10),


          ///////////////Fruits Pancake///////////////
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OmahaBurger()));
                  },
                  iconColor: Colors.deepOrange,

                  title: Text("Omaha Burger",style: TextStyle(fontSize: 14)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/burger2.jpg"),
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