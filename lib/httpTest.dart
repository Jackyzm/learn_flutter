import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpTest extends StatefulWidget {
  @override
  createState() => new HttpTestState();
}

class HttpTestState extends State<HttpTest> {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    var url = 'http://httpbin.org/post';
    http.post(url, body: jsonEncode({'test': 'value'})).then((response) {
      // print("Response status: ${response.statusCode}");
      // print("Response body: ${response.body}");
      var res = jsonDecode(response.body)['data'];
      // print(jsonDecode(res)['test']);
      setState(() {
        _ipAddress = jsonDecode(res)['test'];
      });
    });

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;

    setState(() {
      // _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpTest"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          RaisedButton(
            child: Text(_ipAddress),
            onPressed: () {
              // Navigate to the second screen using a named route
              // Navigator.pushNamed(context, '/home');
              _getIPAddress();
              setState(() {
                _ipAddress = '5665456';
              });
            },
          ),
        ]),
      ),
    );
  }
}
