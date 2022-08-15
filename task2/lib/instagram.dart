import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(instagram());
}

class instagram extends StatefulWidget {
  const instagram({Key? key}) : super(key: key);
  @override
  State<instagram> createState() => _instagramState();
}
class _instagramState extends State<instagram> {
  @override
  int _index = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text( 'Instagram'),
            backgroundColor: Colors.pinkAccent,
            leading:GestureDetector (child :Icon(Icons.arrow_back), onTap: (){
          Navigator.pop(context);
        },),
          ), body: WebView(
          initialUrl: 'https://www.instagram.com/',
          javascriptMode: JavascriptMode.unrestricted,


        ),
        ));
  }
}