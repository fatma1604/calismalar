import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 5, 59, 66)),
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("app bar"),
        ),
        body: Container(
          constraints: BoxConstraints(
              minHeight: 100,
              minWidth: 100,
              maxHeight: 220,
              maxWidth: 200), //bu kutuyu oluşturuyor içinde ki çoçuk kadar
          //max vemin olmasa tam buyume sağlar

          //width: 200,
          //height: 300,
          color: Colors.blue,
          //child: Text(
          // "fatma",
          //),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Butona tıklandı');
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: const Color.fromARGB(255, 59, 255, 137),
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
