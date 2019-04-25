import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Icon(IconData(0xe607, fontFamily: 'iconfont'),
      //         color: Colors.green)),
      appBar: AppBar(
          title: Text(
        "\uE607",
        style: TextStyle(
            fontFamily: "iconfont", fontSize: 24.0, color: Colors.green),
      )),
      body: WebView(
        initialUrl: 'https://flutter.dev',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
