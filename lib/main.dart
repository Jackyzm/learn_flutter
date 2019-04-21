import 'package:flutter/material.dart';
import './home.dart';
// import './firstScreen.dart';
import './secondScreen.dart';
import './randomWordsState.dart';
import './video.dart';
import './httpTest.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Named Routes Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      // Start the app with the "/" named route. In our case, the app will start
      // on the FirstScreen Widget
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/': (context) => Home(),
        '/secondScreen': (context) => SecondScreen(),
        '/randomWords': (context) => RandomWords(),
        '/video': (context) => Video(),
        '/httpTest': (context) => HttpTest(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
      },
    );
  }
}
