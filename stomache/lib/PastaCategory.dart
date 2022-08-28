import 'package:flutter/material.dart';
import 'package:stomache/Ground_Beef_Pasta.dart';
import 'package:stomache/PennePastaWithChicken.dart';
import 'package:stomache/SpaghettiPastaNoodles.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';

class pasta extends StatefulWidget {

  const pasta({Key? key}) : super(key: key);

  @override
  State<pasta> createState() => _pastaState();
}

class _pastaState extends State<pasta> {

//  late WebViewController controller;
  var _index = 0;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return

      Column(
        children:<Widget> [

          Row(children:<Widget> [

            Container(
              width: 180,
              height: 190,
              padding: EdgeInsets.only(top: 10),

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>GroundBeefPasta()));
                    },
                    iconColor: Colors.deepOrange,

                    title: Text("Ground Beef Pasta",style: TextStyle(fontSize: 14)),


                  ),

                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.all( Radius.circular(25)),
                    image: DecorationImage(image: AssetImage("images/image8.jpg"),
                      scale: 1,
                      alignment: AlignmentDirectional.topCenter,
                    ),
                  ),
                ),



              ),

            ),
            SizedBox(width: 10),

            /////////spaghetti-pasta-noodles/////////////

            Container(
              width: 180,
              height: 190,
              padding: EdgeInsets.only(top: 10),

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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SpagettiPastaNoodles()));
                    },

                    title: Text("Spaghetti Pasta Noodles",style: TextStyle(fontSize: 14)),


                  ),

                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.all( Radius.circular(25)),
                    image: DecorationImage(image: AssetImage("images/pasta1.jpg"),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PennePastaWithChicken()));
                    },
                    iconColor: Colors.deepOrange,

                    title: Text("Penne Pasta With Chicken",style: TextStyle(fontSize: 17)),


                  ),

                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.all( Radius.circular(25)),
                    image: DecorationImage(image: AssetImage("images/pasta2.png"),
                      scale: 1,
                      alignment: AlignmentDirectional.topCenter,
                    ),
                  ),
                ),



              ),

            ),






          ],)












        ],);




  }
}