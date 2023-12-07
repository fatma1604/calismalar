import 'package:flutter/material.dart';
//apbar için scaffold içinr
/*
 Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
          backgroundColor: Colors.red,
        ),
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
          backgroundColor: Colors.red,
        ),
        body: Center(child: Text("hello worf")),
      ),
    );
  }
}
