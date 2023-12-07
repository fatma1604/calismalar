import 'package:flutter/material.dart';
//center da deger vere biliyorum yani

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 5, 59, 66)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
        ),
        body: Center(
          //içindeki çoçuggun ikki kkaaatı kadar buyuyorr
          widthFactor: 2,
          heightFactor: 2,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.blue,
              margin: EdgeInsets.all(25),
              child: Center(child: Text("faatma")),
            ),
          ),
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
