import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('First Screen'),
      // ),
      body: Center(
          child: Column(children: <Widget>[
        RaisedButton(
          child: Text('to httpTest'),
          onPressed: () {
            // Navigate to the second screen using a named route
            Navigator.pushNamed(context, '/httpTest');
          },
        ),
        RaisedButton(
          child: Text('Home'),
          onPressed: () {
            // Navigate to the second screen using a named route
            Navigator.pushNamed(context, '/home');
          },
        ),
      ])),
    );
  }
}
