import 'package:flutter/material.dart';
import 'package:news/views/home_view.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({Key? key, required this.webView }) : super(key: key);
  final String webView;

 //final String webViewUrl ;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:   Text(webView,
        style: TextStyle(
          color: Colors.black87,
        ),
        ),
        leading: IconButton(
            onPressed:(){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)
              {
                return HomeView();
              }
              ));

        },
            icon:Icon(Icons.arrow_back_ios_new_outlined ,
            weight: 15,
              color: Colors.deepOrange,
            ),
        ),
      ),
  body: WebViewPlus(
    initialUrl: webView,
  ),
    );
  }
}
