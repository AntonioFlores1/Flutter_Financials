import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class WebviewSetup extends StatefulWidget {
  final String fastLink;

  const WebviewSetup({Key key, this.fastLink}) : super(key: key);

  @override
  _WebviewSetupState createState() => _WebviewSetupState(fastLink);
}

class _WebviewSetupState extends State<WebviewSetup> {
final Completer<WebViewController> _controller = Completer<WebViewController>();

 String fastLink;

_WebviewSetupState(this.fastLink);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: WebView(
          initialUrl: fastLink,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}
