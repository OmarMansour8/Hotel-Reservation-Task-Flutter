import 'dart:math';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChocolateLavaCake());
}

class ChocolateLavaCake extends StatefulWidget {
  const ChocolateLavaCake({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<ChocolateLavaCake> createState() => _ChocolateLavaCakeState();
}

class _ChocolateLavaCakeState extends State<ChocolateLavaCake> {
  bool isFavourite = false;
  IconData x = (Icons.favorite_outline);
  Color y = Colors.black;
  int quantity = 1;
  double price = 30;

  String selectedSize = '';
  int favourite = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('details', style: TextStyle(color: Colors.black),),
        //   backgroundColor: Colors.white,
        //   centerTitle: true
        //   ,
        // ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                width: 390,
                height: 50,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          size: 40,
                        )),
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      'details',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (favourite % 2 == 0) {
                            x = Icons.favorite_sharp;
                            y = Colors.red;
                            favourite++;
                          } else {
                            x = (Icons.favorite_outline);
                            y = Colors.black;
                            favourite++;
                          }
                        });

                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChocolateLavaCake()),
                                (Route<dynamic> route) => false);
                      },
                      icon: Icon(
                        x,
                        size: 30,
                        color: y,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/image7.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    height: 200,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Chocolate Lava Cake',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      width: 185
                  ),
                  Text('$price\$',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star_border_sharp,
                    size: 10,
                  ),
                  Icon(Icons.star_border_sharp, size: 10),
                  Icon(Icons.star_border_sharp, size: 10),
                  Icon(Icons.star_border_sharp, size: 10),
                  Icon(Icons.star_border_sharp, size: 10),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '5.0',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    'Quantity',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  // SizedBox(
                  //   width: 150,
                  // ),
                  // Text(
                  //   'Size',
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  // )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quantity--;
                          if (quantity < 1) {
                            quantity = 1;
                          }
                        });
                      },
                      icon: Icon(Icons.chevron_left)),
                  Text('$quantity'),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      icon: Icon(Icons.chevron_right)),
                  SizedBox(
                    width: 70,
                  ),
                  // RadioButtonGroup(
                  //   labels: <String>['Small', 'Medium', 'large'],
                  //   orientation: GroupedButtonsOrientation.HORIZONTAL,
                  //   labelStyle: TextStyle(fontSize: 12),
                  //   activeColor: Colors.deepOrangeAccent,
                  //   onSelected: (String selected){
                  //     selectedSize=selected;
                  //
                  //     setState(() {
                  //       if(selected == 'Small'){
                  //         price = smallPrice;
                  //       }
                  //       else if(selected == 'Medium'){
                  //         price = mediumPrice;
                  //       }
                  //       else if(selected == 'large'){
                  //         price = largePrice;
                  //       }
                  //     });
                  //
                  //   },
                  // )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Quantity:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(
                    width: 290,
                  ),
                  Text(
                    'x${quantity}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Price per piece:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(
                    width: 235,
                  ),
                  Text(
                    '${price}\$',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Total amount:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Text(
                    '${price * quantity}\$',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 370,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 130,
                          ),
                          Text('Add to cart'),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.shopping_cart_outlined)
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrangeAccent),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
