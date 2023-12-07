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
        appBar: AppBar(
          title: Text("app bar"),
        ),
        body: Center(
          child: Container(
            //yuxe yuz kırmızı renk
            width: 100,
            height: 100,
            color: Colors.red,
            //BUNU ORRTAA KKISMMA GGETİRRR
            //alignment:
            //  Alignment.center, //BU ÇOCCUKLARRI DÜZENLEEMEEYEE YAYAARIYYOOR
            child: Container(
              width: 80,
              height: 80,
              color: Colors.blue,
              //mavvi kutunın uzaklaştır
              margin: EdgeInsets.all(25),
              child: Center(child: Text("faatma")),
              //kırmızıyı maviden uzaklaştırr deseyydim
              //padding: ,
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
