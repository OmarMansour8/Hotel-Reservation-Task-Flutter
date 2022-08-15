import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(facebook());
}

class facebook extends StatefulWidget {
  const facebook({Key? key}) : super(key: key);
  @override
  State<facebook> createState() => _facebookState();
}
class _facebookState extends State<facebook> {
  @override
  int _index = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text( 'Facebook'),
    backgroundColor: Colors.blue,
          leading:GestureDetector (child :Icon(Icons.arrow_back), onTap: (){
            Navigator.pop(context);


          },),
    ), body: WebView(
          initialUrl: 'https://www.facebook.com/',
          javascriptMode: JavascriptMode.unrestricted,


        ),
    ));
  }
}