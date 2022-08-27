import 'package:flutter/material.dart';
import 'package:stomache/ChocolateLavaCake.dart';
import 'package:stomache/Fire_Burger.dart';
import 'package:stomache/Ground_Beef_Pasta.dart';
import 'package:stomache/Jucy_Burger.dart';
import 'package:stomache/Tuna_Salad.dart';
import 'package:stomache/Vegan_Breakfast.dart';
import 'package:stomache/map.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'mainMenu.dart';
import 'breakfast.dart';
import 'pizza_add_to_cart.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


void main() {
  runApp(MaterialApp(
      home:homePage()));
}

class homePage extends StatefulWidget {

  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

//  late WebViewController controller;
  var _index = 0;
  final LatLng _location = const LatLng(30.0151010, 31.287760);
  late GoogleMapController mapController;
  void _myMaCreated (GoogleMapController controller){
    mapController = controller;
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepOrange,border: Border.all(color: Colors.deepOrange),),
                child: Text("More",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,textScaleFactor: 2),
                padding: EdgeInsets.fromLTRB(0, 65, 0, 0),
              ),

              ListTile(

                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                contentPadding: EdgeInsets.fromLTRB(16, 20, 20, 20),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text("Main Menu", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),

              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },

                //  contentPadding: EdgeInsets.all(20),

                // leading:Image(image:NetworkImage("https://www.seekpng.com/png/full/148-1483373_cheese-pizza-cheese-pizza-top-view-png.png",),
                //   width: 50,),
                title: Text("Offers", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 20, 20, 20),
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




              DefaultTabController(
                length: 8,
                child: Column(
                  children: <Widget> [

                    TabBar(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      unselectedLabelColor: Colors.black54,
                      indicator: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.deepOrange),
                      labelColor: Colors.white,
                      isScrollable: true,

                      tabs: [



                        Row(children:<Widget> [
                          Container(child: Tab(icon: Icon(Icons.restaurant_menu)),),
                          Container(width: 80,
                            child: Tab(text: "Main Menu",),),],),

                        Row(children:<Widget> [
                          Container(child: Tab(icon: Icon(Icons.breakfast_dining)),),
                          Container(width: 80,
                            child: Tab(text: "Breakfast",),),],),

                        Row(children:<Widget> [
                          Container(child: Tab(icon: Icon(Icons.lunch_dining_sharp)),),
                          Container(width: 80,
                            child: Tab(text: "Burger",),),],),

                        Row(children:<Widget> [
                          Container(child: Tab(icon: Icon(Icons.local_pizza)),),
                          Container(width: 80,
                            child: Tab(text: "Pizza",),),],),
                        Row(children:<Widget> [
                          Container(child: Tab(icon: Icon(Icons.ramen_dining)),),
                          Container(width: 80,
                            child: Tab(text: "Pasta",),),],),

                        Row(children:<Widget> [
                          Container(child: Tab(icon: Icon(Icons.restaurant_outlined)),),
                          Container(width: 80,
                            child: Tab(text: "Salads",),),],),

                        Row(children:<Widget> [
                          Container(child: Tab(icon: Icon(Icons.cake)),),
                          Container(width: 80,
                            child: Tab(text: "Desserts",),),],),

                        Row(children:<Widget> [
                          Container(child: Tab(icon: Icon(Icons.free_breakfast_rounded)),),
                          Container(width: 80,
                            child: Tab(text: "Drinks",),),],),


                      ],
                    ),



                    Expanded(
                      child: TabBarView(
                        children: [

                          ListView(
                            shrinkWrap: true,
                            children: <Widget> [


                              Column(
                                children:<Widget> [

                                  Row(children:<Widget> [

                                    ///////////////////Healthy Taco Salad/////////////////////
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
                                              Navigator.pushNamed(context, 'Healthy Taco Salad');
                                            },
                                            iconColor: Colors.deepOrange,

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

                                    SizedBox(width: 15),

                                    ///////////////////////Jucy Burger//////////////////

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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>JucyBurger()));

                                            },
                                            iconColor: Colors.deepOrange,

                                            title: Text("Jucy Burger",style: TextStyle(fontSize: 14)),


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

                                  ],),




                                  Row(children:<Widget> [

                                    /////////////////////////Cheesy Pizza///////////////

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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage()));

                                            },
                                            iconColor: Colors.deepOrange,

                                            title: Text("Cheesy Pizza",style: TextStyle(fontSize: 14)),


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

                                    SizedBox(width: 15),


                                    //////////////////Vegan Breakfast//////////////
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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VeganBreakfast()));

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
                                  ],),


                                  Row(children:<Widget> [
                                    ////////////////Ground Beef Pasta/////////////
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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GroundBeefPasta()));


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

                                    SizedBox(width: 15),

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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TunaSalad()));

                                            },
                                            iconColor: Colors.deepOrange,

                                            title: Text("Tuna Salad",style: TextStyle(fontSize: 14)),


                                          ),

                                          decoration: BoxDecoration(

                                            borderRadius: BorderRadius.all( Radius.circular(25)),
                                            image: DecorationImage(image: AssetImage("images/image3.jpeg"),
                                              scale: 1,
                                              alignment: AlignmentDirectional.topCenter,
                                            ),
                                          ),
                                        ),



                                      ),

                                    ),

                                  ],),


                                  Row(children:<Widget> [

                                    //////////////////Fire Burger////////////////////////
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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FireBurger()));
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

                                    SizedBox(width: 15),

                                    /////////////////////Chocolate Lava Cakes/////////////////////
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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChocolateLavaCake()));

                                            },
                                            iconColor: Colors.deepOrange,

                                            title: Text("Chocolate Lava Cake",style: TextStyle(fontSize: 14)),


                                          ),

                                          decoration: BoxDecoration(

                                            borderRadius: BorderRadius.all( Radius.circular(25)),
                                            image: DecorationImage(image: AssetImage("images/image7.jpg"),
                                              scale: 1,
                                              alignment: AlignmentDirectional.topCenter,
                                            ),
                                          ),
                                        ),



                                      ),

                                    ),

                                  ],),


                                ],
                              ),],),





                          Column(
                            children: <Widget> [
                              breakfast(),
                            ],

                          ),


                          Column(


                          ),
                          Column(


                          ),
                          Column(


                          ),
                          Column(


                          ),
                          Column(


                          ),
                          Column(


                          ),







                        ],
                      ),

                    ),





                  ],
                ),

              ),






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
                //   if (_index == 0) Navigator.pushNamed(context, '');
                //   if (_index == 1) Navigator.pushNamed(context, '');
                  if (_index == 2) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => maps()));
                  }

              });

            }
        ),

      );

    ;
  }
}