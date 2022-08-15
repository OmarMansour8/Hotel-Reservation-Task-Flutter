import 'package:flutter/material.dart';
import 'Veggi.dart';
import 'Cheese.dart';
import 'Fries.dart';
void main() {
  runApp(homePage());
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);
  @override
  State<homePage> createState() => _homePageState();
}
class _homePageState extends State<homePage> {
  @override
  int _index = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text( 'WoW Pizza!'),
            backgroundColor: Colors.orange,

          ),

          drawer: Drawer(
              width: 300,
              backgroundColor: Colors.white,
              child:ListView(
                children:<Widget> [
                  SizedBox(height: 100,),
                  ListTile(
                    leading:Image.network("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png",width: 80,height: 80,)  ,
                    title:Text("Veggi Pizza",style: TextStyle(color: Colors.orange),),
                    trailing: Icon(Icons.chevron_right),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return MaterialApp(
                                home: Scaffold(
                                    appBar: AppBar(
                                      backgroundColor: Colors.orange,
                                      title: Text('Veggi Pizza'),
                                      leading:GestureDetector (child :Icon(Icons.arrow_back), onTap: (){
                                        Navigator.pop(context);
                                      },),
                                    ),
                                    body:Center(child : Veggi())));
                          }));

                    },

                  ),
                  SizedBox(height: 40,),
                  ListTile(
                    leading:Image.network("https://www.seekpng.com/png/full/148-1483373_cheese-pizza-cheese-pizza-top-view-png.png",width: 80,height: 80) ,

                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return MaterialApp(
                                home: Scaffold(
                                    appBar: AppBar(
                                      backgroundColor: Colors.orange,
                                      title: Text('Cheese Pizza'),
                                      leading:GestureDetector (child :Icon(Icons.arrow_back), onTap: (){
                                        Navigator.pop(context);
                                      },),
                                    ),
                                    body:Center(child: Cheese())));
                          }));

                    },
                    title: Text("Cheese Pizza",style: TextStyle(color: Colors.orange)),
                    trailing: Icon(Icons.chevron_right),


                  ),
                  SizedBox(height: 40,),
                  ListTile(
                    leading:Image.network("https://www.pngall.com/wp-content/uploads/4/French-Fries-PNG-File.png",width: 80,height: 80) ,
                    title: Text('Frensh Fries',style: TextStyle(color: Colors.orange)),
                    trailing: Icon(Icons.chevron_right),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return MaterialApp(
                                home: Scaffold(
                                    appBar: AppBar(
                                      backgroundColor: Colors.orange,
                                      title: Text('Frensh Fries'),
                                      leading:GestureDetector (child :Icon(Icons.arrow_back), onTap: (){
                                        Navigator.pop(context);
                                      },),
                                    ),
                                    body:Center(child: Fries())));
                          }));

                    },
                  ),


                ],
              )
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(label : "Home",icon: Icon(Icons.home)),
              BottomNavigationBarItem(label : "Facebook",icon: Icon(Icons.facebook)),
              BottomNavigationBarItem(label : "Instagram",icon: Icon(Icons.camera_alt_outlined)),

            ],
            currentIndex:_index,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            backgroundColor: Colors.orange,
            onTap: (index){
              setState(() {
                _index = index;

              }
              );
              if(index==1){
                Navigator.pushNamed(context, '0');
              }
              else if(index==2){
                Navigator.pushNamed(context, '1');
              }
            },
          ),
          body: DefaultTabController(
            length: 3,
            
            initialIndex: 0,
            child: Column(
              children:<Widget> [
                SizedBox(height: 10,),

                TabBar(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  tabs:[
                  Tab(text: 'Veggi Pizza'),
                  Tab(text: 'Cheese Pizza'),
                  Tab(text: 'Frensh Friess'),
                ],
                  indicator: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(50),
                    
                  )
                  ,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.orange,
                  indicatorColor: Colors.white,

                ),
                Expanded(child: TabBarView(
                  children:<Widget> [

                    Veggi(),
                    Cheese(),
                    Fries(),
                  ],
                ))
              ],
            ),

          ),
        ));
  }}


