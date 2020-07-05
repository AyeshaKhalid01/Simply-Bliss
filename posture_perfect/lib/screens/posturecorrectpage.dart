import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PostureCorrectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Posture Correct',style: TextStyle(color: Theme.of(context).primaryColor),),
        backgroundColor: Colors.white,),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/logo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Posture(),
        )
    );
  }
}
class Posture extends StatefulWidget {
  @override
  _PostureState createState() => _PostureState();
}
class _PostureState extends State<Posture> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    Completer<WebViewController> _controller = Completer<WebViewController>();
    return Scaffold(
      body: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: WebView(
                    initialUrl:  "https://teachablemachine.withgoogle.com/models/BQgy8F-lX/",
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController webViewController){
                      _controller.complete(webViewController);
                    },
                    onPageStarted: (String url) {
                      print('Page started loading: $url');
                    },
                    onPageFinished: (String url) {
                      print('Page finished loading: $url');
                    },
                    gestureNavigationEnabled: true,
                  ),
                ),
    );
}
}

