import 'package:flutter/material.dart';
import 'package:stomache/mainMenu.dart';
import 'package:stomache/map.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'breakfast.dart';
import 'burgercategory.dart';

void main() {
  runApp(offers());
}

class offers extends StatefulWidget {

  const offers({Key? key}) : super(key: key);

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {

//  late WebViewController controller;
  var _index = 1;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(


        appBar: AppBar(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30) ,bottomRight:Radius.circular(30) )),
          elevation: 5,
          iconTheme:IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepOrange,
          title: Text("Restaurant", style: TextStyle(color: Colors.white),),

          actions: [
            Row(children: [
              Container(
                height: 40,
                width: 0,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow:
                [BoxShadow(blurRadius:7,spreadRadius: 3,color: Colors.deepOrange)],
                  shape: BoxShape.circle,
                  color: Colors.deepOrange,
                ),
                child: Icon(Icons.favorite_border,size: 20,color: Colors.white,),
              ),
              SizedBox(width: 10,),
              Container(
                height: 40,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow:
                [BoxShadow(blurRadius:7,spreadRadius: 3,color: Colors.deepOrange)],
                  shape: BoxShape.circle,
                  color: Colors.deepOrange,
                ),
                child: Icon(Icons.logout,size: 20,color: Colors.white,),
              )



            ],)
          ],
        ),

        drawer: Drawer(

          width: 180,
          backgroundColor: Colors.deepOrange,
          child: ListView(
            children:<Widget> [

              DrawerHeader(
                child:Container(

                  decoration:BoxDecoration(image:DecorationImage
                    (image:AssetImage("images/logo.png"),fit: BoxFit.cover,),
                      borderRadius:BorderRadius.only(bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),


                ),
              ),

              ListTile(

                onTap: () {
                  Navigator.pushNamed(context, '0');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text("Main Menu", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),

              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },

                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),

                // leading:Image(image:NetworkImage("https://www.seekpng.com/png/full/148-1483373_cheese-pizza-cheese-pizza-top-view-png.png",),
                //   width: 50,),
                title: Text("Offers", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
              ),
              ListTile(

                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text("My Order", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),

              ),
              ListTile(

                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text("Favorites", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),

              ),

              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 20),
                // leading:Image(image:NetworkImage("https://www.pngall.com/wp-content/uploads/4/French-Fries-PNG-File.png"),
                //   width: 70,),
                title: Text("Settings", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
              ),

            ],

          ),
        ),


        body:

        Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: <Widget>[

              Row(children:<Widget> [
                Container(
                  child: Text(" Offers",
                    style: TextStyle(height: 2,fontSize: 24,fontWeight: FontWeight.bold),),
                )

              ],)












            ],),),



        bottomNavigationBar: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home),),
              BottomNavigationBarItem(label: "Offers", icon: Icon(Icons.local_offer),),
              BottomNavigationBarItem(label: "Restaurant", icon: Icon(Icons.location_on),),
              BottomNavigationBarItem(label: "More", icon: Icon(Icons.more_horiz),),

            ],

            currentIndex: _index,
            unselectedItemColor: Colors.black54,
            selectedItemColor: Colors.deepOrange,
            unselectedLabelStyle:TextStyle(fontWeight: FontWeight.bold),
            selectedLabelStyle: TextStyle(fontSize:15,fontWeight: FontWeight.bold),
            backgroundColor: Colors.white,




            onTap: (index) {
              setState(() {

                _index = index;
                if (_index == 0) Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
                if (_index == 2)Navigator.push(context, MaterialPageRoute(builder: (context)=>maps()));


              });

            }
        ),


      ),
    );
  }
}