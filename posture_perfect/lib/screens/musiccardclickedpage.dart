import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posture_perfect/models/musiccategory.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CategorySelectPage extends StatelessWidget{
  final MusicCategory categorycard;
  CategorySelectPage({Key key,@required this.categorycard}) : super(key: key);
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categorycard.title),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebView(
          initialUrl:  categorycard.url,
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